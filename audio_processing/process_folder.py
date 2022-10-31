import numpy as np
import librosa
import os
import config
from itertools import repeat
from multiprocessing import Pool, freeze_support
from scipy.fftpack import dct
from glob import glob
from generate_mfcc_cmsis import MFCC_Generator

mfcc_gen = MFCC_Generator()


def process_file(*args):
    file = args[0]
    filefolder = args[1]
    output_root = args[2]

    sampling_rate = config.sampling_rate
    foldername = os.path.basename(filefolder)
    filepath = os.path.join(filefolder, file)

    filename = file.split('.flac')[0]
    file_template = os.path.join(output_root, foldername, f'{filename}')

    # read the soundfile (librosa does resampling, normalizing and floating point conversion)
    try:
        sound_data, _ = librosa.load(filepath, sr=sampling_rate, res_type="kaiser_fast")
    except:
        print(f'Error reading file {file} in {filefolder}')
        return

    # skip short files
    if float(len(sound_data)) / float(sampling_rate) < 0.3:
        return
    sound_data = np.array(sound_data, dtype=np.float32)

    # mfcc = generate_fb_and_mfcc(sound_data.astype(np.float32), config.sampling_rate)
    mfcc = mfcc_gen.generate_mfcc(sound_data)
    np.savez_compressed(f'{file_template}', mfcc)


def process_files(filenames, filefolder, output_root):
    sampling_rate = config.sampling_rate
    frame_length = config.frame_length
    foldername = os.path.basename(filefolder)

    os.makedirs(os.path.join(output_root, foldername), exist_ok=True)

    sliceLength = int(config.totalSliceLength * sampling_rate / frame_length) * frame_length
    index = 0
    for file in filenames:
        filepath = os.path.join(filefolder, file)

        target = foldername.split('_')[-1]
        foldername_base = '_'.join(foldername.split('_')[:-1])
        filename = f'{foldername_base}_mfcc_{index}_{target}'
        f_xnormal = os.path.join(output_root, foldername, f'{filename}')

        # skip already generated files
        if os.path.exists(f'{f_xnormal}.npz'):
            continue

        # read the soundfile (librosa does resampling, normalizing and floating point conversion)
        try:
            sound_data, _ = librosa.load(filepath, sr=sampling_rate, res_type="kaiser_fast")
        except:
            print(f'Error reading file {file} in {foldername_base}')
            continue

        # skip short files
        if float(len(sound_data)) / float(sampling_rate) < 0.3:
            continue

        cut = sound_data.copy()
        cut = np.resize(cut, sliceLength)
        cut = cut.reshape(-1, int(frame_length))

        cut = compute_mfccs(cut.astype(np.float32))
        cut = generate_fb_and_mfcc(cut.astype(np.float32), config.sampling_rate)
        np.savez_compressed(f_xnormal, cut)
        index += 1

        # save the generated data


def process_folder(path, output):
    files = [file for file in os.listdir(path) if file.endswith('flac')]
    os.makedirs(os.path.join(output, os.path.basename(path)), exist_ok=True)
    print(f"Processing {len(files)} files in folder {path}")

    if config.use_foldername:
        process_files(files, path, output)
    else:
        freeze_support()
        with Pool(6) as p:
            p.starmap(process_file, zip(files, repeat(path), repeat(output)))
