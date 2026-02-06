#ifndef CLASSIFIER_H
#define CLASSIFIER_H

#include "ap_fixed.h"
#include "Exp.h"


#define IMG_SIZE 784
#define NSV 165

double classify(ap_fixed<8,7> x[IMG_SIZE]);

#endif
