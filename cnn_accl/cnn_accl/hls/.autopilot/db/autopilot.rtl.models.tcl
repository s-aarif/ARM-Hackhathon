set SynModuleInfo {
  {SRCNAME read_input MODELNAME read_input RTLNAME cnn_accelerator_read_input
    SUBMODULES {
      {MODELNAME cnn_accelerator_regslice_both RTLNAME cnn_accelerator_regslice_both BINDTYPE interface TYPE adapter IMPL reg_slice}
      {MODELNAME cnn_accelerator_flow_control_loop_pipe RTLNAME cnn_accelerator_flow_control_loop_pipe BINDTYPE interface TYPE internal_upc_flow_control INSTNAME cnn_accelerator_flow_control_loop_pipe_U}
    }
  }
  {SRCNAME conv_and_pool_Pipeline_VITIS_LOOP_26_1_VITIS_LOOP_27_2 MODELNAME conv_and_pool_Pipeline_VITIS_LOOP_26_1_VITIS_LOOP_27_2 RTLNAME cnn_accelerator_conv_and_pool_Pipeline_VITIS_LOOP_26_1_VITIS_LOOP_27_2
    SUBMODULES {
      {MODELNAME cnn_accelerator_urem_5ns_5ns_5_9_1 RTLNAME cnn_accelerator_urem_5ns_5ns_5_9_1 BINDTYPE op TYPE urem IMPL auto LATENCY 8 ALLOW_PRAGMA 1}
      {MODELNAME cnn_accelerator_mul_5ns_7ns_11_1_1 RTLNAME cnn_accelerator_mul_5ns_7ns_11_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME cnn_accelerator_flow_control_loop_pipe_sequential_init RTLNAME cnn_accelerator_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME cnn_accelerator_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME conv_and_pool_Pipeline_VITIS_LOOP_34_3_VITIS_LOOP_35_4_VITIS_LOOP_36_5 MODELNAME conv_and_pool_Pipeline_VITIS_LOOP_34_3_VITIS_LOOP_35_4_VITIS_LOOP_36_5 RTLNAME cnn_accelerator_conv_and_pool_Pipeline_VITIS_LOOP_34_3_VITIS_LOOP_35_4_VITIS_LOOP_36_5
    SUBMODULES {
      {MODELNAME cnn_accelerator_fadd_32ns_32ns_32_4_full_dsp_1 RTLNAME cnn_accelerator_fadd_32ns_32ns_32_4_full_dsp_1 BINDTYPE op TYPE fadd IMPL fulldsp LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME cnn_accelerator_fmul_32ns_32ns_32_3_max_dsp_1 RTLNAME cnn_accelerator_fmul_32ns_32ns_32_3_max_dsp_1 BINDTYPE op TYPE fmul IMPL maxdsp LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME cnn_accelerator_fcmp_32ns_32ns_1_2_no_dsp_1 RTLNAME cnn_accelerator_fcmp_32ns_32ns_1_2_no_dsp_1 BINDTYPE op TYPE fcmp IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME cnn_accelerator_urem_4ns_4ns_3_8_1 RTLNAME cnn_accelerator_urem_4ns_4ns_3_8_1 BINDTYPE op TYPE urem IMPL auto LATENCY 7 ALLOW_PRAGMA 1}
      {MODELNAME cnn_accelerator_mul_4ns_6ns_9_1_1 RTLNAME cnn_accelerator_mul_4ns_6ns_9_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME cnn_accelerator_urem_4ns_4ns_4_8_1 RTLNAME cnn_accelerator_urem_4ns_4ns_4_8_1 BINDTYPE op TYPE urem IMPL auto LATENCY 7 ALLOW_PRAGMA 1}
      {MODELNAME cnn_accelerator_sparsemux_7_2_32_1_1 RTLNAME cnn_accelerator_sparsemux_7_2_32_1_1 BINDTYPE op TYPE sparsemux IMPL auto}
      {MODELNAME cnn_accelerator_frp_fifoout RTLNAME cnn_accelerator_frp_fifoout BINDTYPE interface TYPE internal_frp_fifoout}
      {MODELNAME cnn_accelerator_frp_pipeline_valid RTLNAME cnn_accelerator_frp_pipeline_valid BINDTYPE interface TYPE internal_frp_validbits INSTNAME cnn_accelerator_frp_pipeline_valid_U}
    }
  }
  {SRCNAME conv_and_pool MODELNAME conv_and_pool RTLNAME cnn_accelerator_conv_and_pool
    SUBMODULES {
      {MODELNAME cnn_accelerator_conv_and_pool_image_RAM_1WNR_AUTO_1R1W RTLNAME cnn_accelerator_conv_and_pool_image_RAM_1WNR_AUTO_1R1W BINDTYPE storage TYPE ram_1wnr IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME dense_and_write_Pipeline_VITIS_LOOP_73_1_VITIS_LOOP_74_2_VITIS_LOOP_75_3 MODELNAME dense_and_write_Pipeline_VITIS_LOOP_73_1_VITIS_LOOP_74_2_VITIS_LOOP_75_3 RTLNAME cnn_accelerator_dense_and_write_Pipeline_VITIS_LOOP_73_1_VITIS_LOOP_74_2_VITIS_LOOP_75_3}
  {SRCNAME dense_and_write_Pipeline_VITIS_LOOP_88_5 MODELNAME dense_and_write_Pipeline_VITIS_LOOP_88_5 RTLNAME cnn_accelerator_dense_and_write_Pipeline_VITIS_LOOP_88_5
    SUBMODULES {
      {MODELNAME cnn_accelerator_sparsemux_21_4_32_1_1 RTLNAME cnn_accelerator_sparsemux_21_4_32_1_1 BINDTYPE op TYPE sparsemux IMPL auto}
    }
  }
  {SRCNAME dense_and_write MODELNAME dense_and_write RTLNAME cnn_accelerator_dense_and_write}
  {SRCNAME cnn_accelerator MODELNAME cnn_accelerator RTLNAME cnn_accelerator IS_TOP 1
    SUBMODULES {
      {MODELNAME cnn_accelerator_fifo_w32_d2_S RTLNAME cnn_accelerator_fifo_w32_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME img_stream_U}
      {MODELNAME cnn_accelerator_fifo_w32_d2_S RTLNAME cnn_accelerator_fifo_w32_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME pool_stream_U}
      {MODELNAME cnn_accelerator_start_for_conv_and_pool_U0 RTLNAME cnn_accelerator_start_for_conv_and_pool_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_conv_and_pool_U0_U}
      {MODELNAME cnn_accelerator_start_for_dense_and_write_U0 RTLNAME cnn_accelerator_start_for_dense_and_write_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_dense_and_write_U0_U}
      {MODELNAME cnn_accelerator_ctrl_s_axi RTLNAME cnn_accelerator_ctrl_s_axi BINDTYPE interface TYPE interface_s_axilite}
    }
  }
}
