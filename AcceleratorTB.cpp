#include "Classifier.h"
#include <iostream>
#include <fstream>
#include <cstdio>
#include <ap_int.h>

#include "ground_truth.h"

#define SIM_IMGS 2601

int main() {
    std::ofstream scoresF("scores.txt");
    std::ifstream inputFile("test_data.txt");

    if (!inputFile.is_open()) {
        printf("Error: Could not open test_data.txt\n");
        return 1;
    }

    ap_uint<64> x_packed[IMG_SIZE/8];
    int predictions[SIM_IMGS];
    int correct = 0;
    double temp_val_read;

    printf("Starting C-Simulation with ARM Pre-processing...\n");

    for (int i = 0; i < SIM_IMGS; i++) {

        // --- ARM PRE-PROCESSING START ---
        // We calculate the Norm HERE, in software.
        ap_fixed<24,14> calculated_norm = 0;

        for (int j = 0; j < IMG_SIZE / 8; j++) {
            ap_uint<64> packet = 0;

            for (int p = 0; p < 8; p++) {
                if (inputFile >> temp_val_read) {
                    ap_fixed<8,7> pixel = (ap_fixed<8,7>)temp_val_read;

                    // 1. Pack bits for FPGA
                    packet.range(p*8 + 7, p*8) = pixel(7, 0);

                    // 2. ARM Calculation: Accumulate Square
                    // The CPU does this extremely fast!
                    ap_fixed<16,14> sq = pixel * pixel;
                    calculated_norm += sq;
                }
            }
            x_packed[j] = packet;
        }
        // --- ARM PRE-PROCESSING END ---

        // Call Hardware with BOTH packed data AND pre-calculated norm
        double score = classify(x_packed, calculated_norm);

        scoresF << score << std::endl;

        predictions[i] = (score < 0) ? 0 : 1;
        if (predictions[i] == ground_truth[i]) {
            correct++;
        }
    }

    inputFile.close();
    scoresF.close();

    double accuracy = (double)correct / SIM_IMGS;
    printf("Classification Accuracy: %f\n", accuracy);

    // Confusion Matrix
    double CM[2][2] = {0, 0, 0, 0};
    for (int i = 0; i < SIM_IMGS; i++) {
        CM[ground_truth[i]][predictions[i]]++;
    }

    printf("Confusion Matrix (%d test points):\n", SIM_IMGS);
    printf("%f, %f\n", CM[0][0]/SIM_IMGS, CM[0][1]/SIM_IMGS);
    printf("%f, %f\n", CM[1][0]/SIM_IMGS, CM[1][1]/SIM_IMGS);


    // HLS TB Requirement
    if (accuracy > 0.95) {
        printf("Test Passed!\n");
        return 0;
    } else {
        printf("Test Failed!\n");
        return 1;
    }
}
