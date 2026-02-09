/*
#include "Classifier.h"  // THIS MUST BE LINE 1
#include <iostream>
#include <fstream>
#include <cstdio>

// REMOVED: #include "test_data.h" to prevent "out of memory" compiler error
#include "ground_truth.h"

#define SIM_IMGS 2601 //2601 // Set to 100 for faster simulation

int main() {
    std::ofstream scoresF("scores.txt");

    // Open the text file for reading
    std::ifstream inputFile("test_data.txt");
    if (!inputFile.is_open()) {
        printf("Error: Could not open test_data.txt\n");
        return 1;
    }

    ap_fixed<8,7> x[IMG_SIZE];
    int predictions[SIM_IMGS];
    int correct = 0;
    ap_fixed<8,7> temp_val;

    printf("Starting C-Simulation with %d images...\n", SIM_IMGS);

    for (int i = 0; i < SIM_IMGS; i++) {
        // Load image from text file instead of header array
        for (int j = 0; j < IMG_SIZE; j++) {
            if (inputFile >> temp_val) {
                x[j] = (double)temp_val;
            }
        }

        // Call the HLS Top Function
        double score = classify(x);
        scoresF << score << std::endl;

        // Thresholding
        predictions[i] = (score < 0) ? 0 : 1;

        // Check against ground truth
        if (predictions[i] == ground_truth[i]) {
            correct++;
        }

        //if (i % 10 == 0) printf("Processed %d images...\n", i);
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
*/
