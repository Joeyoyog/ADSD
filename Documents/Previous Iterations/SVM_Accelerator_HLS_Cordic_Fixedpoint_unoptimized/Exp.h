#ifndef EXP_H
#define EXP_H
#include "ap_fixed.h"


typedef ap_fixed<16,4>	x_t;
typedef ap_ufixed<32,1>	out_t;

out_t compute_exp(x_t x);
//double compute_exp(double val);

#endif
