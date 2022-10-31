from config import *
import tensorflow_model_optimization as tfmot
import tensorflow as tf
import os
import numpy as np
from keras.callbacks import ModelCheckpoint
import wandb
from model import create_dataset
import tempfile
from wandb.keras import WandbCallback

import random

SEED = 42
random.seed(SEED)
np.random.seed(SEED)
tf.random.set_seed(SEED)

if __name__ == "__main__":
    conf = {**model_conf, **train_conf, **data_conf}

    config_all = {**model_conf, **train_conf, **data_conf}

    train_path = os.path.join(data_conf['root'], 'train')
    test_path = os.path.join(data_conf['root'], 'test')
    print(f'Train path: {train_path}')
    print(f'Test path: {test_path}')

    x_train, y_train, x_test, y_test = create_dataset(train_path, test_path)

    # generate quantized model
    name = 'model'
    quantize_model = tfmot.quantization.keras.quantize_model
    model = tf.keras.models.load_model(f'{name}.h5')

    # quantize aware training
    if config_all['qaware_train']:
        q_aware_model = quantize_model(model)
        optim = tf.keras.optimizers.SGD(lr=config_all['lr'] * 0.5, decay=1e-6, momentum=0, nesterov=False)

        # compile qaware model
        q_aware_model.compile(
            loss='categorical_crossentropy',
            optimizer=optim,
            metrics=['accuracy', tf.keras.metrics.AUC()]
        )

        # checkpoint callback
        checkpoint = ModelCheckpoint(
            f'model_quant.h5',
            monitor='val_loss',
            verbose=0,
            save_best_only=True,
            mode='min')


        # scheduler
        def scheduler(epoch, lr):
            if epoch < 5:
                return lr
            else:
                return lr * tf.math.exp(-1e-2)


        lr_callback = tf.keras.callbacks.LearningRateScheduler(scheduler)

        q_aware_model.fit(x_train, y_train, batch_size=train_conf['batch_size'], epochs=train_conf['epochs'],
                          validation_data=(x_test, y_test), callbacks=[checkpoint, lr_callback])

        # print evaluations
        print(q_aware_model.evaluate(x_test, y_test))
        baseline_model_accuracy = model.evaluate(x_test, y_test, verbose=0)
        q_aware_model_accuracy = q_aware_model.evaluate(x_test, y_test, verbose=0)

        print('Baseline test accuracy:', baseline_model_accuracy[1])
        print('Quant test accuracy:', q_aware_model_accuracy[1])
        converter = tf.lite.TFLiteConverter.from_keras_model(q_aware_model)
    else:
        converter = tf.lite.TFLiteConverter.from_keras_model(model)

    # quantization
    train_set = x_train.numpy()
    test_set = x_test.numpy()
    train_labels = y_train.numpy()
    test_labels = y_test.numpy()
    tflite_model_name = f'{name}_MFCC'

    # Convert the model to the TensorFlow Lite format with quantization
    print(f"Shape = {train_set.shape}")


    def representative_dataset():
        for i in np.random.choice(np.arange(x_train.shape[0]), 10000):
            yield ([train_set[i].reshape(1, x_train[0].shape[0], x_train[0].shape[1], 1).astype(np.float32)])


    # Set the optimization flag.
    converter.optimizations = [tf.lite.Optimize.DEFAULT]
    # Enforce full-int8 quantization
    # converter.target_spec.supported_ops = [tf.lite.OpsSet.TFLITE_BUILTINS_INT8]
    # converter.inference_input_type = tf.int8  # or tf.uint8 / tf.float32
    # converter.inference_output_type = tf.float32  # or tf.uint8 / tf.float32
    # Provide a representative dataset to ensure we quantize correctly.
    # converter.representative_dataset = representative_dataset
    tflite_model = converter.convert()

    open(tflite_model_name + '.tflite', 'wb').write(tflite_model)

    # evaluate
    tflite_interpreter = tf.lite.Interpreter(model_path=tflite_model_name + '.tflite')
    tflite_interpreter.allocate_tensors()
    input_details = tflite_interpreter.get_input_details()
    output_details = tflite_interpreter.get_output_details()

    predictions = np.zeros((len(test_set),), dtype=int)
    input_scale, input_zero_point = input_details[0]["quantization"]
    for i in range(len(test_set)):
        val_batch = test_set[i]
        val_batch = val_batch / input_scale + input_zero_point
        val_batch = np.expand_dims(val_batch, axis=0).astype(input_details[0]["dtype"])
        tflite_interpreter.set_tensor(input_details[0]['index'], val_batch)
        tflite_interpreter.allocate_tensors()
        tflite_interpreter.invoke()

        tflite_model_predictions = tflite_interpreter.get_tensor(output_details[0]['index'])
        # print("Prediction results shape:", tflite_model_predictions.shape)
        output = tflite_interpreter.get_tensor(output_details[0]['index'])
        predictions[i] = output.argmax()

    sum = 0
    for i in range(len(predictions)):
        if (predictions[i] == test_labels[i].argmax()):
            sum = sum + 1
    accuracy_score = sum / len(predictions)
    score = model.evaluate(x_test, y_test)

    print("Accuracy of quantized to int8 model is {}%".format(accuracy_score * 100))
    print("Compared to float32 accuracy of {}%".format(score[1] * 100))
    print("We have a change of {}%".format((accuracy_score - score[1]) * 100))

    # size comparison

    # Create float TFLite model.
    float_converter = tf.lite.TFLiteConverter.from_keras_model(model)
    float_tflite_model = float_converter.convert()

    # Measure sizes of models.
    _, float_file = tempfile.mkstemp('.tflite')
    _, quant_file = tempfile.mkstemp('.tflite')

    with open(quant_file, 'wb') as f:
        f.write(tflite_model)

    with open(float_file, 'wb') as f:
        f.write(float_tflite_model)

    print("Float model in Kb:", 1000 * os.path.getsize(float_file) / float(2 ** 20))
    print("Quantized model in Kb:", 1000 * os.path.getsize(quant_file) / float(2 ** 20))


# Function: Convert some hex value into an array for C programming
def hex_to_c_array(hex_data, var_name):
    c_str = ''

    # Create header guard
    c_str += '#ifndef ' + var_name.upper() + '_H\n'
    c_str += '#define ' + var_name.upper() + '_H\n\n'

    # Add array length at top of file
    c_str += '\nunsigned int ' + var_name + '_len = ' + str(len(hex_data)) + ';\n'

    # Declare C variable
    c_str += 'unsigned char ' + var_name + '[] = {'
    hex_array = []
    for i, val in enumerate(hex_data):

        # Construct string from hex
        hex_str = format(val, '#04x')

        # Add formatting so each line stays within 80 characters
        if (i + 1) < len(hex_data):
            hex_str += ','
        if (i + 1) % 12 == 0:
            hex_str += '\n '
        hex_array.append(hex_str)

    # Add closing brace
    c_str += '\n ' + format(' '.join(hex_array)) + '\n};\n\n'

    # Close out header guard
    c_str += '#endif //' + var_name.upper() + '_H'

    return c_str
