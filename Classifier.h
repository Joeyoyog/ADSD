#ifndef CLASSIFIER_H
#define CLASSIFIER_H

#include "ap_fixed.h"
#include "Exp.h"


#define IMG_SIZE 784
#define NSV 176//165 + 11 dummies to have a multiple of 16. 11 zeros have been added at the end of alpha so it doesn't change the results

double classify(ap_uint<64> x[IMG_SIZE/8], ap_fixed<24,14> x_norm_in);

#endif
