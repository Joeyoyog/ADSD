#include "Classifier.h"
#include "ap_int.h"
#include "Exp.h"
#include "bias.h"

#include "sv_dataset_config.h"
#include "alphas_0_padded.h"
#include "alphas_1_padded.h"
#include "sv_norms_0_padded.h"
#include "sv_norms_1_padded.h"
#include "svs0_pack_p496.h"   // Auto-generated 496-padded header
#include "svs1_pack_p496.h"   // Auto-generated 496-padded header

static const int LANES   = 16;
static const int RECON_U = 8;
static const int NSV0    = SV_NSV0_PADDED;
static const int NSV1    = SV_NSV1_PADDED;
static const int PIX_U   = SV_PIX_U;
static const int IMG_PAD = SV_IMG_PAD;
static const int X_PACKS = SV_X_PACKS; // Will be 31
static const ap_fixed<32,16> BIAS_TUNE = 0; // Set to 0 for initial score generation

typedef ap_uint<128> packword_t;
typedef packword_t svword_t;
typedef packword_t xword_t;

static inline ap_fixed<8,7> unpack_byte(const packword_t &w, int p) {
#pragma HLS INLINE
    ap_int<8> raw = (ap_int<8>)w.range(8*p + 7, 8*p);
    ap_fixed<8,7> val;
    val.range(7,0) = raw;
    return val;
}

// ULTRA-LEAN LOADER: Just reads exactly X_PACKS from the pre-cropped stream
ap_fixed<24,14> load_and_calc_norm(hls::stream<axis_t> &in_stream,
                                   xword_t x_pack[X_PACKS]) {
#pragma HLS INLINE off
    ap_fixed<24,14> calculated_norm = 0;
    for (int g = 0; g < X_PACKS; g++) {
#pragma HLS PIPELINE II=1
        xword_t word = 0;
        for (int half = 0; half < 2; half++) {
            axis_t packet = in_stream.read();
            ap_uint<64> data = packet.data;
            for (int p = 0; p < 8; p++) {
#pragma HLS UNROLL
                ap_int<8> raw = (ap_int<8>)data.range((p << 3) + 7, (p << 3));
                ap_fixed<8,7> val;
                val.range(7,0) = raw;
                ap_fixed<16,14> sq;
#pragma HLS RESOURCE variable=sq core=DSP48
                sq = val * val;
                calculated_norm += sq;
                int byte_idx = (half << 3) + p;
                word.range(8 * byte_idx + 7, 8 * byte_idx) = raw.range(7,0);
            }
        }
        x_pack[g] = word;
    }
    return calculated_norm;
}

void compute_and_output(xword_t x_pack[X_PACKS],
                        ap_fixed<24,14> x_norm_in,
                        hls::stream<result_pkt> &out_stream,
                        int n,
                        int num_images) {
#pragma HLS INLINE off
    ap_fixed<32,16> partial_sum[2][LANES];
#pragma HLS ARRAY_PARTITION variable=partial_sum complete dim=1
#pragma HLS ARRAY_PARTITION variable=partial_sum cyclic factor=RECON_U dim=2

    for (int m = 0; m < 2; m++) {
#pragma HLS UNROLL
        for (int k = 0; k < LANES; k++) {
#pragma HLS UNROLL
            partial_sum[m][k] = 0;
        }
    }

    for (int i = 0; i < NSV0; i += LANES) {
#pragma HLS LOOP_TRIPCOUNT min=6 max=6 avg=6
        ap_fixed<32,16> dot[2][LANES];
#pragma HLS ARRAY_PARTITION variable=dot complete dim=1
#pragma HLS ARRAY_PARTITION variable=dot complete dim=2

        for (int g = 0; g < X_PACKS; g++) {
#pragma HLS PIPELINE II=1
            xword_t xw = x_pack[g];
            for (int m = 0; m < 2; m++) {
#pragma HLS UNROLL
                for (int k = 0; k < LANES; k++) {
#pragma HLS UNROLL
                    svword_t w = (m == 0) ? svs0_pack[i + k][g] : svs1_pack[i + k][g];
                    ap_fixed<32,16> sum_pix = 0;
                    for (int p = 0; p < PIX_U; p++) {
#pragma HLS UNROLL
                        ap_fixed<8,7> xi = unpack_byte(w, p);
                        ap_fixed<8,7> xv = unpack_byte(xw, p);
                        ap_fixed<16,14> prod;
                        prod = xi * xv;
                        sum_pix += prod;
                    }
                    if (g == 0) {
                        dot[m][k] = sum_pix;
                    } else {
                        dot[m][k] += sum_pix;
                    }
                }
            }
        }

        for (int kk = 0; kk < LANES; kk += RECON_U) {
#pragma HLS PIPELINE II=1
            for (int m = 0; m < 2; m++) {
#pragma HLS UNROLL
                for (int r = 0; r < RECON_U; r++) {
#pragma HLS UNROLL
                    int k = kk + r;
                    ap_fixed<32,16> svn = (m == 0) ? sv_norms_0_padded[i + k] : sv_norms_1_padded[i + k];
                    ap_fixed<32,16> alpha = (m == 0) ? ap_fixed<32,16>(alphas_0_padded[i + k])
                                                     : ap_fixed<32,16>(alphas_1_padded[i + k]);
                    ap_fixed<32,16> dist_sq = ap_fixed<32,16>(x_norm_in) + svn - (dot[m][k] << 1);
                    if (dist_sq < 0) dist_sq = 0;
                    ap_fixed<22,1> K = (ap_fixed<22,1>)compute_exp(-(dist_sq >> 10));
                    partial_sum[m][k] += alpha * ap_fixed<32,16>(K);
                }
            }
        }
    }

    ap_fixed<32,16> sum = 0;
    for (int m = 0; m < 2; m++) {
        for (int kk = 0; kk < LANES; kk += RECON_U) {
#pragma HLS PIPELINE II=1
            ap_fixed<32,16> local_sum = 0;
            for (int r = 0; r < RECON_U; r++) {
#pragma HLS UNROLL
                local_sum += partial_sum[m][kk + r];
            }
            sum += local_sum;
        }
    }

    result_pkt out_val;
    out_val.data = (ap_fixed<32,16>)(sum + bias[0] + BIAS_TUNE);
    out_val.keep = -1;
    out_val.strb = -1;
    out_val.last = (n == num_images - 1) ? 1 : 0;
    out_stream.write(out_val);
}

void classify(hls::stream<axis_t> &in_stream,
              hls::stream<result_pkt> &out_stream,
              int num_images) {
#pragma HLS INTERFACE axis port=in_stream
#pragma HLS INTERFACE axis port=out_stream
#pragma HLS INTERFACE s_axilite port=num_images bundle=control
#pragma HLS INTERFACE s_axilite port=return bundle=control

#pragma HLS ARRAY_PARTITION variable=svs0_pack cyclic factor=LANES dim=1
#pragma HLS ARRAY_PARTITION variable=svs1_pack cyclic factor=LANES dim=1
#pragma HLS RESOURCE variable=svs0_pack core=ROM_2P_BRAM
#pragma HLS RESOURCE variable=svs1_pack core=ROM_2P_BRAM

#pragma HLS ARRAY_PARTITION variable=alphas_0_padded cyclic factor=RECON_U dim=1
#pragma HLS ARRAY_PARTITION variable=alphas_1_padded cyclic factor=RECON_U dim=1
#pragma HLS ARRAY_PARTITION variable=sv_norms_0_padded cyclic factor=RECON_U dim=1
#pragma HLS ARRAY_PARTITION variable=sv_norms_1_padded cyclic factor=RECON_U dim=1

    for (int n = 0; n < num_images; n++) {
#pragma HLS LOOP_TRIPCOUNT min=2601 max=2601 avg=2601
#pragma HLS DATAFLOW
        xword_t x_pack[X_PACKS];
#pragma HLS RESOURCE variable=x_pack core=RAM_2P_BRAM

        ap_fixed<24,14> internal_norm = load_and_calc_norm(in_stream, x_pack);
        compute_and_output(x_pack, internal_norm, out_stream, n, num_images);
    }
}
