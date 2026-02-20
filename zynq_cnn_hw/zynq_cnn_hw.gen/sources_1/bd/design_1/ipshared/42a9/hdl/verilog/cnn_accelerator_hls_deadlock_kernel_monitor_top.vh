
wire kernel_monitor_reset;
wire kernel_monitor_clock;
wire kernel_monitor_report;
assign kernel_monitor_reset = ~ap_rst_n;
assign kernel_monitor_clock = ap_clk;
assign kernel_monitor_report = 1'b0;
wire [1:0] axis_block_sigs;
wire [6:0] inst_idle_sigs;
wire [2:0] inst_block_sigs;
wire kernel_block;

assign axis_block_sigs[0] = ~read_input_U0.in_stream_TDATA_blk_n;
assign axis_block_sigs[1] = ~dense_and_write_U0.grp_dense_and_write_Pipeline_VITIS_LOOP_88_5_fu_100.out_stream_TDATA_blk_n;

assign inst_idle_sigs[0] = read_input_U0.ap_idle;
assign inst_block_sigs[0] = (read_input_U0.ap_done & ~read_input_U0.ap_continue) | ~read_input_U0.img_stream_blk_n;
assign inst_idle_sigs[1] = conv_and_pool_U0.ap_idle;
assign inst_block_sigs[1] = (conv_and_pool_U0.ap_done & ~conv_and_pool_U0.ap_continue) | ~conv_and_pool_U0.grp_conv_and_pool_Pipeline_VITIS_LOOP_26_1_VITIS_LOOP_27_2_fu_58.img_stream_blk_n | ~conv_and_pool_U0.grp_conv_and_pool_Pipeline_VITIS_LOOP_34_3_VITIS_LOOP_35_4_VITIS_LOOP_36_5_fu_82.pool_stream_blk_n;
assign inst_idle_sigs[2] = dense_and_write_U0.ap_idle;
assign inst_block_sigs[2] = (dense_and_write_U0.ap_done & ~dense_and_write_U0.ap_continue) | ~dense_and_write_U0.grp_dense_and_write_Pipeline_VITIS_LOOP_73_1_VITIS_LOOP_74_2_VITIS_LOOP_75_3_fu_84.pool_stream_blk_n;

assign inst_idle_sigs[3] = 1'b0;
assign inst_idle_sigs[4] = read_input_U0.ap_idle;
assign inst_idle_sigs[5] = dense_and_write_U0.ap_idle;
assign inst_idle_sigs[6] = dense_and_write_U0.grp_dense_and_write_Pipeline_VITIS_LOOP_88_5_fu_100.ap_idle;

cnn_accelerator_hls_deadlock_idx0_monitor cnn_accelerator_hls_deadlock_idx0_monitor_U (
    .clock(kernel_monitor_clock),
    .reset(kernel_monitor_reset),
    .axis_block_sigs(axis_block_sigs),
    .inst_idle_sigs(inst_idle_sigs),
    .inst_block_sigs(inst_block_sigs),
    .block(kernel_block)
);


always @ (kernel_block or kernel_monitor_reset) begin
    if (kernel_block == 1'b1 && kernel_monitor_reset == 1'b0) begin
        find_kernel_block = 1'b1;
    end
    else begin
        find_kernel_block = 1'b0;
    end
end
