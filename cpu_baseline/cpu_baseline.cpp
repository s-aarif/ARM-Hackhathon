#include <iostream>
#include <cmath>
#include <chrono>
#include "weights.h"

#define IMG_SIZE 28
#define KERNEL_SIZE 3
#define NUM_FILTERS 8
#define POOL_SIZE 2
#define OUT_SIZE 13

// 28x28 image 
float test_image[IMG_SIZE][IMG_SIZE] = {0}; 

void run_cpu_inference(float image[IMG_SIZE][IMG_SIZE], float predictions[10]) {
    float pool_out[NUM_FILTERS * OUT_SIZE * OUT_SIZE] = {0};

    // Convolution + ReLU + MaxPool
    int pool_idx = 0;
    for (int f = 0; f < NUM_FILTERS; f++) {
        for (int i = 0; i < OUT_SIZE; i++) {
            for (int j = 0; j < OUT_SIZE; j++) {
                
                float max_val = 0.0f;
            
                // Max pool window
                for (int pi = 0; pi < POOL_SIZE; pi++) {
                    for (int pj = 0; pj < POOL_SIZE; pj++) {
                        
                        float sum = 0.0f;
                        int row = (i * POOL_SIZE) + pi;
                        int col = (j * POOL_SIZE) + pj;
                    
                        // Convolution window
                        for (int ki = 0; ki < KERNEL_SIZE; ki++) {
                            for (int kj = 0; kj < KERNEL_SIZE; kj++) {
                                sum += image[row + ki][col + kj] * conv_weights[f][ki][kj];
                            }
                        }
                        
                        // ReLU Activation
                        float relu_val = (sum > 0.0f) ? sum : 0.0f;
                        if (relu_val > max_val) max_val = relu_val;
                    }
                }
                // Storing result
                pool_out[pool_idx++] = max_val; 
            }
        }
    }

    // 2. Dense Layer
    for (int c = 0; c < 10; c++) {
        float sum = 0.0f;
        for (int idx = 0; idx < (NUM_FILTERS * OUT_SIZE * OUT_SIZE); idx++) {
            sum += pool_out[idx] * fc_weights[c][idx];
        }
        predictions[c] = sum;
    }
}

int main() {
    
    for(int i=0; i<IMG_SIZE; i++) test_image[i][i] = 1.0f;

    float predictions[10] = {0};

    // TIMING
    auto start = std::chrono::high_resolution_clock::now();
    
    run_cpu_inference(test_image, predictions);
    
    auto end = std::chrono::high_resolution_clock::now();
    auto duration = std::chrono::duration_cast<std::chrono::microseconds>(end - start);

    std::cout << "--- CPU Baseline Results ---" << std::endl;
    std::cout << "Inference Time: " << duration.count() << " microseconds" << std::endl;
    
    // highest prediction
    int best_class = 0;
    float max_prob = predictions[0];
    for(int i=1; i<10; i++){
        if(predictions[i] > max_prob){
            max_prob = predictions[i];
            best_class = i;
        }
    }
    std::cout << "Predicted Class: " << best_class << std::endl;

    return 0;
}