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
    // OPTIMIZATION 1: RESHAPE vs PARTITION
    // --------------------------------------------------------
    // RESHAPE allows reading 16 values in one clock cycle by making the
    // memory word 16x wider, rather than using 16x more RAM blocks.
    // This solves the 92% BRAM issue.
    #pragma HLS ARRAY_RESHAPE variable=svs cyclic factor=16 dim=2
    #pragma HLS ARRAY_PARTITION variable=svs cyclic factor=16 dim=1

    // x_local needs partitioning because we write to it individually
    ap_fixed<8,7> x_local[IMG_SIZE];
    #pragma HLS ARRAY_PARTITION variable=x_local cyclic factor=16 dim=1

    #pragma HLS ARRAY_PARTITION variable=alphas cyclic factor=16 dim=1
    #pragma HLS ARRAY_PARTITION variable=sv_norms cyclic factor=16 dim=1

    // Initialize partial sums
    for (int k = 0; k < 16; k++) {
        #pragma HLS UNROLL
        partial_sum[k] = 0;
    }

    // --------------------------------------------------------
    // STEP 1: Load Image & Calculate ||x||^2
    // --------------------------------------------------------
    ap_fixed<24,14> x_norm = 0;

    load_image_loop: for (int i = 0; i < IMG_SIZE; i++) {
        #pragma HLS PIPELINE II=1

        ap_fixed<8,7> val = x[i];
        x_local[i] = val;

        // Force this square operation to DSP to save LUTs
        ap_fixed<16,14> sq;
        #pragma HLS RESOURCE variable=sq core=DSP48
        sq = val * val;
        x_norm += sq;
    }

    // --------------------------------------------------------
    // STEP 2: Main Classification Loop
    // --------------------------------------------------------
    classify_label2: for (int i = 0; i < 165; i += 16) { // NOTE: adjusted limit to 165 based on sv_norms

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

                // OPTIMIZATION 2: FORCE DSP USAGE
                // By default, 8-bit mults go to LUTs. We force them to DSPs.
                // This will use ~16 DSPs, but drastically lower LUT usage.
                ap_fixed<16,14> prod;
                #pragma HLS RESOURCE variable=prod core=DSP48
                prod = xi * xj;

                dot_products[k] += prod;
            }
        }

        // STEP 3: Reconstruct
        Reconstruct_Loop: for (int k = 0; k < 16; k++) {
            #pragma HLS UNROLL factor=8 // Factor 4 is the sweet spot for area/speed

            // Check boundary to avoid reading garbage beyond 165th vector
            //if (i+k < 165) {
                ap_fixed<32,16> term1 = x_norm;
                ap_fixed<32,16> term2 = sv_norms[i+k];
                ap_fixed<32,16> term3 = dot_products[k];

                // ||x - sv||^2 = ||x||^2 + ||sv||^2 - 2(x . sv)
                ap_fixed<32,16> dist_sq = term1 + term2 - (term3 << 1);

                const ap_fixed<16,4> gamma = ap_fixed<16,4>(-0.001);
                if(dist_sq < 0) dist_sq = 0;

                ap_fixed<22,1> K = (ap_fixed<22,1>)compute_exp(gamma * dist_sq);
                partial_sum[k] += (ap_fixed<32,16>)(alphas[i+k] * K);
            //}
        }
    }

    for (int k = 0; k < 16; k++) {
        #pragma HLS UNROLL
        sum += partial_sum[k];
    }

    return (double)(sum + bias[0]);
}
