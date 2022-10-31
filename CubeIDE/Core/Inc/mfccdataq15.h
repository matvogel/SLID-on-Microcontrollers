#ifndef _MFCC_DATA_H_
#define _MFCC_DATA_H_ 

#include "arm_math_types.h"


#ifdef   __cplusplus
extern "C"
{
#endif


/*****

 DCT COEFFICIENTS FOR THE MFCC

*****/



#define NB_MFCC_DCT_COEFS_Q15 240
extern const q15_t mfcc_dct_coefs[NB_MFCC_DCT_COEFS_Q15];



/*****

 WINDOW COEFFICIENTS

*****/


#define NB_MFCC_WIN_COEFS_Q15 256
extern const q15_t mfcc_window_coefs[NB_MFCC_WIN_COEFS_Q15];



/*****

 MEL FILTER COEFFICIENTS FOR THE MFCC

*****/

#define NB_MFCC_NB_FILTER_Q15 20
extern const uint32_t mfcc_filter_pos[NB_MFCC_NB_FILTER_Q15];
extern const uint32_t mfcc_filter_len[NB_MFCC_NB_FILTER_Q15];



#define NB_MFCC_FILTER_COEFS_Q15 236
extern const q15_t mfcc_filter_coefs[NB_MFCC_FILTER_COEFS_Q15];



#ifdef   __cplusplus
}
#endif

#endif

