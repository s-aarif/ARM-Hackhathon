#include <stdio.h>
#include <string.h>
#include <unistd.h>
#include "xil_printf.h"
#include "xparameters.h"
#include "xaxidma.h"
#include "xcnn_accelerator.h"
#include "xil_cache.h"
#include "xil_types.h"
#include "xil_io.h"

#define DMA_ID          0
#define CNN_ID          0

#define MEM_BASE_ADDR   0x10000000
#define TX_BUFFER_BASE  (MEM_BASE_ADDR + 0x00100000)
#define RX_BUFFER_BASE  (MEM_BASE_ADDR + 0x00300000)

#define IMG_SIZE        28
#define PIXEL_COUNT     (IMG_SIZE * IMG_SIZE) // 784
#define DATA_SIZE       (PIXEL_COUNT * sizeof(float))
#define NUM_CLASSES     10
#define RESULT_SIZE     (NUM_CLASSES * sizeof(float))

// Handwritten "7" from MNIST
const float real_image_7[784] = {
    0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0,
    0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0,
    0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0,
    0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0,
    0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0,
    0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0,
    0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0,
    0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.3, 0.6, 0.8, 0.9, 0.4, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0,
    0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.3, 0.7, 0.9, 1.0, 1.0, 1.0, 0.9, 0.1, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0,
    0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.1, 0.7, 1.0, 1.0, 0.8, 0.6, 1.0, 0.7, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0,
    0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.1, 0.8, 1.0, 0.6, 0.0, 0.2, 1.0, 0.6, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0,
    0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.1, 0.2, 0.0, 0.0, 0.6, 1.0, 0.4, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0,
    0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.2, 1.0, 0.9, 0.1, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0,
    0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.6, 1.0, 0.6, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0,
    0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.2, 1.0, 0.9, 0.1, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0,
    0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.6, 1.0, 0.6, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0,
    0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.3, 1.0, 0.8, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0,
    0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.8, 1.0, 0.3, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0,
    0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.5, 1.0, 0.8, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0,
    0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.9, 1.0, 0.2, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0,
    0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.4, 1.0, 0.7, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0,
    0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.8, 0.9, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0,
    0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.2, 1.0, 0.6, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0,
    0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.6, 1.0, 0.1, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0,
    0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0,
    0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0,
    0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0,
    0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0
};

XAxiDma AxiDma;
XCnn_accelerator CnnInstance;

u64 get_time_us() {
    u32 low = Xil_In32(0xFF130000); 
    u32 high = Xil_In32(0xFF130004);
    u64 count = ((u64)high << 32) | low;
    return count / 100; 
}

int main() {
    Xil_ICacheEnable();
    Xil_DCacheEnable();
    
    xil_printf("\r\n--- FPGA CNN Real Data Test (With Watchdog) ---\r\n");

    // CHECKPOINT 1
    xil_printf("[CP1] Looking up Configuration...\r\n");
    XAxiDma_Config *DmaCfg = XAxiDma_LookupConfig(DMA_ID);
    XCnn_accelerator_Config *CnnCfg = XCnn_accelerator_LookupConfig(CNN_ID);
    
    if (!DmaCfg || !CnnCfg) { xil_printf("Config Error\r\n"); return -1; }
    
    // CHECKPOINT 2
    xil_printf("[CP2] Initializing DMA Hardware...\r\n");
    int Status = XAxiDma_CfgInitialize(&AxiDma, DmaCfg);
    if (Status != XST_SUCCESS) { xil_printf("DMA Init Failed\r\n"); return -1; }

    // CHECKPOINT 3
    xil_printf("[CP3] Initializing CNN Hardware...\r\n");
    Status = XCnn_accelerator_CfgInitialize(&CnnInstance, CnnCfg);
    if (Status != XST_SUCCESS) { xil_printf("CNN Init Failed\r\n"); return -1; }

    // CHECKPOINT 4
    xil_printf("[CP4] Hardware Awake! Configuring Interrupts...\r\n");
    XAxiDma_IntrDisable(&AxiDma, XAXIDMA_IRQ_ALL_MASK, XAXIDMA_DEVICE_TO_DMA);
    XAxiDma_IntrDisable(&AxiDma, XAXIDMA_IRQ_ALL_MASK, XAXIDMA_DMA_TO_DEVICE);

    // CHECKPOINT 5
    xil_printf("[CP5] Preparing Data...\r\n");
    float *TxBuffer = (float *)TX_BUFFER_BASE;
    float *RxBuffer = (float *)RX_BUFFER_BASE;

    // Reset RX to -1.0
    for (int i = 0; i < NUM_CLASSES; i++) RxBuffer[i] = -1.0f;

    // Load REAL "7"
    for (int i = 0; i < PIXEL_COUNT; i++) TxBuffer[i] = real_image_7[i];

    // Flush Cache
    Xil_DCacheFlushRange((UINTPTR)TxBuffer, DATA_SIZE);
    Xil_DCacheFlushRange((UINTPTR)RxBuffer, RESULT_SIZE);

    // CHECKPOINT 6
    xil_printf("[CP6] Starting Execution...\r\n");
    XCnn_accelerator_Start(&CnnInstance);

    u64 tStart = get_time_us(); 

    // Start DMA
    XAxiDma_SimpleTransfer(&AxiDma, (UINTPTR)RxBuffer, RESULT_SIZE, XAXIDMA_DEVICE_TO_DMA);
    XAxiDma_SimpleTransfer(&AxiDma, (UINTPTR)TxBuffer, DATA_SIZE, XAXIDMA_DMA_TO_DEVICE);

    volatile int timeout = 10000000;
    while (timeout > 0) {
        if (!XAxiDma_Busy(&AxiDma, XAXIDMA_DMA_TO_DEVICE) && 
            !XAxiDma_Busy(&AxiDma, XAXIDMA_DEVICE_TO_DMA)) {
            break;
        }
        timeout--;
    }

    u64 tEnd = get_time_us();   

    Xil_DCacheInvalidateRange((UINTPTR)RxBuffer, RESULT_SIZE);

    xil_printf("\r\n--- RESULTS ---\r\n");
    if (timeout == 0) {
        xil_printf("[WARNING] DMA Timed Out (TLAST Missing?), reading memory anyway...\r\n");
    } else {
        xil_printf("[SUCCESS] DMA Completed Normally.\r\n");
    }
    
    xil_printf("FPGA Time: %llu us\r\n", (tEnd - tStart));

    int best_class = 0;
    float max_val = RxBuffer[0];
    
    // Check for Dead data 
    if (RxBuffer[0] == -1.0f && RxBuffer[1] == -1.0f) {
        xil_printf("ERROR: No data received. The FPGA did not write anything.\r\n");
    } else {
        xil_printf("Scores:\r\n");
        for (int i = 0; i < NUM_CLASSES; i++) {
            int val_int = (int)RxBuffer[i];
            int val_frac = (int)((RxBuffer[i] - val_int) * 1000); 
            if(val_frac < 0) val_frac = -val_frac;
            
            xil_printf("Class %d: %d.%03d\r\n", i, val_int, val_frac);
            if (RxBuffer[i] > max_val) {
                max_val = RxBuffer[i];
                best_class = i;
            }
        }
        xil_printf("\r\n>>> FINAL RESULT: %d <<<\r\n", best_class);
    }

    return 0;
}