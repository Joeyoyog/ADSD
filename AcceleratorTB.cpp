#include "Classifier.h"  // THIS MUST BE LINE 1
#include <iostream>
#include <fstream>
#include <cstdio>
#include <ap_int.h>      // <--- NEW: Required for ap_uint

// REMOVED: #include "test_data.h" to prevent "out of memory" compiler error
#include "ground_truth.h"

#define SIM_IMGS 2601

int main() {
    std::ofstream scoresF("scores.txt");

    // Open the text file for reading
    std::ifstream inputFile("test_data.txt");
    if (!inputFile.is_open()) {
        printf("Error: Could not open test_data.txt\n");
        return 1;
    }

    // UPDATED: Allocate memory for packed data (98 words instead of 784 pixels)
    ap_uint<64> x_packed[IMG_SIZE/8];

    int predictions[SIM_IMGS];
    int correct = 0;

    // Temp variable to read raw numbers from the file
    double temp_val_read;

    printf("Starting C-Simulation with %d images...\n", SIM_IMGS);

    for (int i = 0; i < SIM_IMGS; i++) {

        // --- NEW DATA LOADING LOGIC (PACKING) ---
        // Iterate through the 98 packets
        for (int j = 0; j < IMG_SIZE / 8; j++) {
            ap_uint<64> packet = 0;

            // For each packet, read 8 pixels from the file
            for (int p = 0; p < 8; p++) {
                if (inputFile >> temp_val_read) {
                    // Convert file data to fixed point
                    ap_fixed<8,7> pixel = (ap_fixed<8,7>)temp_val_read;

                    // Pack bits: Pixel 0 goes to bits [7:0], Pixel 1 to [15:8], etc.
                    // This matches the 'unpacking' logic in the hardware.
                    packet.range(p*8 + 7, p*8) = pixel(7, 0);
                }
            }
            // Store the packed 64-bit integer
            x_packed[j] = packet;
        }

        // Call the HLS Top Function with the PACKED array
        double score = classify(x_packed);
        scoresF << score << std::endl;

        // Thresholding
        predictions[i] = (score < 0) ? 0 : 1;

        // Check against ground truth
        if (predictions[i] == ground_truth[i]) {
            correct++;
        }
    }

    inputFile.close();
    scoresF.close();

    // Results Calculation
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
        printf("Test Failed! Accuracy too low.\n");
        return 1;
    }
}
