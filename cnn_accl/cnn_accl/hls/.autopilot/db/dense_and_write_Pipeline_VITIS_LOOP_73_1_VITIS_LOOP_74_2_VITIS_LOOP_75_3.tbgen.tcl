set moduleName dense_and_write_Pipeline_VITIS_LOOP_73_1_VITIS_LOOP_74_2_VITIS_LOOP_75_3
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
set C_modelName {dense_and_write_Pipeline_VITIS_LOOP_73_1_VITIS_LOOP_74_2_VITIS_LOOP_75_3}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ pool_stream int 32 regular {fifo 0 volatile }  }
	{ add_918_out float 32 regular {pointer 1}  }
	{ add_817_out float 32 regular {pointer 1}  }
	{ add_716_out float 32 regular {pointer 1}  }
	{ add_615_out float 32 regular {pointer 1}  }
	{ add_514_out float 32 regular {pointer 1}  }
	{ add_413_out float 32 regular {pointer 1}  }
	{ add_312_out float 32 regular {pointer 1}  }
	{ add_211_out float 32 regular {pointer 1}  }
	{ add_110_out float 32 regular {pointer 1}  }
	{ add9_out float 32 regular {pointer 1}  }
}
set hasAXIMCache 0
set hasAXIML2Cache 0
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "pool_stream", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "add_918_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "add_817_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "add_716_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "add_615_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "add_514_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "add_413_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "add_312_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "add_211_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "add_110_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "add9_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 31
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ pool_stream_dout sc_in sc_lv 32 signal 0 } 
	{ pool_stream_num_data_valid sc_in sc_lv 3 signal 0 } 
	{ pool_stream_fifo_cap sc_in sc_lv 3 signal 0 } 
	{ pool_stream_empty_n sc_in sc_logic 1 signal 0 } 
	{ pool_stream_read sc_out sc_logic 1 signal 0 } 
	{ add_918_out sc_out sc_lv 32 signal 1 } 
	{ add_918_out_ap_vld sc_out sc_logic 1 outvld 1 } 
	{ add_817_out sc_out sc_lv 32 signal 2 } 
	{ add_817_out_ap_vld sc_out sc_logic 1 outvld 2 } 
	{ add_716_out sc_out sc_lv 32 signal 3 } 
	{ add_716_out_ap_vld sc_out sc_logic 1 outvld 3 } 
	{ add_615_out sc_out sc_lv 32 signal 4 } 
	{ add_615_out_ap_vld sc_out sc_logic 1 outvld 4 } 
	{ add_514_out sc_out sc_lv 32 signal 5 } 
	{ add_514_out_ap_vld sc_out sc_logic 1 outvld 5 } 
	{ add_413_out sc_out sc_lv 32 signal 6 } 
	{ add_413_out_ap_vld sc_out sc_logic 1 outvld 6 } 
	{ add_312_out sc_out sc_lv 32 signal 7 } 
	{ add_312_out_ap_vld sc_out sc_logic 1 outvld 7 } 
	{ add_211_out sc_out sc_lv 32 signal 8 } 
	{ add_211_out_ap_vld sc_out sc_logic 1 outvld 8 } 
	{ add_110_out sc_out sc_lv 32 signal 9 } 
	{ add_110_out_ap_vld sc_out sc_logic 1 outvld 9 } 
	{ add9_out sc_out sc_lv 32 signal 10 } 
	{ add9_out_ap_vld sc_out sc_logic 1 outvld 10 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "pool_stream_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pool_stream", "role": "dout" }} , 
 	{ "name": "pool_stream_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "pool_stream", "role": "num_data_valid" }} , 
 	{ "name": "pool_stream_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "pool_stream", "role": "fifo_cap" }} , 
 	{ "name": "pool_stream_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pool_stream", "role": "empty_n" }} , 
 	{ "name": "pool_stream_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pool_stream", "role": "read" }} , 
 	{ "name": "add_918_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "add_918_out", "role": "default" }} , 
 	{ "name": "add_918_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "add_918_out", "role": "ap_vld" }} , 
 	{ "name": "add_817_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "add_817_out", "role": "default" }} , 
 	{ "name": "add_817_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "add_817_out", "role": "ap_vld" }} , 
 	{ "name": "add_716_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "add_716_out", "role": "default" }} , 
 	{ "name": "add_716_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "add_716_out", "role": "ap_vld" }} , 
 	{ "name": "add_615_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "add_615_out", "role": "default" }} , 
 	{ "name": "add_615_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "add_615_out", "role": "ap_vld" }} , 
 	{ "name": "add_514_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "add_514_out", "role": "default" }} , 
 	{ "name": "add_514_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "add_514_out", "role": "ap_vld" }} , 
 	{ "name": "add_413_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "add_413_out", "role": "default" }} , 
 	{ "name": "add_413_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "add_413_out", "role": "ap_vld" }} , 
 	{ "name": "add_312_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "add_312_out", "role": "default" }} , 
 	{ "name": "add_312_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "add_312_out", "role": "ap_vld" }} , 
 	{ "name": "add_211_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "add_211_out", "role": "default" }} , 
 	{ "name": "add_211_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "add_211_out", "role": "ap_vld" }} , 
 	{ "name": "add_110_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "add_110_out", "role": "default" }} , 
 	{ "name": "add_110_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "add_110_out", "role": "ap_vld" }} , 
 	{ "name": "add9_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "add9_out", "role": "default" }} , 
 	{ "name": "add9_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "add9_out", "role": "ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6"],
		"CDFG" : "dense_and_write_Pipeline_VITIS_LOOP_73_1_VITIS_LOOP_74_2_VITIS_LOOP_75_3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4065", "EstimateLatencyMax" : "4065",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "pool_stream", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "pool_stream_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "add_918_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add_817_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add_716_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add_615_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add_514_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add_413_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add_312_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add_211_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add_110_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add9_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_73_1_VITIS_LOOP_74_2_VITIS_LOOP_75_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "3", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage1", "LastStateIter" : "ap_enable_reg_pp0_iter3", "LastStateBlock" : "ap_block_pp0_stage1_subdone", "QuitState" : "ap_ST_fsm_pp0_stage1", "QuitStateIter" : "ap_enable_reg_pp0_iter3", "QuitStateBlock" : "ap_block_pp0_stage1_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_4_full_dsp_1_U190", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_4_full_dsp_1_U191", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_4_full_dsp_1_U192", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_4_full_dsp_1_U193", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_3_max_dsp_1_U194", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	dense_and_write_Pipeline_VITIS_LOOP_73_1_VITIS_LOOP_74_2_VITIS_LOOP_75_3 {
		pool_stream {Type I LastRead 1 FirstWrite -1}
		add_918_out {Type O LastRead -1 FirstWrite 7}
		add_817_out {Type O LastRead -1 FirstWrite 7}
		add_716_out {Type O LastRead -1 FirstWrite 7}
		add_615_out {Type O LastRead -1 FirstWrite 7}
		add_514_out {Type O LastRead -1 FirstWrite 7}
		add_413_out {Type O LastRead -1 FirstWrite 7}
		add_312_out {Type O LastRead -1 FirstWrite 7}
		add_211_out {Type O LastRead -1 FirstWrite 7}
		add_110_out {Type O LastRead -1 FirstWrite 7}
		add9_out {Type O LastRead -1 FirstWrite 7}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "4065", "Max" : "4065"}
	, {"Name" : "Interval", "Min" : "4065", "Max" : "4065"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	pool_stream { ap_fifo {  { pool_stream_dout fifo_data_in 0 32 }  { pool_stream_num_data_valid fifo_status_num_data_valid 0 3 }  { pool_stream_fifo_cap fifo_update 0 3 }  { pool_stream_empty_n fifo_status 0 1 }  { pool_stream_read fifo_port_we 1 1 } } }
	add_918_out { ap_vld {  { add_918_out out_data 1 32 }  { add_918_out_ap_vld out_vld 1 1 } } }
	add_817_out { ap_vld {  { add_817_out out_data 1 32 }  { add_817_out_ap_vld out_vld 1 1 } } }
	add_716_out { ap_vld {  { add_716_out out_data 1 32 }  { add_716_out_ap_vld out_vld 1 1 } } }
	add_615_out { ap_vld {  { add_615_out out_data 1 32 }  { add_615_out_ap_vld out_vld 1 1 } } }
	add_514_out { ap_vld {  { add_514_out out_data 1 32 }  { add_514_out_ap_vld out_vld 1 1 } } }
	add_413_out { ap_vld {  { add_413_out out_data 1 32 }  { add_413_out_ap_vld out_vld 1 1 } } }
	add_312_out { ap_vld {  { add_312_out out_data 1 32 }  { add_312_out_ap_vld out_vld 1 1 } } }
	add_211_out { ap_vld {  { add_211_out out_data 1 32 }  { add_211_out_ap_vld out_vld 1 1 } } }
	add_110_out { ap_vld {  { add_110_out out_data 1 32 }  { add_110_out_ap_vld out_vld 1 1 } } }
	add9_out { ap_vld {  { add9_out out_data 1 32 }  { add9_out_ap_vld out_vld 1 1 } } }
}
