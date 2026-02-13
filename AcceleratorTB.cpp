#include "Classifier.h"
#include <iostream>
#include <fstream>
#include <cstdio>
#include <ap_int.h>
#include <hls_stream.h> // Required for streams
#include "ap_axi_sdata.h"

#include "ground_truth.h"

#define SIM_IMGS 2601

int main() {
    std::ofstream scoresF("scores.txt");
    std::ifstream inputFile("test_data.txt");

    if (!inputFile.is_open()) {
        printf("Error: Could not open test_data.txt\n");
        return 1;
    }

    // CHANGE 1: Use HLS Stream instead of array
    hls::stream<axis_t> in_stream;

    // CHANGE 2: Result variable (passed by reference)
    ap_fixed<32,16> result_out;

    int predictions[SIM_IMGS];
    int correct = 0;
    double temp_val_read;

    printf("Starting C-Simulation with Stream Interface & ARM Pre-processing...\n");

    for (int i = 0; i < SIM_IMGS; i++) {

        // --- ARM PRE-PROCESSING START ---
        ap_fixed<24,14> calculated_norm = 0;

        // Loop over packets (IMG_SIZE / 8)
        for (int j = 0; j < IMG_SIZE / 8; j++) {
            ap_uint<64> packet_data = 0;

            // Loop over pixels in packet (8)
            for (int p = 0; p < 8; p++) {
                if (inputFile >> temp_val_read) {
                    ap_fixed<8,7> pixel = (ap_fixed<8,7>)temp_val_read;

                    // 1. Pack bits
                    packet_data.range(p*8 + 7, p*8) = pixel(7, 0);

                    // 2. ARM Calculation: Accumulate Square
                    ap_fixed<16,14> sq = pixel * pixel;
                    calculated_norm += sq;
                }
            }

            // CHANGE 3: Write packet to Stream instead of Array
            axis_t axis_packet;
            axis_packet.data = packet_data;

            // Optional: Set Side-Channels (Good practice for AXI Stream)
            axis_packet.keep = -1; // Keep all bytes
            axis_packet.strb = -1;
            // TLAST: Asserted on the very last packet of the image
            axis_packet.last = (j == (IMG_SIZE/8) - 1) ? 1 : 0;

            in_stream.write(axis_packet);
        }
        // --- ARM PRE-PROCESSING END ---

        // CHANGE 4: Call Hardware with Stream and Reference Output
        classify(in_stream, calculated_norm, result_out);

        // Convert ap_fixed result to double for scoring
        double score = (double)result_out;

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
