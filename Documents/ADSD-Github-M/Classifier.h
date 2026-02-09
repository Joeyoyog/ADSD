#ifndef CLASSIFIER_H
#define CLASSIFIER_H

#include "ap_fixed.h"
#include "Exp.h"


#define IMG_SIZE 784
#define NSV 176//165 + 11 dummies to have a multiple of 16. 11 zeros have been added at the end of alpha so it doesn't change the results

double classify(ap_fixed<8,7> x[IMG_SIZE]);

#endif
