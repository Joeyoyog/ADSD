#include "Exp.h"

//typedef ap_fixed<16,4>	x_t;	//input exponent in [-8,0]
typedef ap_fixed<32,8>	acc_t;	//cordic state
typedef ap_fixed<40,8> coef_t;
//typedef ap_ufixed<32,1>	out_t;	//exp(x) in (0,1]
typedef ap_fixed<40,2>	lut_t;	//LUT type

//constants needed for later
static const coef_t LN2 = coef_t(0.6931471805599453);
static const coef_t INV_LN2 = coef_t(1.4426950408889634);
static const int Iteration_Schedule[] = {1,2,3,4,4,5,6,7,8,9,10,11,12,13,13,14,15};
static const int Num_Iterations = sizeof(Iteration_Schedule)/sizeof(Iteration_Schedule[0]);

static const lut_t ATANH_LUT[Num_Iterations] = {
		lut_t(0.54930614433405489), //atanh(2^-1)
		lut_t(0.25541281188299536), //atanh(2^-2)
		lut_t(0.12565721414045303), //atanh(2^-3)
		lut_t(0.062581571477003009), //atanh(2^-4)
		lut_t(0.062581571477003009), //atanh(2^-4)
		lut_t(0.031260178490666993), //atanh(2^-5)
		lut_t(0.015626271752052213), //atanh(2^-6)
		lut_t(0.0078126589515404212), //atanh(2^-7)
		lut_t(0.0039062698683968262), //atanh(2^-8)
		lut_t(0.0019531274835325502), //atanh(2^-9)
		lut_t(0.00097656281044103594), //atanh(2^-10)
		lut_t(0.00048828128880511288), //atanh(2^-11)
		lut_t(0.00024414062985063861), //atanh(2^-12)
		lut_t(0.000122070313106329793), //atanh(2^-13)
		lut_t(0.000122070313106329793), //atanh(2^-13)
		lut_t(0.000061035156325791221), //atanh(2^-14)
		lut_t(0.000030517578134473901) //atanh(2^-15)

};

static const acc_t K_GAIN = acc_t(1.2074970675756439159); //for 17 iterations, offset accumulated by the scaling during the shift and adding phase
//it is the sum of 1/sqrt(1-2^(-2*i_n))

//this function rounds 3.7 -> 3 and -3.7 -> 4
template<typename T>//works for any type
static int floor_to_int(T v) {
	int iv = (int)v; //converts v to an int by truncating toward 0 so 2.9 -> 2 -2.9-> -2
	if (v < 0 && v != (T)iv) iv -= 1; //if V was negative and a fraction, subtract 1 to correct it for the proper floor
	return iv;
}

out_t compute_exp(x_t x){
	if (x < x_t(-8.0)) return out_t(0.0); //catch statement

	// range reduction: x = k*ln2 + r, exp(x) = 2^k*exp(r)
	coef_t t = coef_t(x) * INV_LN2; //scale down x
	int k = floor_to_int(t); //round
	if ( k < -12) k = -12; //stops the value of K from becoming too negative which would go out of the bounds of the bits
	//initially we want [-8,0] but when we divide by ln2 that becomes [-12,0]
	if (k > 0) k = 0;
	acc_t r = acc_t(x) - acc_t(k) * acc_t(LN2); //r = x-k*ln2 r = [0, 0.6931), which is much smaller and avoids overflow compared to [-8,0]
	//end range reduction

	acc_t X = K_GAIN;
	acc_t Y = 0.0;
	acc_t Z = r;

		compute_exp_label0:for (int n = 0; n < Num_Iterations; n++){
		int i = Iteration_Schedule[n];
		bool z_nonneg = (Z >= 0); //direction to move is based on the sign of Z
// if z is positive subtract a positive atanh step to bring it down toward 0, if negative do the opposite to bring up towards 0
		//scale by 2^-i using shifts
		acc_t Ysh = (Y >> i); // Ysh = Y/2^i
		acc_t Xsh = (X >> i);

		acc_t Xn, Yn, Zn; //compute next state variables based on direction
		if(z_nonneg) {\
			Xn = X + Ysh;
			Yn = Y + Xsh;
			Zn = Z - ATANH_LUT[n]; //reduce Z by a fixed table entry (atanh(2^-i)
			//normal cordic uses angle table but hyperbolic cordic uses atanh
		} else {
			Xn = X - Ysh;
			Yn = Y - Xsh;
			Zn = Z + ATANH_LUT[n];
		}

		X = Xn; Y = Yn; Z = Zn;
	}
	acc_t exp_r = X + Y;
	acc_t scaled = (k < 0) ? (exp_r >> (-k)) : (exp_r << k); //scale the output back to its original value by scaling up by K
	return out_t(scaled);
}



















/*double compute_exp(double val) {
    return exp(val);
}*/

/*
static const int Iteration_Schedule[] = {1,2,3,4,5,6,7,8,9,10,11,12,14,14,15};

static const int Num_Iterations = sizeof(Iteration_Schedule)/sizeof(Iteration_Schedule[0]);

double cordic(double val) {
	if(val < -8.0) return 0.0;

	//this section is to do a range reduction (read more into it) which is usually necessary when the range is more than -1 to 1
	// it implements an integer k, remainder r, then combine with exp(val) = 2^k * exp(r)
	//LN2 is ln(2) and  val/LN2 rounded tells you how many iterations will fit into LN2
	//r = val - k*LN2 is the remainder, we pass this into the cordic because its small and less likely to blow up
	//then multiply by 2^k to recover the actual value
	//for ex, if val = -5, val/LN2 = -7.213, k = round(-7.213) = -7, r=-5 - (-7)*0.6931... = -0.148
	//then compute exp(-0.148) then scale by 2^-7 so e^-5 = 2^-7*e^-0.148

	const double LN2 = 0.693147180559945309417232121458176568;
	int k = (int)std::llround(val / LN2);
	double r = val - (double)k * LN2;

	double atanh_table[Num_Iterations];
	double K = 1.0;

	for(int n=0; n<Num_Iterations; n++){
		int i = Iteration_Schedule[n];
		double pow2 = std::ldexp(1.0, -i); //2^=-i
		atanh_table[n] = std::atanh(pow2);	// atanh(2^-i)
		K *= 1.0 / std::sqrt(1.0 -pow2*pow2);	// gain
	}
	double X = 1.0 / K;
	double Y = 0.0;
	double Z = r;

	for (int n = 0; n<Num_Iterations;n++){
		int i = Iteration_Schedule[n];
		double shift = std::ldexp(1.0, -i);
		double d = (Z >= 0.0) ? 1.0 : -1.0;

		double Xn = X + d * Y * shift;
		double Yn = Y + d * X * shift;
		double Zn = Z - d * atanh_table[n];

		X = Xn;
		Y = Yn;
		Z = Zn;
	}

	double exp_r = X + Y;

	return std::ldexp(exp_r, k);
}*/
