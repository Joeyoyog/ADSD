#ifndef CLASSIFIER_H
#define CLASSIFIER_H

#include "ap_fixed.h"
#include "ap_int.h"
#include <hls_stream.h>
#include <ap_axi_sdata.h>

#define IMG_SIZE 784
#define NSV 176


// --------------------------------------------------------
// DATA TYPES
// --------------------------------------------------------
// Input Stream: 64-bit width (8 pixels per cycle)
typedef ap_axiu<64, 1, 1, 1> axis_t;

// Output Stream: 32-bit score + Control signals (Last, Keep, Strb)
struct result_pkt {
    ap_fixed<32,16> data;
    ap_uint<1> keep;
    ap_uint<1> strb;
    ap_uint<1> last;
};

// --------------------------------------------------------
// FUNCTION PROTOTYPE
// --------------------------------------------------------
void classify(hls::stream<axis_t> &in_stream,
              hls::stream<result_pkt> &out_stream,
              int num_images);

#endif
