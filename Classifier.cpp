#include "Classifier.h"
#include "./svs.h"
#include "./bias.h"
#include "./alphas.h"

double classify(ap_fixed<8,7> x[IMG_SIZE]) {

	#pragma HLS INTERFACE m_axi port=x offset=slave bundle=gmem depth=784
    #pragma HLS INTERFACE s_axilite port=return bundle=control

	ap_fixed<32,16> sum = 0.0;

	//The objective is to use the 32-bits AXI interface to make it transport 4 pixels (of 8 bits) at a time
	// Local buffer for the input image and partitioning. T
	// This splits x_local into 4 separate RAM blocks
	ap_fixed<8,7> x_local[IMG_SIZE];
	#pragma HLS ARRAY_PARTITION variable=x_local cyclic factor=4 dim=1
	//We copy the input in x_local
	load_image_loop: for (int i = 0; i < IMG_SIZE; i++) {//785 cycles
	        #pragma HLS PIPELINE
	        x_local[i] = x[i];
	    }

	//We also do partition on svs
	#pragma HLS ARRAY_PARTITION variable=svs cyclic factor=4 dim=1

    classify_label2:for (int i = 0; i < NSV; i++) {
        // 32 bits total, 24 bits for the integer part to prevent overflow
        ap_fixed<32,24> l2Squared_fixed = 0;

        classify_label1:for (int j = 0; j < IMG_SIZE; j++) {
			#pragma HLS UNROLL factor=4// "factor=4" forces HLS to create 4 parallel logic lanes (4 roads)
			#pragma HLS PIPELINE II=1// increases the Traffic Speed. It ensures that a new group of 4 pixels enters the lanes every clock cycle (Initiation Interval = 1)

            ap_fixed<8,7> xi = svs[i * IMG_SIZE + j];
            ap_fixed<8,7> xj = x_local[j];             // Reads from x_local banks
            ap_fixed<8,7> diff = xi - xj;

            // The product of two 8-bit numbers fits into 16 bits.
            // We add it to our 32-bit accumulator.
            l2Squared_fixed += (ap_fixed<22,14>)(diff * diff);
        }

        // Convert to double only for the transcendental 'exp' function
        const ap_fixed<16,4> gamma = ap_fixed<16,4>(-0.001);
        ap_fixed<22,1> K = (ap_fixed<22,1>)compute_exp(gamma * l2Squared_fixed);
        sum += (ap_fixed<32,16>)(alphas[i] * K);
    }

    return (double)(sum + bias[0]);
}
