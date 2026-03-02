/*
#include "Classifier.h"
#include <iostream>
#include <fstream>
#include <vector>
#include <cstdio>
#include <ap_int.h>
#include <hls_stream.h>
#include "ap_axi_sdata.h"

// Note: Ensure ground_truth.h contains the correct array for verification
#include "ground_truth.h"

#define SIM_IMGS 2601

int main() {
    // 1. File Setup
    std::ofstream scoresF("scores.txt");
    std::ifstream inputFile("test_data.txt");

    if (!inputFile.is_open()) {
        printf("Error: Could not open test_data.txt\n");
        return 1;
    }

    // 2. Stream Declaration
    hls::stream<axis_t> in_stream("input_stream");
    hls::stream<result_pkt> out_stream("output_stream");

    printf("Starting Simulation: Batch Processing of %d images...\n", SIM_IMGS);

    // --------------------------------------------------------
    // PHASE 1: PREPARE INPUT STREAM (CPU -> DMA Sim)
    // --------------------------------------------------------
    // In a real system, this happens in chunks (double buffering).
    // In the testbench, we fill the stream with ALL images to verify the HLS logic.

    double temp_val_read;

    for (int i = 0; i < SIM_IMGS; i++) {
        // Loop over packets (IMG_SIZE / 8)
        for (int j = 0; j < IMG_SIZE / 8; j++) {
            ap_uint<64> packet_data = 0;

            // Loop over pixels in packet (8)
            for (int p = 0; p < 8; p++) {
                if (inputFile >> temp_val_read) {
                    // Mimic the CPU Pre-processing: Double -> Fixed Point
                    ap_fixed<8,7> pixel = (ap_fixed<8,7>)temp_val_read;

                    // Pack bits into 64-bit word
                    packet_data.range(p*8 + 7, p*8) = pixel(7, 0);
                }
            }

            // Create Packet
            axis_t axis_packet;
            axis_packet.data = packet_data;
            axis_packet.keep = -1;
            axis_packet.strb = -1;
            // TLAST is asserted on the last packet of *each* image
            axis_packet.last = (j == (IMG_SIZE/8) - 1) ? 1 : 0;

            in_stream.write(axis_packet);
        }
    }
    inputFile.close();

    printf("Input Stream Filled. Calling HLS Core...\n");

    // --------------------------------------------------------
    // PHASE 2: RUN HLS KERNEL
    // --------------------------------------------------------
    // The core processes 'SIM_IMGS' sequentially without stopping.
    classify(in_stream, out_stream, SIM_IMGS);

    printf("HLS Execution Complete. verifying results...\n");

    // --------------------------------------------------------
    // PHASE 3: VERIFY RESULTS (DMA -> CPU Sim)
    // --------------------------------------------------------
    int correct = 0;
    int predictions[SIM_IMGS];

    // Confusion Matrix
    double CM[2][2] = {0, 0, 0, 0};

    for (int i = 0; i < SIM_IMGS; i++) {
        // Read from Output Stream
        if (out_stream.empty()) {
            printf("Error: Output stream empty at image index %d!\n", i);
            return 1;
        }

        result_pkt res = out_stream.read();

        // Extract Data
        ap_fixed<32,16> result_fixed = res.data;
        double score = (double)result_fixed;

        // Verify TLAST signal (Should be 1 only on the very last image)
        if (i == SIM_IMGS - 1) {
            if (res.last != 1) printf("Warning: TLAST not set on final image!\n");
        } else {
            if (res.last != 0) printf("Warning: TLAST set prematurely at index %d!\n", i);
        }

        // Scoring & Verification
        scoresF << score << std::endl;

        predictions[i] = (score < 0) ? 0 : 1;

        if (predictions[i] == ground_truth[i]) {
            correct++;
        }

        // Update Confusion Matrix
        CM[ground_truth[i]][predictions[i]]++;
    }

    scoresF.close();

    // --------------------------------------------------------
    // REPORTING
    // --------------------------------------------------------
    double accuracy = (double)correct / SIM_IMGS;
    printf("\n--- Results ---\n");
    printf("Classification Accuracy: %f\n", accuracy);

    printf("Confusion Matrix:\n");
    printf("%f, %f\n", CM[0][0]/SIM_IMGS, CM[0][1]/SIM_IMGS);
    printf("%f, %f\n", CM[1][0]/SIM_IMGS, CM[1][1]/SIM_IMGS);

    if (accuracy > 0.95) {
        printf("\nTest Passed!\n");
        return 0;
    } else {
        printf("\nTest Failed!\n");
        return 1;
    }
}
*/
