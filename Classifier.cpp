#include "Classifier.h"
#include "./svs.h"
#include "./bias.h"
#include "./alphas.h"
#include "./sv_norms.h"
#include "ap_int.h"
#include "Exp.h" // Required for compute_exp

// --------------------------------------------------------
// LOAD DATA: Reads from AXI Stream
// --------------------------------------------------------
void load_data(hls::stream<axis_t> &in_stream, ap_fixed<8,7> x_local[IMG_SIZE]) {
    #pragma HLS INLINE off

    load_image_loop: for (int i = 0; i < IMG_SIZE / 8; i++) {
        #pragma HLS PIPELINE II=1

        // 1. Read the packet from the stream
        axis_t packet = in_stream.read();
        ap_uint<64> data = packet.data;

        // 2. Unpack the 64-bit data into 8 pixels
        for (int p = 0; p < 8; p++) {
            #pragma HLS UNROLL
            ap_fixed<8,7> val;
            val(7, 0) = data.range(p*8 + 7, p*8);
            x_local[i*8 + p] = val;
        }
    }
}

// --------------------------------------------------------
// COMPUTE CLASS: Your optimized logic (unchanged)
// --------------------------------------------------------
void compute_class(ap_fixed<8,7> x_local[IMG_SIZE], ap_fixed<24,14> x_norm_in, double &result) {
    #pragma HLS INLINE off

    ap_fixed<32,16> sum = 0.0;
    ap_fixed<32,16> partial_sum[16];
    #pragma HLS ARRAY_PARTITION variable=partial_sum complete dim=1

    for (int k = 0; k < 16; k++) {
        #pragma HLS UNROLL
        partial_sum[k] = 0;
    }

    classify_label2: for (int i = 0; i < 165; i += 16) {
        ap_fixed<32,16> dot_products[16];
        #pragma HLS ARRAY_PARTITION variable=dot_products complete dim=1

        for(int init=0; init<16; init++) {
            #pragma HLS UNROLL
            dot_products[init] = 0;
        }

        classify_label1: for (int j = 0; j < IMG_SIZE; j++) {
            #pragma HLS PIPELINE II=1
            #pragma HLS UNROLL factor=16

            for (int k = 0; k < 16; k++) {
                #pragma HLS UNROLL
                ap_fixed<8,7> xi = svs[i+k][j];
                ap_fixed<8,7> xj = x_local[j];

                // Pure LUT multiplication
                ap_fixed<16,14> prod = xi * xj;
                dot_products[k] += prod;
            }
        }

        Reconstruct_Loop: for (int k = 0; k < 16; k++) {
            #pragma HLS PIPELINE II=1
            ap_fixed<32,16> term1 = x_norm_in;
            ap_fixed<32,16> term2 = sv_norms[i+k];
            ap_fixed<32,16> term3 = dot_products[k];
            ap_fixed<32,16> dist_sq = term1 + term2 - (term3 << 1);

            const ap_fixed<16,4> gamma = ap_fixed<16,4>(-0.001);
            if(dist_sq < 0) dist_sq = 0;

            ap_fixed<22,1> K = (ap_fixed<22,1>)compute_exp(gamma * dist_sq);
            partial_sum[k] += (ap_fixed<32,16>)(alphas[i+k] * K);
        }
    }

    for (int k = 0; k < 16; k++) {
        #pragma HLS UNROLL
        sum += partial_sum[k];
    }
    result = (double)(sum + bias[0]);
}

// --------------------------------------------------------
// TOP LEVEL FUNCTION: Streaming Interface
// --------------------------------------------------------
void classify(hls::stream<axis_t> &in_stream, hls::stream<double> &out_stream, ap_fixed<24,14> x_norm_in) {
    // AXI Stream Interfaces (No offset, No bundle)
    #pragma HLS INTERFACE axis port=in_stream
    #pragma HLS INTERFACE axis port=out_stream
    // AXI Lite Control for scalar inputs and return
    #pragma HLS INTERFACE s_axilite port=x_norm_in bundle=control
    #pragma HLS INTERFACE s_axilite port=return bundle=control

    // MEMORY CONFIGURATION
    #pragma HLS ARRAY_RESHAPE variable=svs cyclic factor=16 dim=2
    #pragma HLS ARRAY_PARTITION variable=svs cyclic factor=16 dim=1
    #pragma HLS ARRAY_PARTITION variable=alphas cyclic factor=16 dim=1
    #pragma HLS ARRAY_PARTITION variable=sv_norms cyclic factor=16 dim=1

    // PING-PONG BUFFER (Inferred by DATAFLOW)
    ap_fixed<8,7> x_local[IMG_SIZE];
    #pragma HLS ARRAY_PARTITION variable=x_local cyclic factor=16 dim=1

    // DATAFLOW: Overlaps Loading and Computing
    #pragma HLS DATAFLOW

    double result;

    load_data(in_stream, x_local);
    compute_class(x_local, x_norm_in, result);

    // Write result to output stream
    out_stream.write(result);
}
