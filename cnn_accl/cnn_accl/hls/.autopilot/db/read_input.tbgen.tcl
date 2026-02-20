set moduleName read_input
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
set C_modelName {read_input}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ in_stream_V_data_V int 32 regular {axi_s 0 volatile  { in_stream Data } }  }
	{ in_stream_V_keep_V int 4 regular {axi_s 0 volatile  { in_stream Keep } }  }
	{ in_stream_V_strb_V int 4 regular {axi_s 0 volatile  { in_stream Strb } }  }
	{ in_stream_V_user_V int 1 regular {axi_s 0 volatile  { in_stream User } }  }
	{ in_stream_V_last_V int 1 regular {axi_s 0 volatile  { in_stream Last } }  }
	{ in_stream_V_id_V int 1 regular {axi_s 0 volatile  { in_stream ID } }  }
	{ in_stream_V_dest_V int 1 regular {axi_s 0 volatile  { in_stream Dest } }  }
	{ img_stream int 32 regular {fifo 1 volatile }  }
}
set hasAXIMCache 0
set hasAXIML2Cache 0
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "in_stream_V_data_V", "interface" : "axis", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "in_stream_V_keep_V", "interface" : "axis", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "in_stream_V_strb_V", "interface" : "axis", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "in_stream_V_user_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "in_stream_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "in_stream_V_id_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "in_stream_V_dest_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "img_stream", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 24
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ start_full_n sc_in sc_logic 1 signal -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ in_stream_TVALID sc_in sc_logic 1 invld 6 } 
	{ img_stream_din sc_out sc_lv 32 signal 7 } 
	{ img_stream_num_data_valid sc_in sc_lv 3 signal 7 } 
	{ img_stream_fifo_cap sc_in sc_lv 3 signal 7 } 
	{ img_stream_full_n sc_in sc_logic 1 signal 7 } 
	{ img_stream_write sc_out sc_logic 1 signal 7 } 
	{ start_out sc_out sc_logic 1 signal -1 } 
	{ start_write sc_out sc_logic 1 signal -1 } 
	{ in_stream_TDATA sc_in sc_lv 32 signal 0 } 
	{ in_stream_TREADY sc_out sc_logic 1 inacc 6 } 
	{ in_stream_TKEEP sc_in sc_lv 4 signal 1 } 
	{ in_stream_TSTRB sc_in sc_lv 4 signal 2 } 
	{ in_stream_TUSER sc_in sc_lv 1 signal 3 } 
	{ in_stream_TLAST sc_in sc_lv 1 signal 4 } 
	{ in_stream_TID sc_in sc_lv 1 signal 5 } 
	{ in_stream_TDEST sc_in sc_lv 1 signal 6 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "start_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_full_n", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "in_stream_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "in_stream_V_dest_V", "role": "default" }} , 
 	{ "name": "img_stream_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "img_stream", "role": "din" }} , 
 	{ "name": "img_stream_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "img_stream", "role": "num_data_valid" }} , 
 	{ "name": "img_stream_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "img_stream", "role": "fifo_cap" }} , 
 	{ "name": "img_stream_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img_stream", "role": "full_n" }} , 
 	{ "name": "img_stream_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img_stream", "role": "write" }} , 
 	{ "name": "start_out", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_out", "role": "default" }} , 
 	{ "name": "start_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_write", "role": "default" }} , 
 	{ "name": "in_stream_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "in_stream_V_data_V", "role": "default" }} , 
 	{ "name": "in_stream_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "in_stream_V_dest_V", "role": "default" }} , 
 	{ "name": "in_stream_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "in_stream_V_keep_V", "role": "default" }} , 
 	{ "name": "in_stream_TSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "in_stream_V_strb_V", "role": "default" }} , 
 	{ "name": "in_stream_TUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "in_stream_V_user_V", "role": "default" }} , 
 	{ "name": "in_stream_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "in_stream_V_last_V", "role": "default" }} , 
 	{ "name": "in_stream_TID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "in_stream_V_id_V", "role": "default" }} , 
 	{ "name": "in_stream_TDEST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "in_stream_V_dest_V", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8"],
		"CDFG" : "read_input",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "785", "EstimateLatencyMax" : "785",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "in_stream_V_data_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "in_stream",
				"BlockSignal" : [
					{"Name" : "in_stream_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "in_stream_V_keep_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "in_stream"},
			{"Name" : "in_stream_V_strb_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "in_stream"},
			{"Name" : "in_stream_V_user_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "in_stream"},
			{"Name" : "in_stream_V_last_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "in_stream"},
			{"Name" : "in_stream_V_id_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "in_stream"},
			{"Name" : "in_stream_V_dest_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "in_stream"},
			{"Name" : "img_stream", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "img_stream_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_9_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "1"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_in_stream_V_data_V_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_in_stream_V_keep_V_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_in_stream_V_strb_V_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_in_stream_V_user_V_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_in_stream_V_last_V_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_in_stream_V_id_V_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_in_stream_V_dest_V_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	read_input {
		in_stream_V_data_V {Type I LastRead 0 FirstWrite -1}
		in_stream_V_keep_V {Type I LastRead 0 FirstWrite -1}
		in_stream_V_strb_V {Type I LastRead 0 FirstWrite -1}
		in_stream_V_user_V {Type I LastRead 0 FirstWrite -1}
		in_stream_V_last_V {Type I LastRead 0 FirstWrite -1}
		in_stream_V_id_V {Type I LastRead 0 FirstWrite -1}
		in_stream_V_dest_V {Type I LastRead 0 FirstWrite -1}
		img_stream {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "785", "Max" : "785"}
	, {"Name" : "Interval", "Min" : "785", "Max" : "785"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	in_stream_V_data_V { axis {  { in_stream_TDATA in_data 0 32 } } }
	in_stream_V_keep_V { axis {  { in_stream_TKEEP in_data 0 4 } } }
	in_stream_V_strb_V { axis {  { in_stream_TSTRB in_data 0 4 } } }
	in_stream_V_user_V { axis {  { in_stream_TUSER in_data 0 1 } } }
	in_stream_V_last_V { axis {  { in_stream_TLAST in_data 0 1 } } }
	in_stream_V_id_V { axis {  { in_stream_TID in_data 0 1 } } }
	in_stream_V_dest_V { axis {  { in_stream_TVALID in_vld 0 1 }  { in_stream_TREADY in_acc 1 1 }  { in_stream_TDEST in_data 0 1 } } }
	img_stream { ap_fifo {  { img_stream_din fifo_data_in 1 32 }  { img_stream_num_data_valid fifo_status_num_data_valid 0 3 }  { img_stream_fifo_cap fifo_update 0 3 }  { img_stream_full_n fifo_status 0 1 }  { img_stream_write fifo_port_we 1 1 } } }
}
