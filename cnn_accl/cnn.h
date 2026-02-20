#pragma once
#include "ap_int.h"
#include "hls_stream.h"
#include "ap_axi_sdata.h"

// MNIST dimensions
#define IMG_SIZE 28
#define KERNEL_SIZE 3
#define NUM_FILTERS 8
#define POOL_SIZE 2
#define OUT_SIZE (IMG_SIZE - KERNEL_SIZE + 1) / POOL_SIZE 
#define NUM_CLASSES 10

// AXI Stream 32-bit data
typedef ap_axiu<32, 1, 1, 1> AXI_VAL;
typedef hls::stream<AXI_VAL> AXI_STREAM;

void cnn_accelerator(AXI_STREAM &in_stream, AXI_STREAM &out_stream);