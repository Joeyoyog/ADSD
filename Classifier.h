#ifndef CLASSIFIER_H
#define CLASSIFIER_H

#include "ap_fixed.h"
#include "ap_int.h"

// CRITICAL INCLUDES for Streaming
#include <hls_stream.h>
#include <ap_axi_sdata.h>

#define IMG_SIZE 784
#define NSV 176

// Define AXI Stream Packet (64-bit data, 1-bit side channels)
typedef ap_axiu<64, 1, 1, 1> axis_t;

// Top Level Prototype
void classify(hls::stream<axis_t> &in_stream, hls::stream<double> &out_stream, ap_fixed<24,14> x_norm_in);

#endif
