#include "Classifier.h"
#include "./svs.h"    // Ensure this is 2D: svs[NSV][IMG_SIZE]
#include "./bias.h"
#include "./alphas.h" // Ensure this is 1D

double classify(ap_fixed<8,7> x[IMG_SIZE]) {

    // FIX 1: Uncomment Interfaces for Synthesis
    //#pragma HLS INTERFACE m_axi port=x offset=slave bundle=gmem depth=784
    //#pragma HLS INTERFACE s_axilite port=return bundle=control

    ap_fixed<32,16> sum = 0.0;

    // Partial sums for 8 parallel engines
    ap_fixed<32,16> partial_sum[8];
    #pragma HLS ARRAY_PARTITION variable=partial_sum complete dim=1

    // FIX 2: Uncomment Unroll for parallel reset
    for (int k = 0; k < 8; k++) {
        #pragma HLS UNROLL
        partial_sum[k] = 0;
    }

    ap_fixed<8,7> x_local[IMG_SIZE];
	#pragma HLS ARRAY_PARTITION variable=x_local cyclic factor=8 dim=1

    // Partitioning Configuration
    #pragma HLS ARRAY_PARTITION variable=svs cyclic factor=8 dim=1
    #pragma HLS ARRAY_PARTITION variable=svs cyclic factor=4 dim=2
    #pragma HLS ARRAY_PARTITION variable=alphas cyclic factor=8 dim=1

    // Load Image Loop
    load_image_loop: for (int i = 0; i < IMG_SIZE; i++) {
        #pragma HLS PIPELINE
        x_local[i] = x[i];
    }

    // Outer Loop: Steps by 8 (Batches)
    classify_label2:for (int i = 0; i < NSV; i += 8) {
        // REMOVED: #pragma HLS PIPELINE II=1 (Wrong place!)

        // Parallel Engine Generation
        for (int k = 0; k < 8; k++) {
            #pragma HLS UNROLL // Force 8 physical copies

            if (i + k < NSV) {
                ap_fixed<32,24> l2Squared_fixed = 0;

                // Inner Loop: Distance Calculation
                classify_label1:for (int j = 0; j < IMG_SIZE; j++) {
                    #pragma HLS UNROLL factor=4
                    // FIX 3: PIPELINE GOES HERE
                    #pragma HLS PIPELINE II=1

                    ap_fixed<8,7> xi = svs[i+k][j];
                    ap_fixed<8,7> xj = x_local[j];
                    ap_fixed<8,7> diff = xi - xj;
                    l2Squared_fixed += (ap_fixed<22,14>)(diff * diff);
                }

                const ap_fixed<16,4> gamma = ap_fixed<16,4>(-0.001);

                // Inline check: Ensure compute_exp has 'inline' in Exp.cpp
                ap_fixed<22,1> K = (ap_fixed<22,1>)compute_exp(gamma * l2Squared_fixed);

                partial_sum[k] += (ap_fixed<32,16>)(alphas[i+k] * K);
            }
        }
    }

    // FIX 4: Uncomment Unroll for parallel summation
    for (int k = 0; k < 8; k++) {
        #pragma HLS UNROLL
        sum += partial_sum[k];
    }

    return (double)(sum + bias[0]);
}
