from sklearn.preprocessing import LabelEncoder
import tensorflow as tf
import tensorflow.keras as keras
from keras.utils import np_utils
from keras import layers
import os
import numpy as np
from keras.layers import Dense
from keras.layers import Dropout
import keras.optimizers
from keras.utils import np_utils
from keras import regularizers
from sklearn.utils import shuffle


def load_mfccs(folder, transpose=False):
    """
    It takes a folder name, and returns a tuple of two numpy arrays, one containing the mfccs, and the
    other containing the labels.

    :param folder: the folder where the numpy arrays are stored
    :param transpose: If True, the data will be transposed, defaults to False (optional)
    :return: data and target
    """
    data = []
    target = []
    files = [file for file in os.listdir(folder)]
    for file in files:
        array = np.load(os.path.join(folder, file))['arr_0'].squeeze()
        if transpose:
            array = array.transpose()
        data.append(array)
        target.append(file.split('_')[0])  # end target version
    data = np.array(data, dtype=np.float32)
    target = np.array(target)
    data, target = shuffle(data, target)
    return data, target


def create_dataset(train_folder, test_folder):
    """
    It loads the mfccs from the train and test folders, encodes the labels, normalizes the mfccs, and
    returns the train and test data.

    :param train_folder: the folder containing the training data
    :param test_folder: the folder containing the test data
    :return: x_train, y_train, x_test, y_test
    """
    with tf.device('/cpu:0'):
        x_train_mfcc, y_train = load_mfccs(train_folder, transpose=False)
        x_test_mfcc, y_test = load_mfccs(test_folder, transpose=False)
        le = LabelEncoder()

        # convert mfcc to tensor
        x_train_mfcc = tf.expand_dims(tf.convert_to_tensor(x_train_mfcc), -1)
        x_test_mfcc = tf.expand_dims(tf.convert_to_tensor(x_test_mfcc), -1)

        # label encoder
        y_train = np_utils.to_categorical(le.fit_transform(np.asarray(y_train)))
        y_test = np_utils.to_categorical(le.transform(np.asarray(y_test)))

        # min max normalization
        y_train = tf.convert_to_tensor(y_train)
        y_test = tf.convert_to_tensor(y_test)
        x_train = x_train_mfcc - np.min(x_train_mfcc)
        x_train = x_train / np.max(x_train)
        x_test = x_test_mfcc - np.min(x_test_mfcc)
        x_test = x_test / np.max(x_test)

    return x_train, y_train, x_test, y_test


def get_model(input_shape, config):
    """
    It creates a convolutional neural network with the specified number of convolutional layers,
    filters, and strides, followed by a specified number of dense layers, and then a final softmax layer

    :param input_shape: the shape of the input data
    :param config: a dictionary of parameters for the model
    :return: CNN SLID Model
    """
    kernels = config['kernels']
    filts = config['filters']
    strides = config['strides']
    dense = config['dense']
    dropout = config['dropout']
    reg = config['regularizer']
    activation = config['activation']

    model = tf.keras.models.Sequential()

    # input layer
    model.add(layers.Input(shape=input_shape, dtype=tf.float32))

    # convolutional encoder
    for kern, filt, strid in zip(kernels, filts, strides):
        model.add(layers.Conv2D(filters=filt, kernel_size=kern,
                                padding="same",
                                # strides = strid,
                                kernel_regularizer=regularizers.l2(reg),
                                ))
        if config['batch_norm']:
            model.add(layers.BatchNormalization())
        model.add(layers.Activation(activation))

        model.add(layers.MaxPooling2D(pool_size=kern,
                                      strides=strid,
                                      padding='same'))

    # model.add(AveragePooling2D(pool_size=(5, 5),strides=(5, 5), padding='valid'))
    model.add(layers.GlobalAveragePooling2D())
    model.add(layers.Flatten())

    # dense layers
    for d in dense:
        model.add(layers.Dense(d, kernel_regularizer=regularizers.l2(reg)))
        model.add(layers.Activation(activation))
        if dropout:
            model.add(layers.Dropout(0.4))

    model.add(layers.Dense(3))
    model.add(layers.Activation('softmax'))

    optim = tf.keras.optimizers.SGD(lr=config['lr'], decay=1e-6, momentum=0, nesterov=False)

    model.compile(
        loss='categorical_crossentropy',
        optimizer=optim,
        metrics=['accuracy', tf.keras.metrics.AUC()]
    )
    return model


def get_model_lstm(input_shape, config):
    """
    It creates a sequential model with an LSTM layer, followed by a few dense layers, and then a softmax
    layer

    :param input_shape: (None, 1, 3)
    :param config:
    :return: LSTM SLID Model
    """
    model = keras.Sequential()
    model.add(layers.LSTM(128, input_shape=input_shape))

    model.add(Dense(128, activation='relu'))
    model.add(Dropout(0.2))
    model.add(Dense(64, activation='relu'))
    model.add(Dropout(0.2))
    model.add(Dense(16, activation='relu'))
    model.add(Dropout(0.2))
    model.add(Dense(8, activation='relu'))
    model.add(Dropout(0.2))
    model.add(Dense(3, activation='softmax'))

    optim = tf.keras.optimizers.SGD(lr=config['lr'], decay=1e-6, momentum=0, nesterov=False)

    model.compile(
        loss='categorical_crossentropy',
        optimizer=optim,
        metrics=['accuracy', tf.keras.metrics.AUC()]
    )
    return model
