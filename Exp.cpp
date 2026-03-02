#include "Exp.h"
#include "ap_int.h"
#include "exp_lut.h"

// LUT-based exp approximation (linear interpolation)
// x_t  = ap_fixed<16,4>  (Q4.12), valid input range [-8,0]
// out_t= ap_ufixed<20,1> (Q1.19), output range [0,1]
out_t compute_exp(x_t x) {
#pragma HLS INLINE

    // Match your clamp behaviour
    if (x < x_t(-8.0)) return out_t(0);
    if (x >= x_t(0.0)) return out_t(1);

    // u = x + 8 in [0,8)
    x_t u = x + x_t(8.0);

    // Raw fixed-point bits (Q4.12). u is non-negative here.
    ap_uint<16> u_raw = u.range(15,0);

    // Index into LUT: step = 8/EXP_LUT_N, implemented via shift
    const ap_uint<16> idx = (ap_uint<16>)(u_raw >> EXP_LUT_SHIFT);
    if (idx >= EXP_LUT_N) return out_t(1);   // safety for x very close to 0

    // Fraction within LUT step: frac_raw in [0 .. 2^SHIFT-1]
    const ap_uint<16> frac_raw = u_raw & ((1u << EXP_LUT_SHIFT) - 1u);

    // Read packed (dy,y0): both in Q1.19 integer codes
    exp_pair_t e = EXP_LUT[idx];
    ap_uint<20> y0_raw = e.range(19,0);
    ap_uint<20> dy_raw = e.range(39,20);

    // Linear interpolation: y = y0 + dy * frac / 2^SHIFT
    // prod width: 20+SHIFT <= 32 easily for SHIFT up to ~12
    ap_uint<32> prod = (ap_uint<32>)dy_raw * (ap_uint<32>)frac_raw;
    ap_uint<20> inc_raw = (ap_uint<20>)(prod >> EXP_LUT_SHIFT);

    ap_uint<21> y_raw = (ap_uint<21>)y0_raw + (ap_uint<21>)inc_raw; // small headroom

    out_t y;
    y.range(19,0) = y_raw.range(19,0);
    return y;
    //return 0;
}
