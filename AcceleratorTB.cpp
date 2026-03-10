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
    double temp_val_read;
    double img_buffer[28][28];

    for (int i = 0; i < SIM_IMGS; i++) {
        // 1. Read the full 28x28 image from the fixed text file
        for (int r = 0; r < 28; r++) {
            for (int c = 0; c < 28; c++) {
                if (!(inputFile >> img_buffer[r][c])) {
                    printf("Error: Reached EOF unexpectedly at image %d\n", i);
                    return 1;
                }
            }
        }

        // 2. Extract the inner 22x22 and pack it into the AXI Stream
        ap_uint<64> packet_data = 0;
        int pixel_count = 0;
        int packet_count = 0;
        const int TOTAL_PACKETS = 496 / 8; // 62 packets per image (484 pixels + 12 pad pixels)

        // Crop 3 rows/cols from every side (start at 3, end at 24)
        for (int r = 3; r < 25; r++) {
            for (int c = 3; c < 25; c++) {

                ap_fixed<8,7> pixel = (ap_fixed<8,7>)img_buffer[r][c];

                // Pack pixel into the 64-bit word (8 pixels per word)
                int p_idx = pixel_count % 8;
                packet_data.range(p_idx*8 + 7, p_idx*8) = pixel(7, 0);
                pixel_count++;

                // When we have 8 pixels, send the packet
                if (pixel_count % 8 == 0) {
                    axis_t axis_packet;
                    axis_packet.data = packet_data;
                    axis_packet.keep = -1;
                    axis_packet.strb = -1;
                    // TLAST is asserted on the 62nd packet of the image
                    axis_packet.last = (packet_count == TOTAL_PACKETS - 1) ? 1 : 0;

                    in_stream.write(axis_packet);

                    packet_data = 0; // Reset for next packet
                    packet_count++;
                }
            }
        }

        // 3. Pad the remaining 12 pixels to reach 496 pixels (exactly 31 128-bit words)
        while (packet_count < TOTAL_PACKETS) {
            ap_fixed<8,7> pixel = 0; // Zero padding
            int p_idx = pixel_count % 8;
            packet_data.range(p_idx*8 + 7, p_idx*8) = pixel(7, 0);
            pixel_count++;

            if (pixel_count % 8 == 0) {
                axis_t axis_packet;
                axis_packet.data = packet_data;
                axis_packet.keep = -1;
                axis_packet.strb = -1;
                axis_packet.last = (packet_count == TOTAL_PACKETS - 1) ? 1 : 0;
                in_stream.write(axis_packet);
                packet_data = 0;
                packet_count++;
            }
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
