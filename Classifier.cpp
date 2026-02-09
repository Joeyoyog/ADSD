#include "Classifier.h"
#include "./svs.h"
#include "./bias.h"
#include "./alphas.h"

double classify(ap_fixed<8,7> x[IMG_SIZE]) {
    // --------------------------------------------------------
    // INTERFACES
    // --------------------------------------------------------
    #pragma HLS INTERFACE m_axi port=x offset=slave bundle=gmem depth=784
    #pragma HLS INTERFACE s_axilite port=return bundle=control

    ap_fixed<32,16> sum = 0.0;
    ap_fixed<32,16> partial_sum[16];
    #pragma HLS ARRAY_PARTITION variable=partial_sum complete dim=1

    // --------------------------------------------------------
    // SOLUTION 1: MEMORY REPLICATION (Fixes LUT Overflow)
    // --------------------------------------------------------
    // Create 16 copies of the image, one for each machine.
    // Dim 1 (16 copies): Complete -> 16 separate BRAMs
    // Dim 2 (Pixels): Cyclic 8 -> Allows reading 8 pixels/cycle
    ap_fixed<8,7> x_local[16][IMG_SIZE];
    #pragma HLS ARRAY_PARTITION variable=x_local complete dim=1
    #pragma HLS ARRAY_PARTITION variable=x_local cyclic factor=8 dim=2

    // SVS: Cyclic 16 (Machines) and Cyclic 8 (Pixels) matches the unroll
    #pragma HLS ARRAY_PARTITION variable=svs cyclic factor=16 dim=1
    #pragma HLS ARRAY_PARTITION variable=svs cyclic factor=8 dim=2
    #pragma HLS ARRAY_PARTITION variable=alphas cyclic factor=16 dim=1

    // Init Partial Sums
    for (int k = 0; k < 16; k++) {
        #pragma HLS UNROLL
        partial_sum[k] = 0;
    }

    // --------------------------------------------------------
    // LOAD & BROADCAST IMAGE
    // --------------------------------------------------------
    // Fills all 16 copies simultaneously.
    load_image_loop: for (int i = 0; i < IMG_SIZE; i++) {
        #pragma HLS PIPELINE
        ap_fixed<8,7> temp = x[i];
        for (int k = 0; k < 16; k++) {
            #pragma HLS UNROLL
            x_local[k][i] = temp;
        }
    }

    // --------------------------------------------------------
    // CLASSIFICATION LOOP
    // --------------------------------------------------------
    // Step by 16 (11 Batches)
    classify_label2: for (int i = 0; i < 176; i += 16) {

        ap_fixed<32,24> l2_acc[16];
        #pragma HLS ARRAY_PARTITION variable=l2_acc complete dim=1

        for(int init=0; init<16; init++) {
            #pragma HLS UNROLL
            l2_acc[init] = 0;
        }

        // ----------------------------------------------------
        // PIXEL PIPELINE (Unroll 8)
        // ----------------------------------------------------
        // Takes ~98 cycles per batch
        classify_label1: for (int j = 0; j < IMG_SIZE; j++) {
            #pragma HLS PIPELINE II=1
            #pragma HLS UNROLL factor=8

            for (int k = 0; k < 16; k++) {
                #pragma HLS UNROLL
                // Read from the PRIVATE copy of x_local
                ap_fixed<8,7> xi = svs[i+k][j];
                ap_fixed<8,7> xj = x_local[k][j];
                ap_fixed<8,7> diff = xi - xj;

                // SOLUTION 2: FORCE LUT MULTIPLIER (Fixes Sequential CORDIC)
                // Using 'Mul_LUT' saves DSPs, allowing CORDIC to parallelize
                ap_fixed<16,14> sq;
                #pragma HLS RESOURCE variable=sq core=Mul_LUT
                sq = diff * diff;

                l2_acc[k] += sq;
            }
        }

        // ----------------------------------------------------
        // CORDIC ENGINE (Parallel)
        // ----------------------------------------------------
        // With DSPs freed up, this loop will now unroll physically
        for (int k = 0; k < 16; k++) {
            #pragma HLS UNROLL
            const ap_fixed<16,4> gamma = ap_fixed<16,4>(-0.001);
            ap_fixed<22,1> K = (ap_fixed<22,1>)compute_exp(gamma * l2_acc[k]);
            partial_sum[k] += (ap_fixed<32,16>)(alphas[i+k] * K);
        }
    }

    // Final Reduction
    for (int k = 0; k < 16; k++) {
        #pragma HLS UNROLL
        sum += partial_sum[k];
    }

    return (double)(sum + bias[0]);
}
