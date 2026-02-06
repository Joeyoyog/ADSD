#include "Classifier.h"
#include "./svs.h"
#include "./bias.h"
#include "./alphas.h"

double classify(ap_fixed<8,7> x[IMG_SIZE]) {
	ap_fixed<32,16> sum = 0.0;

    classify_label2:for (int i = 0; i < NSV; i++) {
        // 32 bits total, 24 bits for the integer part to prevent overflow
        ap_fixed<32,24> l2Squared_fixed = 0;

        classify_label1:for (int j = 0; j < IMG_SIZE; j++) {
            ap_fixed<8,7> xi = svs[i * IMG_SIZE + j];
            ap_fixed<8,7> diff = xi - x[j];

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
