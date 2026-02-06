#include "Exp.h"
//#include <cmath>
//#include "ap_fixed.h"
//#include <math.h>

//typedef ap_fixed<16,4>	x_t;	//input exponent in [-8,0]
typedef ap_fixed<32,8>	acc_t;	//cordic state
//typedef ap_ufixed<32,1>	out_t;	//exp(x) in (0,1]
typedef ap_fixed<32,8>	lut_t;	//LUT type

static const int Iteration_Schedule[] = {1,2,3,4,4,5,6,7,8,9,10,11,12,14,14,15,16,17,18,19,20};//Trade off to find between between pre-storing the values and calculating the content
static const int Num_Iterations = sizeof(Iteration_Schedule)/sizeof(Iteration_Schedule[0]);

static const lut_t ATANH_LUT[Num_Iterations] = {
		//values
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
		lut_t(0.000061035156325791221), //atanh(2^-14)
		lut_t(0.000061035156325791221), //atanh(2^-14)
		lut_t(0.000030517578134473901), //atanh(2^-15)
		lut_t(0.0000152587890636842377), //atanh(2^-16)
		lut_t(0.00000762939453139839346), //atanh(2^-17)
		lut_t(0.00000381469726564350372), //atanh(2^-18)
		lut_t(0.00000190734863281481296), //atanh(2^-19)
		lut_t(0.000000953674316406539121) //atanh(2^-20)
};

static const acc_t INV_K = acc_t(1.0/1.20513635); //pre-scale constant
static const double K_GAIN = 1.20513635; //replace with K was 1.0

out_t compute_exp(x_t x){
	if (x < x_t(-8.0)) return out_t(0.0);

	acc_t X = INV_K;
	acc_t Y = 0.0;
	acc_t Z = x;

	for (int n = 0; n < Num_Iterations; n++){
		int i = Iteration_Schedule[n];
		bool z_nonneg = (Z >= 0);

		//scale by 2^-i using shifts
		acc_t Ysh = (Y >> i);
		acc_t Xsh = (X >> i);

		acc_t Xn, Yn, Zn;
		if(z_nonneg) {
			Xn = X + Ysh;
			Yn = Y + Xsh;
			Zn = Z - ATANH_LUT[n];
		} else {
			Xn = X - Ysh;
			Yn = Y - Xsh;
			Zn = Z + ATANH_LUT[n];
		}

		X = Xn; Y = Yn; Z = Zn;
	}
	out_t out = out_t(X+Y);
	return out;
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
