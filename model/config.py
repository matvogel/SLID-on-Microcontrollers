model_conf = {
    'filters': [16, 32, 64, 128, 256],
    'kernels': [(3,3), (5,3), (5,3), (5,3), (5,3)],
    'strides': [(2,2), (2,2), (3,1), (3,1), (3,1)],
    'dense': [32, 16, 8],
    'dropout': True,
    'batch_norm': True,
    'activation': 'relu',
    'regularizer': 0.001
}

train_conf = {
    'batch_size': 32,
    'epochs':100,
    'lr': 1e-4,
    'qaware_train': False,
    'add_noise': False
}

data_conf = {
    'root': 'cmsis_8000_12_256',
    'model_saves': 'model_final',
    'wandb_key': None,
    'wandb_project': None,
    'wandb_name': None
}
