import librosa
import numpy as np
import cmsisdsp as dsp
import cmsisdsp.fixedpoint as f
import cmsisdsp.mfcc as mfcc
from cmsisdsp.datatype import Q15
import cmsisdsp.datatype as dt
import config
import scipy.signal as sig


def min_max_scale(array):
    """Classic Min Max Scaling"""
    array -= np.min(array)
    array = array / np.max(array)
    return array


class MFCC_Generator:
    def __init__(self):
        """Generates the MFCC class for exctracting Q15 MFCC and return in converted f32 like CMSIS does it."""
        self.mfccq15 = dsp.arm_mfcc_instance_q15()
        # extract values from config
        freq_min, freq_high, numOfMelFilters = config.lower_edge, config.upper_edge, config.mel_bins
        sample_rate, FFTSize = config.sampling_rate, config.nfft
        numOfDctOutputs = config.mcff_coeffs

        self.windowQ15 = dt.convert(sig.hamming(FFTSize, sym=False), Q15)
        filtLen, filtPos, packedFiltersQ15 = mfcc.melFilterMatrix(Q15, freq_min, freq_high, numOfMelFilters,
                                                                  sample_rate, FFTSize)
        self.filtLen = filtLen
        self.filtPos = filtPos
        self.total_samples = config.total_samples
        self.packedFiltersQ15 = packedFiltersQ15
        self.dctMatrixFiltersQ15 = mfcc.dctMatrix(Q15, numOfDctOutputs, numOfMelFilters)
        self.status = dsp.arm_mfcc_init_q15(self.mfccq15, FFTSize, numOfMelFilters, numOfDctOutputs,
                                            self.dctMatrixFiltersQ15, filtPos, filtLen, packedFiltersQ15,
                                            self.windowQ15)
        if self.status != 0:
            print(f"Error: Status {self.status}")
        print("Created mfcc generator without errors")

    def generate_mfcc(self, sound_data):
        """Generates the mfccs from sound data provided by librosa from a 10 second sample.
           It has the shape 625x12"""

        # resize to correct shape
        if len(sound_data) < config.total_samples:
            pad = [0] * abs(config.total_samples - len(sound_data))
            sound_data = np.append(sound_data, pad)
        else:
            sound_data = sound_data[:config.total_samples]

        # generate slicing indizes
        indices = (
                np.tile(np.arange(0, config.frame_length), (config.num_frames, 1)) +
                np.tile(np.arange(0, config.num_frames * config.frame_step, config.frame_step),
                        (config.frame_length, 1)).T
        )

        # generate frames such that the new shape is 625X256
        frames = sound_data[indices.astype(np.int32, copy=False)]

        # generate the mfccs
        mfccs = []
        for frame in frames:
            tmp = np.zeros(2 * config.nfft, dtype=np.int32)
            _, resQ15 = dsp.arm_mfcc_q15(self.mfccq15, f.toQ15(frame), tmp)
            mfccs.append((1 << 8) * f.Q15toF32(resQ15))
        mfccs = np.array(mfccs)

        # scaling
        mfccs = min_max_scale(mfccs)
        return mfccs
