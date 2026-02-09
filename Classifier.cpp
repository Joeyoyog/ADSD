#include "Classifier.h"
#include "./svs.h"
#include "./bias.h"
#include "./alphas.h"
#include "./sv_norms.h"

double classify(ap_fixed<8,7> x[IMG_SIZE]) {
    #pragma HLS INTERFACE m_axi port=x offset=slave bundle=gmem depth=784
    #pragma HLS INTERFACE s_axilite port=return bundle=control

    ap_fixed<32,16> sum = 0.0;
    ap_fixed<32,16> partial_sum[16];
    #pragma HLS ARRAY_PARTITION variable=partial_sum complete dim=1

    // --------------------------------------------------------
    // MEMORY CONFIGURATION
    // --------------------------------------------------------
    #pragma HLS ARRAY_RESHAPE variable=svs cyclic factor=16 dim=2
    #pragma HLS ARRAY_PARTITION variable=svs cyclic factor=16 dim=1

    ap_fixed<8,7> x_local[IMG_SIZE];
    #pragma HLS ARRAY_PARTITION variable=x_local cyclic factor=16 dim=1

    #pragma HLS ARRAY_PARTITION variable=alphas cyclic factor=16 dim=1
    #pragma HLS ARRAY_PARTITION variable=sv_norms cyclic factor=16 dim=1

    for (int k = 0; k < 16; k++) {
        #pragma HLS UNROLL
        partial_sum[k] = 0;
    }

    // --------------------------------------------------------
    // STEP 1: Load Image (Serialized Pipeline)
    // --------------------------------------------------------
    ap_fixed<24,14> x_norm = 0;

    load_image_loop: for (int i = 0; i < IMG_SIZE; i++) {
        // FIX 1: Use PIPELINE II=1. Do NOT Unroll.
        // This accepts 1 pixel/cycle efficiently.
        #pragma HLS PIPELINE II=1

        ap_fixed<8,7> val = x[i];
        x_local[i] = val;

        ap_fixed<16,14> sq;
        #pragma HLS RESOURCE variable=sq core=DSP48
        sq = val * val;
        x_norm += sq;
    }

    // --------------------------------------------------------
    // STEP 2: Main Classification Loop
    // --------------------------------------------------------
    classify_label2: for (int i = 0; i < 165; i += 16) {

        ap_fixed<32,16> dot_products[16];
        #pragma HLS ARRAY_PARTITION variable=dot_products complete dim=1

        for(int init=0; init<16; init++) {
            #pragma HLS UNROLL
            dot_products[init] = 0;
        }

        // DOT PRODUCT: Parallel (Unroll 16)
        // This consumes ~50 cycles per block.
        classify_label1: for (int j = 0; j < IMG_SIZE; j++) {
            #pragma HLS PIPELINE II=1
            #pragma HLS UNROLL factor=16

            for (int k = 0; k < 16; k++) {
                #pragma HLS UNROLL
                ap_fixed<8,7> xi = svs[i+k][j];
                ap_fixed<8,7> xj = x_local[j];

                // FORCE DSP: Cast to 16 bits to use DSP48
                ap_fixed<16,14> prod;
                #pragma HLS RESOURCE variable=prod core=DSP48
                prod = xi * xj;

                dot_products[k] += prod;
            }
        }

        // RECONSTRUCTION: Pipelined (NOT Unrolled)
        // FIX 2: PIPELINE instead of UNROLL.
        // Solves the resource conflict and reduces latency to ~32 cycles.
        Reconstruct_Loop: for (int k = 0; k < 16; k++) {
            #pragma HLS PIPELINE II=1

            ap_fixed<32,16> term1 = x_norm;
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

    return (double)(sum + bias[0]);
}
