// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2024.1 (64-bit)
// Tool Version Limit: 2024.05
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
/***************************** Include Files *********************************/
#include "xcnn_accelerator.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XCnn_accelerator_CfgInitialize(XCnn_accelerator *InstancePtr, XCnn_accelerator_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Ctrl_BaseAddress = ConfigPtr->Ctrl_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XCnn_accelerator_Start(XCnn_accelerator *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCnn_accelerator_ReadReg(InstancePtr->Ctrl_BaseAddress, XCNN_ACCELERATOR_CTRL_ADDR_AP_CTRL) & 0x80;
    XCnn_accelerator_WriteReg(InstancePtr->Ctrl_BaseAddress, XCNN_ACCELERATOR_CTRL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XCnn_accelerator_IsDone(XCnn_accelerator *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCnn_accelerator_ReadReg(InstancePtr->Ctrl_BaseAddress, XCNN_ACCELERATOR_CTRL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XCnn_accelerator_IsIdle(XCnn_accelerator *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCnn_accelerator_ReadReg(InstancePtr->Ctrl_BaseAddress, XCNN_ACCELERATOR_CTRL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XCnn_accelerator_IsReady(XCnn_accelerator *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCnn_accelerator_ReadReg(InstancePtr->Ctrl_BaseAddress, XCNN_ACCELERATOR_CTRL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XCnn_accelerator_EnableAutoRestart(XCnn_accelerator *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCnn_accelerator_WriteReg(InstancePtr->Ctrl_BaseAddress, XCNN_ACCELERATOR_CTRL_ADDR_AP_CTRL, 0x80);
}

void XCnn_accelerator_DisableAutoRestart(XCnn_accelerator *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCnn_accelerator_WriteReg(InstancePtr->Ctrl_BaseAddress, XCNN_ACCELERATOR_CTRL_ADDR_AP_CTRL, 0);
}

void XCnn_accelerator_InterruptGlobalEnable(XCnn_accelerator *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCnn_accelerator_WriteReg(InstancePtr->Ctrl_BaseAddress, XCNN_ACCELERATOR_CTRL_ADDR_GIE, 1);
}

void XCnn_accelerator_InterruptGlobalDisable(XCnn_accelerator *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCnn_accelerator_WriteReg(InstancePtr->Ctrl_BaseAddress, XCNN_ACCELERATOR_CTRL_ADDR_GIE, 0);
}

void XCnn_accelerator_InterruptEnable(XCnn_accelerator *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XCnn_accelerator_ReadReg(InstancePtr->Ctrl_BaseAddress, XCNN_ACCELERATOR_CTRL_ADDR_IER);
    XCnn_accelerator_WriteReg(InstancePtr->Ctrl_BaseAddress, XCNN_ACCELERATOR_CTRL_ADDR_IER, Register | Mask);
}

void XCnn_accelerator_InterruptDisable(XCnn_accelerator *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XCnn_accelerator_ReadReg(InstancePtr->Ctrl_BaseAddress, XCNN_ACCELERATOR_CTRL_ADDR_IER);
    XCnn_accelerator_WriteReg(InstancePtr->Ctrl_BaseAddress, XCNN_ACCELERATOR_CTRL_ADDR_IER, Register & (~Mask));
}

void XCnn_accelerator_InterruptClear(XCnn_accelerator *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCnn_accelerator_WriteReg(InstancePtr->Ctrl_BaseAddress, XCNN_ACCELERATOR_CTRL_ADDR_ISR, Mask);
}

u32 XCnn_accelerator_InterruptGetEnabled(XCnn_accelerator *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XCnn_accelerator_ReadReg(InstancePtr->Ctrl_BaseAddress, XCNN_ACCELERATOR_CTRL_ADDR_IER);
}

u32 XCnn_accelerator_InterruptGetStatus(XCnn_accelerator *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XCnn_accelerator_ReadReg(InstancePtr->Ctrl_BaseAddress, XCNN_ACCELERATOR_CTRL_ADDR_ISR);
}

