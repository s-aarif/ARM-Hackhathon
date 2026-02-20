#include "cnn.h"

// Hardcoded weights
float conv_weights[NUM_FILTERS][KERNEL_SIZE][KERNEL_SIZE] = {0};
float fc_weights[NUM_CLASSES][NUM_FILTERS * OUT_SIZE * OUT_SIZE] = {0};

// Read from DMA
void read_input(AXI_STREAM &in_stream, hls::stream<float> &img_stream) {
    for (int i = 0; i < IMG_SIZE * IMG_SIZE; i++) {
        #pragma HLS PIPELINE II=1
        AXI_VAL in_val = in_stream.read();
        union { unsigned int i; float f; } converter;
        converter.i = in_val.data;
        img_stream.write(converter.f);
    }
}

// Conv & Pool
void conv_and_pool(hls::stream<float> &img_stream, hls::stream<float> &pool_stream) {
    // Local buffer for the image
    float image[IMG_SIZE][IMG_SIZE];
    #pragma HLS ARRAY_PARTITION variable=image block factor=3 dim=0 
    #pragma HLS ARRAY_PARTITION variable=conv_weights complete dim=0

    // Read stream into local buffer
    for (int i = 0; i < IMG_SIZE; i++) {
        for (int j = 0; j < IMG_SIZE; j++) {
            #pragma HLS PIPELINE II=1
            image[i][j] = img_stream.read();
        }
    }

    // Compute Conv - ReLU - MaxPool on the fly
    for (int f = 0; f < NUM_FILTERS; f++) {
        for (int i = 0; i < OUT_SIZE; i++) {
            for (int j = 0; j < OUT_SIZE; j++) {
                #pragma HLS PIPELINE II=1
                
                float max_val = 0;
                // Sliding window for pooling
                for (int pi = 0; pi < POOL_SIZE; pi++) {
                    for (int pj = 0; pj < POOL_SIZE; pj++) {
                        
                        // Sliding window for convolution
                        float sum = 0;
                        int r = (i * POOL_SIZE + pi);
                        int c = (j * POOL_SIZE + pj);
                        
                        for (int ki = 0; ki < KERNEL_SIZE; ki++) {
                            for (int kj = 0; kj < KERNEL_SIZE; kj++) {
                                sum += image[r + ki][c + kj] * conv_weights[f][ki][kj];
                            }
                        }
                        
                        float relu_val = (sum > 0) ? sum : 0; 
                        if (relu_val > max_val) max_val = relu_val;
                    }
                }
                pool_stream.write(max_val);
            }
        }
    }
}

// Dense Layer & Write to DMA
void dense_and_write(hls::stream<float> &pool_stream, AXI_STREAM &out_stream) {
    float dense_out[NUM_CLASSES] = {0};
    #pragma HLS ARRAY_PARTITION variable=dense_out complete dim=1
    #pragma HLS ARRAY_PARTITION variable=fc_weights complete dim=1

    // Read pooled data and compute dense layer
    int flat_idx = 0;
    for (int f = 0; f < NUM_FILTERS; f++) {
        for (int i = 0; i < OUT_SIZE; i++) {
            for (int j = 0; j < OUT_SIZE; j++) {
                #pragma HLS PIPELINE II=1
                float pool_val = pool_stream.read();
                
                for (int c = 0; c < NUM_CLASSES; c++) {
                    dense_out[c] += pool_val * fc_weights[c][flat_idx];
                }
                flat_idx++;
            }
        }
    }

    // Write final predictions to DMA
    for (int c = 0; c < NUM_CLASSES; c++) {
        #pragma HLS PIPELINE II=1
        AXI_VAL out_val;
        union { unsigned int i; float f; } converter;
        converter.f = dense_out[c];
        out_val.data = converter.i;
        out_val.keep = 1;
        out_val.strb = 1;
        out_val.last = (c == NUM_CLASSES - 1) ? 1 : 
        out_stream.write(out_val);
    }
}

// TOP LEVEL FUNCTION
void cnn_accelerator(AXI_STREAM &in_stream, AXI_STREAM &out_stream) {
    #pragma HLS INTERFACE axis port=in_stream
    #pragma HLS INTERFACE axis port=out_stream
    #pragma HLS INTERFACE s_axilite port=return bundle=ctrl

    // Internal FIFOs connect the sub-functions seamlessly
    hls::stream<float> img_stream("img_stream");
    hls::stream<float> pool_stream("pool_stream");

    // dataflow allows these three blocks to run concurrently in hardware
    #pragma HLS DATAFLOW
 
    read_input(in_stream, img_stream);
    conv_and_pool(img_stream, pool_stream);
    dense_and_write(pool_stream, out_stream);
}