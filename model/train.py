import model
import os
from config import *
import wandb
from wandb.keras import WandbCallback
from keras.callbacks import ModelCheckpoint
import tensorflow as tf
import random
import gc

SEED = 42
random.seed(SEED)
tf.random.set_seed(SEED)

if __name__ == "__main__":
    config_all = {**model_conf, **train_conf, **data_conf}
    wandb_key = data_conf['wandb_key']
    if wandb_key != None:
        wandb.login(key=wandb_key, relogin=True)
        run = wandb.init(project=data_conf['wandb_project'], entity=data_conf['wandb_name'], config=config_all)
        wandb.config = config_all

    train_path = os.path.join(data_conf['root'], 'train')
    test_path = os.path.join(data_conf['root'], 'test')
    print(f'Train path: {train_path}')
    print(f'Test path: {test_path}')

    x_train, y_train, x_test, y_test = model.create_dataset(train_path, test_path)

    # checkpoint callback
    cp_name = f'model_{run.name}.h5' if wandb_key != None else 'model.h5'
    checkpoint = ModelCheckpoint(
        cp_name,
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

    model = model.get_model(input_shape=x_train[0].shape, config=config_all)

    print(f"Start training: Input Shape : {x_train[0].shape}")
    gc.collect()

    cbacks = [checkpoint, lr_callback]
    if wandb_key != None:
        cbacks.append(WandbCallback)
        run_name = run.name
    else:
        run_name = ''

    model.fit(x_train, y_train, validation_data=(x_test, y_test), batch_size=train_conf['batch_size'],
              epochs=train_conf['epochs'],
              callbacks=cbacks)
    print(model.evaluate(x_test, y_test))
    name = config_all['model_saves'] + "_" + run_name + ".h5"
    model.save(name)
