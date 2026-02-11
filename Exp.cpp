#include "Exp.h"
#include "ap_int.h"
#include "ap_fixed.h"

// Keep truncation + wrap to avoid extra rounding/sat logic (helps timing)
typedef ap_fixed<26,4, AP_TRN, AP_WRAP> acc_t;
typedef ap_fixed<26,5, AP_TRN, AP_WRAP> coef_t;
typedef ap_fixed<26,2, AP_TRN, AP_WRAP> lut_t;

// K for schedule: {1,2,3,4,4,5,6,7,8,9,10,11,12,13,13,14,15,16,17,18}
static const acc_t K_GAIN = acc_t("1.2074970677601436");

#define STEP(X, Y, Z, SH, A)                 \
    do {                                     \
        bool z_neg = (Z < 0);                \
        acc_t x_sh = (X >> (SH));            \
        acc_t y_sh = (Y >> (SH));            \
        if (z_neg) {                         \
            X -= y_sh;                       \
            Y -= x_sh;                       \
            Z += (A);                        \
        } else {                             \
            X += y_sh;                       \
            Y += x_sh;                       \
            Z -= (A);                        \
        }                                    \
    } while(0)

out_t compute_exp(x_t x) {
#pragma HLS INLINE
// Force the scheduler to *spread* work => shorter critical path per cycle
#pragma HLS LATENCY min=9 max=9
// Optional (throughput). If this causes issues in your Vivado HLS version, remove it.
#pragma HLS PIPELINE II=1

    // ln2 multiples for range reduction
    static const coef_t MLN2[13] = {
        "0.0", "0.69314718056", "1.38629436112", "2.07944154168",
        "2.77258872224", "3.46573590280", "4.15888308336", "4.85203026392",
        "5.54517744448", "6.23832462504", "6.93147180560", "7.62461898616", "8.31776616672"
    };
#pragma HLS ARRAY_PARTITION variable=MLN2 complete

    // clamp small
    if (x < x_t(-8.0)) return out_t(0);

    // u = -x in [0..8]
    coef_t u = coef_t(0) - coef_t(x);

    // m = ceil(u/ln2) using comparator tree (fast, no multiply)
    ap_uint<4> m;
    if (u <= MLN2[6]) {
        if (u <= MLN2[3]) {
            if      (u <= MLN2[1]) m = (u > 0) ? 1 : 0;
            else if (u <= MLN2[2]) m = 2;
            else                   m = 3;
        } else {
            if      (u <= MLN2[4]) m = 4;
            else if (u <= MLN2[5]) m = 5;
            else                   m = 6;
        }
    } else {
        if (u <= MLN2[9]) {
            if      (u <= MLN2[7]) m = 7;
            else if (u <= MLN2[8]) m = 8;
            else                   m = 9;
        } else {
            if      (u <= MLN2[10]) m = 10;
            else if (u <= MLN2[11]) m = 11;
            else                    m = 12;
        }
    }

    // r = x + m*ln2  (brings input into about [0, ln2))
    acc_t X = K_GAIN;
    acc_t Y = 0;
    acc_t Z = acc_t(x) + acc_t(MLN2[m]);

    // 20 CORDIC steps: shifts 1..18, with repeats at 4 and 13
    STEP(X,Y,Z, 1,  lut_t("0.5493061443340549"));
    STEP(X,Y,Z, 2,  lut_t("0.2554128118829954"));
    STEP(X,Y,Z, 3,  lut_t("0.1256572141404530"));
    STEP(X,Y,Z, 4,  lut_t("0.0625815714770030"));
    STEP(X,Y,Z, 4,  lut_t("0.0625815714770030")); // repeat
    STEP(X,Y,Z, 5,  lut_t("0.0312601784906670"));
    STEP(X,Y,Z, 6,  lut_t("0.0156262717520522"));
    STEP(X,Y,Z, 7,  lut_t("0.0078126589515404"));
    STEP(X,Y,Z, 8,  lut_t("0.0039062698683968"));
    STEP(X,Y,Z, 9,  lut_t("0.0019531274835326"));
    STEP(X,Y,Z,10,  lut_t("0.0009765628104410"));
    STEP(X,Y,Z,11,  lut_t("0.0004882812888051"));
    STEP(X,Y,Z,12,  lut_t("0.0002441406298506"));
    STEP(X,Y,Z,13,  lut_t("0.0001220703131063"));
    STEP(X,Y,Z,13,  lut_t("0.0001220703131063")); // repeat
    STEP(X,Y,Z,14,  lut_t("0.0000610351563258"));
    STEP(X,Y,Z,15,  lut_t("0.0000305175781345"));
    STEP(X,Y,Z,16,  lut_t("0.0000152587890637"));
    STEP(X,Y,Z,17,  lut_t("0.0000076293945314"));
    STEP(X,Y,Z,18,  lut_t("0.0000038146972656"));

    acc_t exp_r  = X + Y;
    acc_t scaled = exp_r >> m;   // multiply by 2^{-m}

    return out_t(scaled);
}
