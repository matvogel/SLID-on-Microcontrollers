import config
import os
from pathlib import Path
from multiprocessing import Pool, cpu_count
from process_folder import process_folder
from itertools import repeat


if __name__ == "__main__":
    # setup output folders
    prefix = 'cmsis'
    foldername = '_'.join([prefix,str(config.sampling_rate), str(config.mcff_coeffs), str(config.frame_length)])

    # create folders
    target_folder_root = foldername
    dataroot = os.path.join(Path().absolute(),'audio_processing', 'data')
    os.makedirs(target_folder_root, exist_ok=True)

    folders = [os.path.join(dataroot, folder) for folder in os.listdir(dataroot)]

    # this is for manually generate just a single folder which has many data
    # the data is processed in parallel!
    
    if not config.use_foldername:
        for folder in folders:
            process_folder(folder, target_folder_root)
    
    # processing the folders in parallel and the files sequentally
    else:
        with Pool(cpu_count() // 2) as pool:
            pool.starmap(process_folder, zip(folders, repeat(target_folder_root)))
