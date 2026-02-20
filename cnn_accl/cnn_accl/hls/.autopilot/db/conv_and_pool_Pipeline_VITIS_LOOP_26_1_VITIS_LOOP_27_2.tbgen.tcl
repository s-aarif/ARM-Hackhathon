set moduleName conv_and_pool_Pipeline_VITIS_LOOP_26_1_VITIS_LOOP_27_2
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set DLRegFirstOffset 0
set DLRegItemOffset 0
set C_modelName {conv_and_pool_Pipeline_VITIS_LOOP_26_1_VITIS_LOOP_27_2}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict image_r { MEM_WIDTH 32 MEM_SIZE 400 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict image_1 { MEM_WIDTH 32 MEM_SIZE 400 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict image_2 { MEM_WIDTH 32 MEM_SIZE 400 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict image_3 { MEM_WIDTH 32 MEM_SIZE 400 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict image_4 { MEM_WIDTH 32 MEM_SIZE 400 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict image_5 { MEM_WIDTH 32 MEM_SIZE 400 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict image_6 { MEM_WIDTH 32 MEM_SIZE 400 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict image_7 { MEM_WIDTH 32 MEM_SIZE 400 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict image_8 { MEM_WIDTH 32 MEM_SIZE 400 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
set C_modelArgList {
	{ image_r float 32 regular {array 100 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ image_1 float 32 regular {array 100 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ image_2 float 32 regular {array 100 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ image_3 float 32 regular {array 100 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ image_4 float 32 regular {array 100 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ image_5 float 32 regular {array 100 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ image_6 float 32 regular {array 100 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ image_7 float 32 regular {array 100 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ image_8 float 32 regular {array 100 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ img_stream int 32 regular {fifo 0 volatile }  }
}
set hasAXIMCache 0
set hasAXIML2Cache 0
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "image_r", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "image_1", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "image_2", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "image_3", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "image_4", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "image_5", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "image_6", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "image_7", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "image_8", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "img_stream", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 47
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ img_stream_dout sc_in sc_lv 32 signal 9 } 
	{ img_stream_num_data_valid sc_in sc_lv 3 signal 9 } 
	{ img_stream_fifo_cap sc_in sc_lv 3 signal 9 } 
	{ img_stream_empty_n sc_in sc_logic 1 signal 9 } 
	{ img_stream_read sc_out sc_logic 1 signal 9 } 
	{ image_r_address0 sc_out sc_lv 7 signal 0 } 
	{ image_r_ce0 sc_out sc_logic 1 signal 0 } 
	{ image_r_we0 sc_out sc_logic 1 signal 0 } 
	{ image_r_d0 sc_out sc_lv 32 signal 0 } 
	{ image_1_address0 sc_out sc_lv 7 signal 1 } 
	{ image_1_ce0 sc_out sc_logic 1 signal 1 } 
	{ image_1_we0 sc_out sc_logic 1 signal 1 } 
	{ image_1_d0 sc_out sc_lv 32 signal 1 } 
	{ image_2_address0 sc_out sc_lv 7 signal 2 } 
	{ image_2_ce0 sc_out sc_logic 1 signal 2 } 
	{ image_2_we0 sc_out sc_logic 1 signal 2 } 
	{ image_2_d0 sc_out sc_lv 32 signal 2 } 
	{ image_3_address0 sc_out sc_lv 7 signal 3 } 
	{ image_3_ce0 sc_out sc_logic 1 signal 3 } 
	{ image_3_we0 sc_out sc_logic 1 signal 3 } 
	{ image_3_d0 sc_out sc_lv 32 signal 3 } 
	{ image_4_address0 sc_out sc_lv 7 signal 4 } 
	{ image_4_ce0 sc_out sc_logic 1 signal 4 } 
	{ image_4_we0 sc_out sc_logic 1 signal 4 } 
	{ image_4_d0 sc_out sc_lv 32 signal 4 } 
	{ image_5_address0 sc_out sc_lv 7 signal 5 } 
	{ image_5_ce0 sc_out sc_logic 1 signal 5 } 
	{ image_5_we0 sc_out sc_logic 1 signal 5 } 
	{ image_5_d0 sc_out sc_lv 32 signal 5 } 
	{ image_6_address0 sc_out sc_lv 7 signal 6 } 
	{ image_6_ce0 sc_out sc_logic 1 signal 6 } 
	{ image_6_we0 sc_out sc_logic 1 signal 6 } 
	{ image_6_d0 sc_out sc_lv 32 signal 6 } 
	{ image_7_address0 sc_out sc_lv 7 signal 7 } 
	{ image_7_ce0 sc_out sc_logic 1 signal 7 } 
	{ image_7_we0 sc_out sc_logic 1 signal 7 } 
	{ image_7_d0 sc_out sc_lv 32 signal 7 } 
	{ image_8_address0 sc_out sc_lv 7 signal 8 } 
	{ image_8_ce0 sc_out sc_logic 1 signal 8 } 
	{ image_8_we0 sc_out sc_logic 1 signal 8 } 
	{ image_8_d0 sc_out sc_lv 32 signal 8 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "img_stream_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "img_stream", "role": "dout" }} , 
 	{ "name": "img_stream_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "img_stream", "role": "num_data_valid" }} , 
 	{ "name": "img_stream_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "img_stream", "role": "fifo_cap" }} , 
 	{ "name": "img_stream_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img_stream", "role": "empty_n" }} , 
 	{ "name": "img_stream_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img_stream", "role": "read" }} , 
 	{ "name": "image_r_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "image_r", "role": "address0" }} , 
 	{ "name": "image_r_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "image_r", "role": "ce0" }} , 
 	{ "name": "image_r_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "image_r", "role": "we0" }} , 
 	{ "name": "image_r_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "image_r", "role": "d0" }} , 
 	{ "name": "image_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "image_1", "role": "address0" }} , 
 	{ "name": "image_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "image_1", "role": "ce0" }} , 
 	{ "name": "image_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "image_1", "role": "we0" }} , 
 	{ "name": "image_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "image_1", "role": "d0" }} , 
 	{ "name": "image_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "image_2", "role": "address0" }} , 
 	{ "name": "image_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "image_2", "role": "ce0" }} , 
 	{ "name": "image_2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "image_2", "role": "we0" }} , 
 	{ "name": "image_2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "image_2", "role": "d0" }} , 
 	{ "name": "image_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "image_3", "role": "address0" }} , 
 	{ "name": "image_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "image_3", "role": "ce0" }} , 
 	{ "name": "image_3_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "image_3", "role": "we0" }} , 
 	{ "name": "image_3_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "image_3", "role": "d0" }} , 
 	{ "name": "image_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "image_4", "role": "address0" }} , 
 	{ "name": "image_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "image_4", "role": "ce0" }} , 
 	{ "name": "image_4_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "image_4", "role": "we0" }} , 
 	{ "name": "image_4_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "image_4", "role": "d0" }} , 
 	{ "name": "image_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "image_5", "role": "address0" }} , 
 	{ "name": "image_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "image_5", "role": "ce0" }} , 
 	{ "name": "image_5_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "image_5", "role": "we0" }} , 
 	{ "name": "image_5_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "image_5", "role": "d0" }} , 
 	{ "name": "image_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "image_6", "role": "address0" }} , 
 	{ "name": "image_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "image_6", "role": "ce0" }} , 
 	{ "name": "image_6_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "image_6", "role": "we0" }} , 
 	{ "name": "image_6_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "image_6", "role": "d0" }} , 
 	{ "name": "image_7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "image_7", "role": "address0" }} , 
 	{ "name": "image_7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "image_7", "role": "ce0" }} , 
 	{ "name": "image_7_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "image_7", "role": "we0" }} , 
 	{ "name": "image_7_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "image_7", "role": "d0" }} , 
 	{ "name": "image_8_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "image_8", "role": "address0" }} , 
 	{ "name": "image_8_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "image_8", "role": "ce0" }} , 
 	{ "name": "image_8_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "image_8", "role": "we0" }} , 
 	{ "name": "image_8_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "image_8", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5"],
		"CDFG" : "conv_and_pool_Pipeline_VITIS_LOOP_26_1_VITIS_LOOP_27_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "793", "EstimateLatencyMax" : "793",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "image_r", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "image_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "image_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "image_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "image_4", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "image_5", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "image_6", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "image_7", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "image_8", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "img_stream", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "img_stream_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_26_1_VITIS_LOOP_27_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter8", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter8", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.urem_5ns_5ns_5_9_1_U16", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_5ns_7ns_11_1_1_U17", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.urem_5ns_5ns_5_9_1_U18", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_5ns_7ns_11_1_1_U19", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	conv_and_pool_Pipeline_VITIS_LOOP_26_1_VITIS_LOOP_27_2 {
		image_r {Type O LastRead -1 FirstWrite 8}
		image_1 {Type O LastRead -1 FirstWrite 8}
		image_2 {Type O LastRead -1 FirstWrite 8}
		image_3 {Type O LastRead -1 FirstWrite 8}
		image_4 {Type O LastRead -1 FirstWrite 8}
		image_5 {Type O LastRead -1 FirstWrite 8}
		image_6 {Type O LastRead -1 FirstWrite 8}
		image_7 {Type O LastRead -1 FirstWrite 8}
		image_8 {Type O LastRead -1 FirstWrite 8}
		img_stream {Type I LastRead 8 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "793", "Max" : "793"}
	, {"Name" : "Interval", "Min" : "793", "Max" : "793"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	image_r { ap_memory {  { image_r_address0 mem_address 1 7 }  { image_r_ce0 mem_ce 1 1 }  { image_r_we0 mem_we 1 1 }  { image_r_d0 mem_din 1 32 } } }
	image_1 { ap_memory {  { image_1_address0 mem_address 1 7 }  { image_1_ce0 mem_ce 1 1 }  { image_1_we0 mem_we 1 1 }  { image_1_d0 mem_din 1 32 } } }
	image_2 { ap_memory {  { image_2_address0 mem_address 1 7 }  { image_2_ce0 mem_ce 1 1 }  { image_2_we0 mem_we 1 1 }  { image_2_d0 mem_din 1 32 } } }
	image_3 { ap_memory {  { image_3_address0 mem_address 1 7 }  { image_3_ce0 mem_ce 1 1 }  { image_3_we0 mem_we 1 1 }  { image_3_d0 mem_din 1 32 } } }
	image_4 { ap_memory {  { image_4_address0 mem_address 1 7 }  { image_4_ce0 mem_ce 1 1 }  { image_4_we0 mem_we 1 1 }  { image_4_d0 mem_din 1 32 } } }
	image_5 { ap_memory {  { image_5_address0 mem_address 1 7 }  { image_5_ce0 mem_ce 1 1 }  { image_5_we0 mem_we 1 1 }  { image_5_d0 mem_din 1 32 } } }
	image_6 { ap_memory {  { image_6_address0 mem_address 1 7 }  { image_6_ce0 mem_ce 1 1 }  { image_6_we0 mem_we 1 1 }  { image_6_d0 mem_din 1 32 } } }
	image_7 { ap_memory {  { image_7_address0 mem_address 1 7 }  { image_7_ce0 mem_ce 1 1 }  { image_7_we0 mem_we 1 1 }  { image_7_d0 mem_din 1 32 } } }
	image_8 { ap_memory {  { image_8_address0 mem_address 1 7 }  { image_8_ce0 mem_ce 1 1 }  { image_8_we0 mem_we 1 1 }  { image_8_d0 mem_din 1 32 } } }
	img_stream { ap_fifo {  { img_stream_dout fifo_data_in 0 32 }  { img_stream_num_data_valid fifo_status_num_data_valid 0 3 }  { img_stream_fifo_cap fifo_update 0 3 }  { img_stream_empty_n fifo_status 0 1 }  { img_stream_read fifo_port_we 1 1 } } }
}
