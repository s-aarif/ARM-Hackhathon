# This script segment is generated automatically by AutoPilot

set name cnn_accelerator_fadd_32ns_32ns_32_4_full_dsp_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {fadd} IMPL {fulldsp} LATENCY 3 ALLOW_PRAGMA 1
}


set name cnn_accelerator_fmul_32ns_32ns_32_3_max_dsp_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {fmul} IMPL {maxdsp} LATENCY 2 ALLOW_PRAGMA 1
}


set name cnn_accelerator_fcmp_32ns_32ns_1_2_no_dsp_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {fcmp} IMPL {auto} LATENCY 1 ALLOW_PRAGMA 1
}


set name cnn_accelerator_urem_4ns_4ns_3_8_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {urem} IMPL {auto} LATENCY 7 ALLOW_PRAGMA 1
}


set name cnn_accelerator_mul_4ns_6ns_9_1_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {mul} IMPL {auto} LATENCY 0 ALLOW_PRAGMA 1
}


set name cnn_accelerator_urem_4ns_4ns_4_8_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {urem} IMPL {auto} LATENCY 7 ALLOW_PRAGMA 1
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler cnn_accelerator_sparsemux_7_2_32_1_1 BINDTYPE {op} TYPE {sparsemux} IMPL {auto}
}


# FIFO definition:
set ID 176
set FifoName cnn_accelerator_frp_fifoout
set InstName cnn_accelerator_frp_fifoout_U
set CoreName ap_simcore_frp_fifoout
set NumOfStage 2
set DualClock 0
set Depth 16
set DataWd 0
set AddrWd 4
set FullThresh 0
set impl_style auto
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $FifoName BINDTYPE interface TYPE internal_frp_fifoout
}


if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_frp_fifoout] == "::AESL_LIB_VIRTEX::xil_gen_frp_fifoout"} {
eval "::AESL_LIB_VIRTEX::xil_gen_frp_fifoout { \
    name ${FifoName} \
    loop_pipe true \
    prefix cnn_accelerator_\
}"
} else {
puts "@W \[IMPL-107\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_frp_fifoout, check your platform lib"
}
}


# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 177 \
    name image_r \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename image_r \
    op interface \
    ports { image_r_address0 { O 7 vector } image_r_ce0 { O 1 bit } image_r_q0 { I 32 vector } image_r_address1 { O 7 vector } image_r_ce1 { O 1 bit } image_r_q1 { I 32 vector } image_r_address2 { O 7 vector } image_r_ce2 { O 1 bit } image_r_q2 { I 32 vector } image_r_address3 { O 7 vector } image_r_ce3 { O 1 bit } image_r_q3 { I 32 vector } image_r_address4 { O 7 vector } image_r_ce4 { O 1 bit } image_r_q4 { I 32 vector } image_r_address5 { O 7 vector } image_r_ce5 { O 1 bit } image_r_q5 { I 32 vector } image_r_address6 { O 7 vector } image_r_ce6 { O 1 bit } image_r_q6 { I 32 vector } image_r_address7 { O 7 vector } image_r_ce7 { O 1 bit } image_r_q7 { I 32 vector } image_r_address8 { O 7 vector } image_r_ce8 { O 1 bit } image_r_q8 { I 32 vector } image_r_address9 { O 7 vector } image_r_ce9 { O 1 bit } image_r_q9 { I 32 vector } image_r_address10 { O 7 vector } image_r_ce10 { O 1 bit } image_r_q10 { I 32 vector } image_r_address11 { O 7 vector } image_r_ce11 { O 1 bit } image_r_q11 { I 32 vector } image_r_address12 { O 7 vector } image_r_ce12 { O 1 bit } image_r_q12 { I 32 vector } image_r_address13 { O 7 vector } image_r_ce13 { O 1 bit } image_r_q13 { I 32 vector } image_r_address14 { O 7 vector } image_r_ce14 { O 1 bit } image_r_q14 { I 32 vector } image_r_address15 { O 7 vector } image_r_ce15 { O 1 bit } image_r_q15 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'image_r'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 178 \
    name image_1 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename image_1 \
    op interface \
    ports { image_1_address0 { O 7 vector } image_1_ce0 { O 1 bit } image_1_q0 { I 32 vector } image_1_address1 { O 7 vector } image_1_ce1 { O 1 bit } image_1_q1 { I 32 vector } image_1_address2 { O 7 vector } image_1_ce2 { O 1 bit } image_1_q2 { I 32 vector } image_1_address3 { O 7 vector } image_1_ce3 { O 1 bit } image_1_q3 { I 32 vector } image_1_address4 { O 7 vector } image_1_ce4 { O 1 bit } image_1_q4 { I 32 vector } image_1_address5 { O 7 vector } image_1_ce5 { O 1 bit } image_1_q5 { I 32 vector } image_1_address6 { O 7 vector } image_1_ce6 { O 1 bit } image_1_q6 { I 32 vector } image_1_address7 { O 7 vector } image_1_ce7 { O 1 bit } image_1_q7 { I 32 vector } image_1_address8 { O 7 vector } image_1_ce8 { O 1 bit } image_1_q8 { I 32 vector } image_1_address9 { O 7 vector } image_1_ce9 { O 1 bit } image_1_q9 { I 32 vector } image_1_address10 { O 7 vector } image_1_ce10 { O 1 bit } image_1_q10 { I 32 vector } image_1_address11 { O 7 vector } image_1_ce11 { O 1 bit } image_1_q11 { I 32 vector } image_1_address12 { O 7 vector } image_1_ce12 { O 1 bit } image_1_q12 { I 32 vector } image_1_address13 { O 7 vector } image_1_ce13 { O 1 bit } image_1_q13 { I 32 vector } image_1_address14 { O 7 vector } image_1_ce14 { O 1 bit } image_1_q14 { I 32 vector } image_1_address15 { O 7 vector } image_1_ce15 { O 1 bit } image_1_q15 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'image_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 179 \
    name image_2 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename image_2 \
    op interface \
    ports { image_2_address0 { O 7 vector } image_2_ce0 { O 1 bit } image_2_q0 { I 32 vector } image_2_address1 { O 7 vector } image_2_ce1 { O 1 bit } image_2_q1 { I 32 vector } image_2_address2 { O 7 vector } image_2_ce2 { O 1 bit } image_2_q2 { I 32 vector } image_2_address3 { O 7 vector } image_2_ce3 { O 1 bit } image_2_q3 { I 32 vector } image_2_address4 { O 7 vector } image_2_ce4 { O 1 bit } image_2_q4 { I 32 vector } image_2_address5 { O 7 vector } image_2_ce5 { O 1 bit } image_2_q5 { I 32 vector } image_2_address6 { O 7 vector } image_2_ce6 { O 1 bit } image_2_q6 { I 32 vector } image_2_address7 { O 7 vector } image_2_ce7 { O 1 bit } image_2_q7 { I 32 vector } image_2_address8 { O 7 vector } image_2_ce8 { O 1 bit } image_2_q8 { I 32 vector } image_2_address9 { O 7 vector } image_2_ce9 { O 1 bit } image_2_q9 { I 32 vector } image_2_address10 { O 7 vector } image_2_ce10 { O 1 bit } image_2_q10 { I 32 vector } image_2_address11 { O 7 vector } image_2_ce11 { O 1 bit } image_2_q11 { I 32 vector } image_2_address12 { O 7 vector } image_2_ce12 { O 1 bit } image_2_q12 { I 32 vector } image_2_address13 { O 7 vector } image_2_ce13 { O 1 bit } image_2_q13 { I 32 vector } image_2_address14 { O 7 vector } image_2_ce14 { O 1 bit } image_2_q14 { I 32 vector } image_2_address15 { O 7 vector } image_2_ce15 { O 1 bit } image_2_q15 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'image_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 180 \
    name image_3 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename image_3 \
    op interface \
    ports { image_3_address0 { O 7 vector } image_3_ce0 { O 1 bit } image_3_q0 { I 32 vector } image_3_address1 { O 7 vector } image_3_ce1 { O 1 bit } image_3_q1 { I 32 vector } image_3_address2 { O 7 vector } image_3_ce2 { O 1 bit } image_3_q2 { I 32 vector } image_3_address3 { O 7 vector } image_3_ce3 { O 1 bit } image_3_q3 { I 32 vector } image_3_address4 { O 7 vector } image_3_ce4 { O 1 bit } image_3_q4 { I 32 vector } image_3_address5 { O 7 vector } image_3_ce5 { O 1 bit } image_3_q5 { I 32 vector } image_3_address6 { O 7 vector } image_3_ce6 { O 1 bit } image_3_q6 { I 32 vector } image_3_address7 { O 7 vector } image_3_ce7 { O 1 bit } image_3_q7 { I 32 vector } image_3_address8 { O 7 vector } image_3_ce8 { O 1 bit } image_3_q8 { I 32 vector } image_3_address9 { O 7 vector } image_3_ce9 { O 1 bit } image_3_q9 { I 32 vector } image_3_address10 { O 7 vector } image_3_ce10 { O 1 bit } image_3_q10 { I 32 vector } image_3_address11 { O 7 vector } image_3_ce11 { O 1 bit } image_3_q11 { I 32 vector } image_3_address12 { O 7 vector } image_3_ce12 { O 1 bit } image_3_q12 { I 32 vector } image_3_address13 { O 7 vector } image_3_ce13 { O 1 bit } image_3_q13 { I 32 vector } image_3_address14 { O 7 vector } image_3_ce14 { O 1 bit } image_3_q14 { I 32 vector } image_3_address15 { O 7 vector } image_3_ce15 { O 1 bit } image_3_q15 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'image_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 181 \
    name image_4 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename image_4 \
    op interface \
    ports { image_4_address0 { O 7 vector } image_4_ce0 { O 1 bit } image_4_q0 { I 32 vector } image_4_address1 { O 7 vector } image_4_ce1 { O 1 bit } image_4_q1 { I 32 vector } image_4_address2 { O 7 vector } image_4_ce2 { O 1 bit } image_4_q2 { I 32 vector } image_4_address3 { O 7 vector } image_4_ce3 { O 1 bit } image_4_q3 { I 32 vector } image_4_address4 { O 7 vector } image_4_ce4 { O 1 bit } image_4_q4 { I 32 vector } image_4_address5 { O 7 vector } image_4_ce5 { O 1 bit } image_4_q5 { I 32 vector } image_4_address6 { O 7 vector } image_4_ce6 { O 1 bit } image_4_q6 { I 32 vector } image_4_address7 { O 7 vector } image_4_ce7 { O 1 bit } image_4_q7 { I 32 vector } image_4_address8 { O 7 vector } image_4_ce8 { O 1 bit } image_4_q8 { I 32 vector } image_4_address9 { O 7 vector } image_4_ce9 { O 1 bit } image_4_q9 { I 32 vector } image_4_address10 { O 7 vector } image_4_ce10 { O 1 bit } image_4_q10 { I 32 vector } image_4_address11 { O 7 vector } image_4_ce11 { O 1 bit } image_4_q11 { I 32 vector } image_4_address12 { O 7 vector } image_4_ce12 { O 1 bit } image_4_q12 { I 32 vector } image_4_address13 { O 7 vector } image_4_ce13 { O 1 bit } image_4_q13 { I 32 vector } image_4_address14 { O 7 vector } image_4_ce14 { O 1 bit } image_4_q14 { I 32 vector } image_4_address15 { O 7 vector } image_4_ce15 { O 1 bit } image_4_q15 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'image_4'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 182 \
    name image_5 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename image_5 \
    op interface \
    ports { image_5_address0 { O 7 vector } image_5_ce0 { O 1 bit } image_5_q0 { I 32 vector } image_5_address1 { O 7 vector } image_5_ce1 { O 1 bit } image_5_q1 { I 32 vector } image_5_address2 { O 7 vector } image_5_ce2 { O 1 bit } image_5_q2 { I 32 vector } image_5_address3 { O 7 vector } image_5_ce3 { O 1 bit } image_5_q3 { I 32 vector } image_5_address4 { O 7 vector } image_5_ce4 { O 1 bit } image_5_q4 { I 32 vector } image_5_address5 { O 7 vector } image_5_ce5 { O 1 bit } image_5_q5 { I 32 vector } image_5_address6 { O 7 vector } image_5_ce6 { O 1 bit } image_5_q6 { I 32 vector } image_5_address7 { O 7 vector } image_5_ce7 { O 1 bit } image_5_q7 { I 32 vector } image_5_address8 { O 7 vector } image_5_ce8 { O 1 bit } image_5_q8 { I 32 vector } image_5_address9 { O 7 vector } image_5_ce9 { O 1 bit } image_5_q9 { I 32 vector } image_5_address10 { O 7 vector } image_5_ce10 { O 1 bit } image_5_q10 { I 32 vector } image_5_address11 { O 7 vector } image_5_ce11 { O 1 bit } image_5_q11 { I 32 vector } image_5_address12 { O 7 vector } image_5_ce12 { O 1 bit } image_5_q12 { I 32 vector } image_5_address13 { O 7 vector } image_5_ce13 { O 1 bit } image_5_q13 { I 32 vector } image_5_address14 { O 7 vector } image_5_ce14 { O 1 bit } image_5_q14 { I 32 vector } image_5_address15 { O 7 vector } image_5_ce15 { O 1 bit } image_5_q15 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'image_5'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 183 \
    name image_6 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename image_6 \
    op interface \
    ports { image_6_address0 { O 7 vector } image_6_ce0 { O 1 bit } image_6_q0 { I 32 vector } image_6_address1 { O 7 vector } image_6_ce1 { O 1 bit } image_6_q1 { I 32 vector } image_6_address2 { O 7 vector } image_6_ce2 { O 1 bit } image_6_q2 { I 32 vector } image_6_address3 { O 7 vector } image_6_ce3 { O 1 bit } image_6_q3 { I 32 vector } image_6_address4 { O 7 vector } image_6_ce4 { O 1 bit } image_6_q4 { I 32 vector } image_6_address5 { O 7 vector } image_6_ce5 { O 1 bit } image_6_q5 { I 32 vector } image_6_address6 { O 7 vector } image_6_ce6 { O 1 bit } image_6_q6 { I 32 vector } image_6_address7 { O 7 vector } image_6_ce7 { O 1 bit } image_6_q7 { I 32 vector } image_6_address8 { O 7 vector } image_6_ce8 { O 1 bit } image_6_q8 { I 32 vector } image_6_address9 { O 7 vector } image_6_ce9 { O 1 bit } image_6_q9 { I 32 vector } image_6_address10 { O 7 vector } image_6_ce10 { O 1 bit } image_6_q10 { I 32 vector } image_6_address11 { O 7 vector } image_6_ce11 { O 1 bit } image_6_q11 { I 32 vector } image_6_address12 { O 7 vector } image_6_ce12 { O 1 bit } image_6_q12 { I 32 vector } image_6_address13 { O 7 vector } image_6_ce13 { O 1 bit } image_6_q13 { I 32 vector } image_6_address14 { O 7 vector } image_6_ce14 { O 1 bit } image_6_q14 { I 32 vector } image_6_address15 { O 7 vector } image_6_ce15 { O 1 bit } image_6_q15 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'image_6'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 184 \
    name image_7 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename image_7 \
    op interface \
    ports { image_7_address0 { O 7 vector } image_7_ce0 { O 1 bit } image_7_q0 { I 32 vector } image_7_address1 { O 7 vector } image_7_ce1 { O 1 bit } image_7_q1 { I 32 vector } image_7_address2 { O 7 vector } image_7_ce2 { O 1 bit } image_7_q2 { I 32 vector } image_7_address3 { O 7 vector } image_7_ce3 { O 1 bit } image_7_q3 { I 32 vector } image_7_address4 { O 7 vector } image_7_ce4 { O 1 bit } image_7_q4 { I 32 vector } image_7_address5 { O 7 vector } image_7_ce5 { O 1 bit } image_7_q5 { I 32 vector } image_7_address6 { O 7 vector } image_7_ce6 { O 1 bit } image_7_q6 { I 32 vector } image_7_address7 { O 7 vector } image_7_ce7 { O 1 bit } image_7_q7 { I 32 vector } image_7_address8 { O 7 vector } image_7_ce8 { O 1 bit } image_7_q8 { I 32 vector } image_7_address9 { O 7 vector } image_7_ce9 { O 1 bit } image_7_q9 { I 32 vector } image_7_address10 { O 7 vector } image_7_ce10 { O 1 bit } image_7_q10 { I 32 vector } image_7_address11 { O 7 vector } image_7_ce11 { O 1 bit } image_7_q11 { I 32 vector } image_7_address12 { O 7 vector } image_7_ce12 { O 1 bit } image_7_q12 { I 32 vector } image_7_address13 { O 7 vector } image_7_ce13 { O 1 bit } image_7_q13 { I 32 vector } image_7_address14 { O 7 vector } image_7_ce14 { O 1 bit } image_7_q14 { I 32 vector } image_7_address15 { O 7 vector } image_7_ce15 { O 1 bit } image_7_q15 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'image_7'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 185 \
    name image_8 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename image_8 \
    op interface \
    ports { image_8_address0 { O 7 vector } image_8_ce0 { O 1 bit } image_8_q0 { I 32 vector } image_8_address1 { O 7 vector } image_8_ce1 { O 1 bit } image_8_q1 { I 32 vector } image_8_address2 { O 7 vector } image_8_ce2 { O 1 bit } image_8_q2 { I 32 vector } image_8_address3 { O 7 vector } image_8_ce3 { O 1 bit } image_8_q3 { I 32 vector } image_8_address4 { O 7 vector } image_8_ce4 { O 1 bit } image_8_q4 { I 32 vector } image_8_address5 { O 7 vector } image_8_ce5 { O 1 bit } image_8_q5 { I 32 vector } image_8_address6 { O 7 vector } image_8_ce6 { O 1 bit } image_8_q6 { I 32 vector } image_8_address7 { O 7 vector } image_8_ce7 { O 1 bit } image_8_q7 { I 32 vector } image_8_address8 { O 7 vector } image_8_ce8 { O 1 bit } image_8_q8 { I 32 vector } image_8_address9 { O 7 vector } image_8_ce9 { O 1 bit } image_8_q9 { I 32 vector } image_8_address10 { O 7 vector } image_8_ce10 { O 1 bit } image_8_q10 { I 32 vector } image_8_address11 { O 7 vector } image_8_ce11 { O 1 bit } image_8_q11 { I 32 vector } image_8_address12 { O 7 vector } image_8_ce12 { O 1 bit } image_8_q12 { I 32 vector } image_8_address13 { O 7 vector } image_8_ce13 { O 1 bit } image_8_q13 { I 32 vector } image_8_address14 { O 7 vector } image_8_ce14 { O 1 bit } image_8_q14 { I 32 vector } image_8_address15 { O 7 vector } image_8_ce15 { O 1 bit } image_8_q15 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'image_8'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 186 \
    name pool_stream \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_pool_stream \
    op interface \
    ports { pool_stream_din { O 32 vector } pool_stream_num_data_valid { I 3 vector } pool_stream_fifo_cap { I 3 vector } pool_stream_full_n { I 1 bit } pool_stream_write { O 1 bit } } \
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


# PVB definition:
set ID 0
set PvbName cnn_accelerator_frp_pipeline_valid
set InstName cnn_accelerator_frp_pipeline_valid_U
set CoreName ap_simcore_frp_validbits
set NumOfStage 2
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $PvbName BINDTYPE interface TYPE internal_frp_validbits INSTNAME $InstName
}


if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_frp_validbits] == "::AESL_LIB_VIRTEX::xil_gen_frp_validbits"} {
eval "::AESL_LIB_VIRTEX::xil_gen_frp_validbits { \
    name ${PvbName} \
    prefix cnn_accelerator_\
}"
} else {
puts "@W \[IMPL-107\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_frp_validbits, check your platform lib"
}
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


