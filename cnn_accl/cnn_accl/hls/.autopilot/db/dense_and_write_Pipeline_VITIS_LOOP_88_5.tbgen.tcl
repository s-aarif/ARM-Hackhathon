set moduleName dense_and_write_Pipeline_VITIS_LOOP_88_5
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
set C_modelName {dense_and_write_Pipeline_VITIS_LOOP_88_5}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ add9_reload float 32 regular  }
	{ add_110_reload float 32 regular  }
	{ add_211_reload float 32 regular  }
	{ add_312_reload float 32 regular  }
	{ add_413_reload float 32 regular  }
	{ add_514_reload float 32 regular  }
	{ add_615_reload float 32 regular  }
	{ add_716_reload float 32 regular  }
	{ add_817_reload float 32 regular  }
	{ add_918_reload float 32 regular  }
	{ out_stream_V_data_V int 32 regular {axi_s 1 volatile  { out_stream Data } }  }
	{ out_stream_V_keep_V int 4 regular {axi_s 1 volatile  { out_stream Keep } }  }
	{ out_stream_V_strb_V int 4 regular {axi_s 1 volatile  { out_stream Strb } }  }
	{ out_stream_V_user_V int 1 regular {axi_s 1 volatile  { out_stream User } }  }
	{ out_stream_V_last_V int 1 regular {axi_s 1 volatile  { out_stream Last } }  }
	{ out_stream_V_id_V int 1 regular {axi_s 1 volatile  { out_stream ID } }  }
	{ out_stream_V_dest_V int 1 regular {axi_s 1 volatile  { out_stream Dest } }  }
}
set hasAXIMCache 0
set hasAXIML2Cache 0
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "add9_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "add_110_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "add_211_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "add_312_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "add_413_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "add_514_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "add_615_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "add_716_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "add_817_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "add_918_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "out_stream_V_data_V", "interface" : "axis", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "out_stream_V_keep_V", "interface" : "axis", "bitwidth" : 4, "direction" : "WRITEONLY"} , 
 	{ "Name" : "out_stream_V_strb_V", "interface" : "axis", "bitwidth" : 4, "direction" : "WRITEONLY"} , 
 	{ "Name" : "out_stream_V_user_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "out_stream_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "out_stream_V_id_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "out_stream_V_dest_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 25
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ out_stream_TREADY sc_in sc_logic 1 outacc 10 } 
	{ add9_reload sc_in sc_lv 32 signal 0 } 
	{ add_110_reload sc_in sc_lv 32 signal 1 } 
	{ add_211_reload sc_in sc_lv 32 signal 2 } 
	{ add_312_reload sc_in sc_lv 32 signal 3 } 
	{ add_413_reload sc_in sc_lv 32 signal 4 } 
	{ add_514_reload sc_in sc_lv 32 signal 5 } 
	{ add_615_reload sc_in sc_lv 32 signal 6 } 
	{ add_716_reload sc_in sc_lv 32 signal 7 } 
	{ add_817_reload sc_in sc_lv 32 signal 8 } 
	{ add_918_reload sc_in sc_lv 32 signal 9 } 
	{ out_stream_TDATA sc_out sc_lv 32 signal 10 } 
	{ out_stream_TVALID sc_out sc_logic 1 outvld 16 } 
	{ out_stream_TKEEP sc_out sc_lv 4 signal 11 } 
	{ out_stream_TSTRB sc_out sc_lv 4 signal 12 } 
	{ out_stream_TUSER sc_out sc_lv 1 signal 13 } 
	{ out_stream_TLAST sc_out sc_lv 1 signal 14 } 
	{ out_stream_TID sc_out sc_lv 1 signal 15 } 
	{ out_stream_TDEST sc_out sc_lv 1 signal 16 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "out_stream_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "out_stream_V_data_V", "role": "default" }} , 
 	{ "name": "add9_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "add9_reload", "role": "default" }} , 
 	{ "name": "add_110_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "add_110_reload", "role": "default" }} , 
 	{ "name": "add_211_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "add_211_reload", "role": "default" }} , 
 	{ "name": "add_312_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "add_312_reload", "role": "default" }} , 
 	{ "name": "add_413_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "add_413_reload", "role": "default" }} , 
 	{ "name": "add_514_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "add_514_reload", "role": "default" }} , 
 	{ "name": "add_615_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "add_615_reload", "role": "default" }} , 
 	{ "name": "add_716_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "add_716_reload", "role": "default" }} , 
 	{ "name": "add_817_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "add_817_reload", "role": "default" }} , 
 	{ "name": "add_918_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "add_918_reload", "role": "default" }} , 
 	{ "name": "out_stream_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "out_stream_V_data_V", "role": "default" }} , 
 	{ "name": "out_stream_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "out_stream_V_dest_V", "role": "default" }} , 
 	{ "name": "out_stream_TKEEP", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "out_stream_V_keep_V", "role": "default" }} , 
 	{ "name": "out_stream_TSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "out_stream_V_strb_V", "role": "default" }} , 
 	{ "name": "out_stream_TUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "out_stream_V_user_V", "role": "default" }} , 
 	{ "name": "out_stream_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "out_stream_V_last_V", "role": "default" }} , 
 	{ "name": "out_stream_TID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "out_stream_V_id_V", "role": "default" }} , 
 	{ "name": "out_stream_TDEST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "out_stream_V_dest_V", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "dense_and_write_Pipeline_VITIS_LOOP_88_5",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "12", "EstimateLatencyMax" : "12",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "add9_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "add_110_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "add_211_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "add_312_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "add_413_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "add_514_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "add_615_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "add_716_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "add_817_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "add_918_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_stream_V_data_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "out_stream",
				"BlockSignal" : [
					{"Name" : "out_stream_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "out_stream_V_keep_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "out_stream"},
			{"Name" : "out_stream_V_strb_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "out_stream"},
			{"Name" : "out_stream_V_user_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "out_stream"},
			{"Name" : "out_stream_V_last_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "out_stream"},
			{"Name" : "out_stream_V_id_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "out_stream"},
			{"Name" : "out_stream_V_dest_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "out_stream"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_88_5", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_21_4_32_1_1_U206", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	dense_and_write_Pipeline_VITIS_LOOP_88_5 {
		add9_reload {Type I LastRead 0 FirstWrite -1}
		add_110_reload {Type I LastRead 0 FirstWrite -1}
		add_211_reload {Type I LastRead 0 FirstWrite -1}
		add_312_reload {Type I LastRead 0 FirstWrite -1}
		add_413_reload {Type I LastRead 0 FirstWrite -1}
		add_514_reload {Type I LastRead 0 FirstWrite -1}
		add_615_reload {Type I LastRead 0 FirstWrite -1}
		add_716_reload {Type I LastRead 0 FirstWrite -1}
		add_817_reload {Type I LastRead 0 FirstWrite -1}
		add_918_reload {Type I LastRead 0 FirstWrite -1}
		out_stream_V_data_V {Type O LastRead -1 FirstWrite 1}
		out_stream_V_keep_V {Type O LastRead -1 FirstWrite 1}
		out_stream_V_strb_V {Type O LastRead -1 FirstWrite 1}
		out_stream_V_user_V {Type O LastRead -1 FirstWrite 1}
		out_stream_V_last_V {Type O LastRead -1 FirstWrite 1}
		out_stream_V_id_V {Type O LastRead -1 FirstWrite 1}
		out_stream_V_dest_V {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "12", "Max" : "12"}
	, {"Name" : "Interval", "Min" : "12", "Max" : "12"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	add9_reload { ap_none {  { add9_reload in_data 0 32 } } }
	add_110_reload { ap_none {  { add_110_reload in_data 0 32 } } }
	add_211_reload { ap_none {  { add_211_reload in_data 0 32 } } }
	add_312_reload { ap_none {  { add_312_reload in_data 0 32 } } }
	add_413_reload { ap_none {  { add_413_reload in_data 0 32 } } }
	add_514_reload { ap_none {  { add_514_reload in_data 0 32 } } }
	add_615_reload { ap_none {  { add_615_reload in_data 0 32 } } }
	add_716_reload { ap_none {  { add_716_reload in_data 0 32 } } }
	add_817_reload { ap_none {  { add_817_reload in_data 0 32 } } }
	add_918_reload { ap_none {  { add_918_reload in_data 0 32 } } }
	out_stream_V_data_V { axis {  { out_stream_TREADY out_acc 0 1 }  { out_stream_TDATA out_data 1 32 } } }
	out_stream_V_keep_V { axis {  { out_stream_TKEEP out_data 1 4 } } }
	out_stream_V_strb_V { axis {  { out_stream_TSTRB out_data 1 4 } } }
	out_stream_V_user_V { axis {  { out_stream_TUSER out_data 1 1 } } }
	out_stream_V_last_V { axis {  { out_stream_TLAST out_data 1 1 } } }
	out_stream_V_id_V { axis {  { out_stream_TID out_data 1 1 } } }
	out_stream_V_dest_V { axis {  { out_stream_TVALID out_vld 1 1 }  { out_stream_TDEST out_data 1 1 } } }
}
