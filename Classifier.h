#ifndef CLASSIFIER_H
#define CLASSIFIER_H

#include "ap_fixed.h"
#include "ap_int.h"
#include <hls_stream.h>
#include <ap_axi_sdata.h>

#define IMG_SIZE 784
#define NSV 176

// Define AXI Stream Packet
typedef ap_axiu<64, 1, 1, 1> axis_t;

// UPDATED SIGNATURE:
// 1. in_stream (Stream Input)
// 2. x_norm_in (Scalar Input)
// 3. result_out (Scalar Output Reference)
void classify(hls::stream<axis_t> &in_stream,
              ap_fixed<24,14> x_norm_in,
              ap_fixed<32,16> &result_out);

#endif
