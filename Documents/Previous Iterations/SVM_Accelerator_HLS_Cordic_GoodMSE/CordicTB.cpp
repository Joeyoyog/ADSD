/*
#include "Exp.h"
#include <math.h>
#include <stdio.h>
#include <stdint.h>

//Using PRNG(pseudo random number generator
//(xorshift32) so we dont need to rely on <random> which is slow
//state is a 32 bit integer, outputs a new 32 bit integer for each run
//uses a series of shifts and xors to compute a "random" number
static uint32_t rng_state = 1u;
static uint32_t xorshift32() {
		uint32_t x = rng_state;
		x ^= x << 13; //shift x left by 13 and XOR it on itself
		x ^= x >> 17;
		x ^= x << 5;
		rng_state = x;
		return x;
}

int main() {
	//number of samples
	const int N = 100000;

	//derive fractional bits from teh x_t type (works for ap_fixed)
	const int FRAC_BITS = x_t::width - x_t::iwidth; //x_t total number of bits - x_t number of integer bit
	//so the testbench always matches the chosen fixed point format
	const int SCALE = 1 << FRAC_BITS; //gives the step size of the fixed point representation to know what to scale down by
	// if x_t = ap_fixed<16,4> then FRAC_BITS = 12 and SCALE = 4096

	//----case testing------
	auto run_case = [&](double xd, const char* name) {
		x_t x = x_t(xd);
		out_t y_fx = compute_exp(x);
		double y_hat = (double)y_fx;
		double y_ref = exp(xd);
		double err = y_ref - y_hat;

		printf("[%s]\n", name);
		printf(" x = %.12f\n", xd);
		printf(" y_hat = %.15e\n", y_hat);
		printf(" y_ref = %.15e\n", y_ref);
		printf(" err = %.15e\n", err);
	};


	run_case(0.0, "x=0 (expect 1.0)");
	run_case(-0.6931471805599453, "x=-ln2 (expect0.5)");
	run_case(-8.0, "x=-8 (expect ~3.354626e-4");






	//Quantized grid over [-8,0]
	//raw is an integer representation of x * 2^FRAC_BITS
	//min_raw is the raw integer corresponding exactly to x = -8
	const int min_raw = -8 * SCALE;
	const int range = 8 * SCALE + 1;

	double sum_e2 = 0.0; //sum of squared error
	double sum_e2_2 = 0.0; //sum of squared error^2 for variance

	double max_abs_err = 0.0;

	for (int k = 0; k < N; k++){
		//int raw = min_raw + (rand % range); a rand int between [-8,0]
		//double x = raw / SCALE; converts it to real value on fixed point grid
		int raw = min_raw + (int)(xorshift32() % (uint32_t)range);

		//convert to fixed point input
		double xd = (double)raw / (double)SCALE;
		x_t x = x_t(xd);

		//DUT
		out_t y_hat_fx = compute_exp(x);

		//reference
		double y_ref = exp(xd);

		//convert output to double for comparison
		double y_hat = (double)y_hat_fx;

		//get error difference
		double err = y_ref - y_hat;
		double e2 = err * err;
		//square the error, add it to the sum
		sum_e2 += e2;
		sum_e2_2 += e2 * e2;

		//tracking the worst case error
		double abs_err = (err >= 0.0) ? err : -err;
		if (abs_err > max_abs_err) max_abs_err = abs_err;
	}

	double mse = sum_e2 / (double)N;

	//estimate variance of e2 samples and standard error of the mean MSE
	double mean_e2 = mse;
	double var_e2 = 0.0;
	if (N > 1) {
		var_e2 = (sum_e2_2 - (sum_e2 * sum_e2) / (double)N) / (double)(N-1);
		if (var_e2 < 0.0) var_e2 = 0.0;
	}
	double se = sqrt(var_e2 / (double)N);

	//one sided 95% upper confidence on the mean:
	// for large N z_0.95 = 1.645
	double mse_upper_95 = mse + 1.645 * se;


	//tests

	printf("Exp CORDIC verification over quantized uniform x in [-8,0]\n");
	printf("Samples N                  : %d\n", N);
	printf("x_t frac bits              : %d (step = 2^-%d)\n", FRAC_BITS, FRAC_BITS);
	printf("MSE                        : %.15e\n", mse);
	printf("MSE upper 95%% bound       : %.15e\n", mse_upper_95);
	printf("MSE abs error              : %.15e\n", max_abs_err);

	//coursework check
	const double THRESH = 2.4e-11;
	if (mse_upper_95 < THRESH) {
		printf("PASS: upper 95%% MSE bound < 2.4e-11\n");
		return 0;
	} else {
		printf("FAIL: upper 95%% MSE bound >= 2.4e-11\n");
		return 1;
	}
}

*/





