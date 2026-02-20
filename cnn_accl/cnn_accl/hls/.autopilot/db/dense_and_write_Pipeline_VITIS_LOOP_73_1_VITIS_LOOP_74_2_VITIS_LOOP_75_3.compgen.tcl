# This script segment is generated automatically by AutoPilot

# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 195 \
    name pool_stream \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_pool_stream \
    op interface \
    ports { pool_stream_dout { I 32 vector } pool_stream_num_data_valid { I 3 vector } pool_stream_fifo_cap { I 3 vector } pool_stream_empty_n { I 1 bit } pool_stream_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 196 \
    name add_918_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add_918_out \
    op interface \
    ports { add_918_out { O 32 vector } add_918_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 197 \
    name add_817_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add_817_out \
    op interface \
    ports { add_817_out { O 32 vector } add_817_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 198 \
    name add_716_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add_716_out \
    op interface \
    ports { add_716_out { O 32 vector } add_716_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 199 \
    name add_615_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add_615_out \
    op interface \
    ports { add_615_out { O 32 vector } add_615_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 200 \
    name add_514_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add_514_out \
    op interface \
    ports { add_514_out { O 32 vector } add_514_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 201 \
    name add_413_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add_413_out \
    op interface \
    ports { add_413_out { O 32 vector } add_413_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 202 \
    name add_312_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add_312_out \
    op interface \
    ports { add_312_out { O 32 vector } add_312_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 203 \
    name add_211_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add_211_out \
    op interface \
    ports { add_211_out { O 32 vector } add_211_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 204 \
    name add_110_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add_110_out \
    op interface \
    ports { add_110_out { O 32 vector } add_110_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 205 \
    name add9_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add9_out \
    op interface \
    ports { add9_out { O 32 vector } add9_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -1 \
    name ap_ctrl \
    type ap_ctrl \
    reset_level 1 \
    sync_rst true \
    corename ap_ctrl \
    op interface \
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -2 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_clk \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-113\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}


# Adapter definition:
set PortName ap_rst
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -3 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_rst \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-114\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


# flow_control definition:
set InstName cnn_accelerator_flow_control_loop_pipe_sequential_init_U
set CompName cnn_accelerator_flow_control_loop_pipe_sequential_init
set name flow_control_loop_pipe_sequential_init
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control] == "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control"} {
eval "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control { \
    name ${name} \
    prefix cnn_accelerator_ \
}"
} else {
puts "@W \[IMPL-107\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $CompName BINDTYPE interface TYPE internal_upc_flow_control INSTNAME $InstName
}


