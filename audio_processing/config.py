# DATA SETTINGS
augment = False
classification = True
nbits = 16
use_foldername = False

# AUDIO SETTINGS
sampling_rate = 8000  # sample rate
totalSliceLength = 10
length_sample = sampling_rate * totalSliceLength

# MFCC SETTINGS
lower_edge = 80
upper_edge = sampling_rate // 2
mel_bins = 20
mcff_coeffs = 12  # number of coefficients

# new calc settings
nfft = 256
num_frames = 625
frame_length = 256
frame_step = frame_length // 2
total_samples = num_frames * frame_step + frame_step
