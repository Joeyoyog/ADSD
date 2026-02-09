#include "Exp.h"

// Types
typedef ap_fixed<26,5>	acc_t;
typedef ap_fixed<23,5> coef_t;
typedef ap_fixed<19,1> lut_t;

// Constants
static const coef_t LN2 = coef_t(0.6931471805599453);
static const coef_t INV_LN2 = coef_t(1.4426950408889634);
static const acc_t K_GAIN = acc_t(1.2074970675756439159);

// Helper function: Must be INLINED to disappear into logic
template<typename T>
static int floor_to_int(T v) {
    #pragma HLS INLINE
    int iv = (int)v;
    if (v < 0 && v != (T)iv) iv -= 1;
    return iv;
}

out_t compute_exp(x_t x){
    // FIX 1: INLINE the function so it merges into the Classifier loop
    #pragma HLS INLINE


    // FIX 2: Move Tables INSIDE and use literals.
    // This forces HLS to implement them as Logic (Wires), not Memory (BRAM).
    const int Iteration_Schedule[17] = {1,2,3,4,4,5,6,7,8,9,10,11,12,13,13,14,15};
    const lut_t ATANH_LUT[17] = {
        lut_t(0.54930614433405489), lut_t(0.25541281188299536), lut_t(0.12565721414045303),
        lut_t(0.062581571477003009), lut_t(0.062581571477003009), lut_t(0.031260178490666993),
        lut_t(0.015626271752052213), lut_t(0.0078126589515404212), lut_t(0.0039062698683968262),
        lut_t(0.0019531274835325502), lut_t(0.00097656281044103594), lut_t(0.00048828128880511288),
        lut_t(0.00024414062985063861), lut_t(0.000122070313106329793), lut_t(0.000122070313106329793),
        lut_t(0.000061035156325791221), lut_t(0.000030517578134473901)
    };

    static const coef_t MLN2[13] = {
    		coef_t(0.0),
    		coef_t(0.6931471805599453),
    		coef_t(1.3862943611198906),
    		coef_t(2.0794415416798359),
    		coef_t(2.7725887222397811),
    		coef_t(3.4657359027997265),
    		coef_t(4.1588830833596718),
    		coef_t(4.8520302639196171),
    		coef_t(5.5451774444795625),
    		coef_t(6.2383246250395078),
    		coef_t(6.9314718055994530),
    		coef_t(7.6246189861593983),
    		coef_t(8.3177661667193436)
    };

    // FIX 3: Partition Completely (Explode the array into 17 independent wires)
	#pragma HLS ARRAY_PARTITION variable=MLN2 complete dim=1
    #pragma HLS ARRAY_PARTITION variable=ATANH_LUT complete dim=1
    #pragma HLS ARRAY_PARTITION variable=Iteration_Schedule complete dim=1

    // u = -x in [0,8]
    coef_t u = coef_t(0) - coef_t(x);

    // m = ceil(u/ln2) computed by thresholding (comparators only)
    // m in [0..12], then k = -m
    int m = 0;

    if (u > coef_t(0)) {
            // Find smallest m such that u <= m*ln2
            // (This is a comparator chain; no multiplier.)
            if      (u <= MLN2[1])  m = 1;
            else if (u <= MLN2[2])  m = 2;
            else if (u <= MLN2[3])  m = 3;
            else if (u <= MLN2[4])  m = 4;
            else if (u <= MLN2[5])  m = 5;
            else if (u <= MLN2[6])  m = 6;
            else if (u <= MLN2[7])  m = 7;
            else if (u <= MLN2[8])  m = 8;
            else if (u <= MLN2[9])  m = 9;
            else if (u <= MLN2[10]) m = 10;
            else if (u <= MLN2[11]) m = 11;
            else                    m = 12; // covers up to x=-8 safely
        }


    // FIX 4: Use a Flag instead of Early Return to keep flow linear
    bool is_small = (x < x_t(-8.0));

    /*coef_t t = coef_t(x) * INV_LN2;
    int k = (t >= 0) ? floor_to_int(t + coef_t(0.5)) : floor_to_int(t - coef_t(0.5));
    if ( k < -12) k = -12;
    if (k > 0) k = 0;*/

    //acc_t r = acc_t(x) - acc_t(k) * acc_t(LN2);
    // k = -m is in [-12..0]
    // r = x - k*ln2 = x + m*ln2  (no multiply, just LUT + add)
    acc_t r = acc_t(x) + acc_t(MLN2[m]);
    //r = acc_t(x) - acc_t(k) * acc_t(LN2);

    acc_t X = K_GAIN;
    acc_t Y = 0.0;
    acc_t Z = r;

    // FIX 5: Use literal '17' for loop bound
    for (int n = 0; n < 17; n++){
        //#pragma HLS UNROLL // This will now succeed because we solved the port conflict
		#pragma HLS PIPELINE II=1
        int i = Iteration_Schedule[n];
        bool z_nonneg = (Z >= 0);

        acc_t Ysh = (Y >> i);
        acc_t Xsh = (X >> i);

        acc_t Xn, Yn, Zn;
        if(z_nonneg) {
            Xn = X + Ysh; Yn = Y + Xsh; Zn = Z - ATANH_LUT[n];
        } else {
            Xn = X - Ysh; Yn = Y - Xsh; Zn = Z + ATANH_LUT[n];
        }
        X = Xn; Y = Yn; Z = Zn;
    }
    acc_t exp_r = X + Y;
    acc_t scaled;
        switch (m) {
            case 0:  scaled = exp_r;        break;
            case 1:  scaled = (exp_r >> 1); break;
            case 2:  scaled = (exp_r >> 2); break;
            case 3:  scaled = (exp_r >> 3); break;
            case 4:  scaled = (exp_r >> 4); break;
            case 5:  scaled = (exp_r >> 5); break;
            case 6:  scaled = (exp_r >> 6); break;
            case 7:  scaled = (exp_r >> 7); break;
            case 8:  scaled = (exp_r >> 8); break;
            case 9:  scaled = (exp_r >> 9); break;
            case 10: scaled = (exp_r >> 10); break;
            case 11: scaled = (exp_r >> 11); break;
            default: scaled = (exp_r >> 12); break;
        }
    //acc_t scaled = (k < 0) ? (exp_r >> (-k)) : (exp_r << k);

    return is_small ? out_t(0.0) : out_t(scaled);

}


