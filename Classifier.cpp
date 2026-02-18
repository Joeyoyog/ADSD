#include "Classifier.h"
#include "./svs.h"
#include "./bias.h"
#include "./alphas.h"
#include "./sv_norms.h"
#include "ap_int.h"
#include "Exp.h"

// --------------------------------------------------------
// STAGE 1: LOAD & CALC NORM
// --------------------------------------------------------
// We calculate the norm here because the CPU cannot send it
// via AXI-Lite for every image during a continuous stream.
ap_fixed<24,14> load_and_calc_norm(hls::stream<axis_t> &in_stream, ap_fixed<8,7> x_local[IMG_SIZE]) {
    #pragma HLS INLINE off

    ap_fixed<24,14> calculated_norm = 0;

    load_loop: for (int i = 0; i < IMG_SIZE / 8; i++) {
        #pragma HLS PIPELINE II=1

        axis_t packet = in_stream.read();
        ap_uint<64> data = packet.data;

        for (int p = 0; p < 8; p++) {
            #pragma HLS UNROLL
            ap_fixed<8,7> val;
            val(7, 0) = data.range(p*8 + 7, p*8);
            x_local[i*8 + p] = val;

            ap_fixed<16,14> sq = val * val;
            calculated_norm += sq;
        }
    }
    return calculated_norm;
}

// --------------------------------------------------------
// STAGE 2: COMPUTE CLASS (Logic Unchanged)
// --------------------------------------------------------
void compute_class(ap_fixed<8,7> x_local[IMG_SIZE], ap_fixed<24,14> x_norm_in, ap_fixed<32,16> &result) {
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
    result = (ap_fixed<32,16>)(sum + bias[0]);
}

// --------------------------------------------------------
// TOP LEVEL: BATCH STREAMING
// --------------------------------------------------------
void classify(hls::stream<axis_t> &in_stream,
              hls::stream<result_pkt> &out_stream,
              int num_images) {
	//num_images = 2601;

    // INTERFACES
    #pragma HLS INTERFACE axis port=in_stream
    #pragma HLS INTERFACE axis port=out_stream
    #pragma HLS INTERFACE s_axilite port=num_images bundle=control
    #pragma HLS INTERFACE s_axilite port=return bundle=control

    // OPTIMIZATIONS
    #pragma HLS ARRAY_RESHAPE variable=svs cyclic factor=16 dim=2
    #pragma HLS ARRAY_PARTITION variable=svs cyclic factor=16 dim=1
    #pragma HLS ARRAY_PARTITION variable=alphas cyclic factor=16 dim=1
    #pragma HLS ARRAY_PARTITION variable=sv_norms cyclic factor=16 dim=1

	//num_images = 2601;

    // BATCH LOOP: Process N images without stopping
    Batch_Loop: for (int n = 0; n < num_images; n++) {
        #pragma HLS DATAFLOW

        ap_fixed<8,7> x_local[IMG_SIZE];
        #pragma HLS ARRAY_PARTITION variable=x_local cyclic factor=16 dim=1

        ap_fixed<24,14> internal_norm;
        ap_fixed<32,16> res_internal;

        // 1. Load & Calc Norm
        internal_norm = load_and_calc_norm(in_stream, x_local);

        // 2. Compute
        compute_class(x_local, internal_norm, res_internal);

        // 3. Stream Output
        result_pkt out_val;
        out_val.data = res_internal;
        out_val.keep = -1; // All bytes valid
        out_val.strb = -1;
        // Assert TLAST only on the very last image of the batch
        out_val.last = (n == num_images - 1) ? 1 : 0;

        out_stream.write(out_val);
    }
}
