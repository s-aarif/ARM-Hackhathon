set moduleName cnn_accelerator
set isTopModule 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type dataflow
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set DLRegFirstOffset 0
set DLRegItemOffset 0
set C_modelName {cnn_accelerator}
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
	{ "Name" : "in_stream_V_data_V", "interface" : "axis", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "in_stream_V_keep_V", "interface" : "axis", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "in_stream_V_strb_V", "interface" : "axis", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "in_stream_V_user_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "in_stream_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "in_stream_V_id_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "in_stream_V_dest_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "out_stream_V_data_V", "interface" : "axis", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "out_stream_V_keep_V", "interface" : "axis", "bitwidth" : 4, "direction" : "WRITEONLY"} , 
 	{ "Name" : "out_stream_V_strb_V", "interface" : "axis", "bitwidth" : 4, "direction" : "WRITEONLY"} , 
 	{ "Name" : "out_stream_V_user_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "out_stream_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "out_stream_V_id_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "out_stream_V_dest_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 38
set portList { 
	{ s_axi_ctrl_AWVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_ctrl_AWREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_ctrl_AWADDR sc_in sc_lv 4 signal -1 } 
	{ s_axi_ctrl_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_ctrl_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_ctrl_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_ctrl_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_ctrl_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_ctrl_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_ctrl_ARADDR sc_in sc_lv 4 signal -1 } 
	{ s_axi_ctrl_RVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_ctrl_RREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_ctrl_RDATA sc_out sc_lv 32 signal -1 } 
	{ s_axi_ctrl_RRESP sc_out sc_lv 2 signal -1 } 
	{ s_axi_ctrl_BVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_ctrl_BREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_ctrl_BRESP sc_out sc_lv 2 signal -1 } 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ interrupt sc_out sc_logic 1 signal -1 } 
	{ in_stream_TDATA sc_in sc_lv 32 signal 0 } 
	{ in_stream_TKEEP sc_in sc_lv 4 signal 1 } 
	{ in_stream_TSTRB sc_in sc_lv 4 signal 2 } 
	{ in_stream_TUSER sc_in sc_lv 1 signal 3 } 
	{ in_stream_TLAST sc_in sc_lv 1 signal 4 } 
	{ in_stream_TID sc_in sc_lv 1 signal 5 } 
	{ in_stream_TDEST sc_in sc_lv 1 signal 6 } 
	{ out_stream_TDATA sc_out sc_lv 32 signal 7 } 
	{ out_stream_TKEEP sc_out sc_lv 4 signal 8 } 
	{ out_stream_TSTRB sc_out sc_lv 4 signal 9 } 
	{ out_stream_TUSER sc_out sc_lv 1 signal 10 } 
	{ out_stream_TLAST sc_out sc_lv 1 signal 11 } 
	{ out_stream_TID sc_out sc_lv 1 signal 12 } 
	{ out_stream_TDEST sc_out sc_lv 1 signal 13 } 
	{ in_stream_TVALID sc_in sc_logic 1 invld 6 } 
	{ in_stream_TREADY sc_out sc_logic 1 inacc 6 } 
	{ out_stream_TVALID sc_out sc_logic 1 outvld 13 } 
	{ out_stream_TREADY sc_in sc_logic 1 outacc 13 } 
}
set NewPortList {[ 
	{ "name": "s_axi_ctrl_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "ctrl", "role": "AWADDR" },"address":[{"name":"cnn_accelerator","role":"start","value":"0","valid_bit":"0"},{"name":"cnn_accelerator","role":"continue","value":"0","valid_bit":"4"},{"name":"cnn_accelerator","role":"auto_start","value":"0","valid_bit":"7"}] },
	{ "name": "s_axi_ctrl_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctrl", "role": "AWVALID" } },
	{ "name": "s_axi_ctrl_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctrl", "role": "AWREADY" } },
	{ "name": "s_axi_ctrl_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctrl", "role": "WVALID" } },
	{ "name": "s_axi_ctrl_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctrl", "role": "WREADY" } },
	{ "name": "s_axi_ctrl_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ctrl", "role": "WDATA" } },
	{ "name": "s_axi_ctrl_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "ctrl", "role": "WSTRB" } },
	{ "name": "s_axi_ctrl_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "ctrl", "role": "ARADDR" },"address":[{"name":"cnn_accelerator","role":"start","value":"0","valid_bit":"0"},{"name":"cnn_accelerator","role":"done","value":"0","valid_bit":"1"},{"name":"cnn_accelerator","role":"idle","value":"0","valid_bit":"2"},{"name":"cnn_accelerator","role":"ready","value":"0","valid_bit":"3"},{"name":"cnn_accelerator","role":"auto_start","value":"0","valid_bit":"7"}] },
	{ "name": "s_axi_ctrl_ARVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctrl", "role": "ARVALID" } },
	{ "name": "s_axi_ctrl_ARREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctrl", "role": "ARREADY" } },
	{ "name": "s_axi_ctrl_RVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctrl", "role": "RVALID" } },
	{ "name": "s_axi_ctrl_RREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctrl", "role": "RREADY" } },
	{ "name": "s_axi_ctrl_RDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ctrl", "role": "RDATA" } },
	{ "name": "s_axi_ctrl_RRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "ctrl", "role": "RRESP" } },
	{ "name": "s_axi_ctrl_BVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctrl", "role": "BVALID" } },
	{ "name": "s_axi_ctrl_BREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctrl", "role": "BREADY" } },
	{ "name": "s_axi_ctrl_BRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "ctrl", "role": "BRESP" } },
	{ "name": "interrupt", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctrl", "role": "interrupt" } }, 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "in_stream_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "in_stream_V_data_V", "role": "default" }} , 
 	{ "name": "in_stream_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "in_stream_V_keep_V", "role": "default" }} , 
 	{ "name": "in_stream_TSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "in_stream_V_strb_V", "role": "default" }} , 
 	{ "name": "in_stream_TUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "in_stream_V_user_V", "role": "default" }} , 
 	{ "name": "in_stream_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "in_stream_V_last_V", "role": "default" }} , 
 	{ "name": "in_stream_TID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "in_stream_V_id_V", "role": "default" }} , 
 	{ "name": "in_stream_TDEST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "in_stream_V_dest_V", "role": "default" }} , 
 	{ "name": "out_stream_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "out_stream_V_data_V", "role": "default" }} , 
 	{ "name": "out_stream_TKEEP", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "out_stream_V_keep_V", "role": "default" }} , 
 	{ "name": "out_stream_TSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "out_stream_V_strb_V", "role": "default" }} , 
 	{ "name": "out_stream_TUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "out_stream_V_user_V", "role": "default" }} , 
 	{ "name": "out_stream_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "out_stream_V_last_V", "role": "default" }} , 
 	{ "name": "out_stream_TID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "out_stream_V_id_V", "role": "default" }} , 
 	{ "name": "out_stream_TDEST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "out_stream_V_dest_V", "role": "default" }} , 
 	{ "name": "in_stream_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "in_stream_V_dest_V", "role": "default" }} , 
 	{ "name": "in_stream_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "in_stream_V_dest_V", "role": "default" }} , 
 	{ "name": "out_stream_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "out_stream_V_dest_V", "role": "default" }} , 
 	{ "name": "out_stream_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "out_stream_V_dest_V", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "11", "168", "186", "187", "188", "189"],
		"CDFG" : "cnn_accelerator",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4138", "EstimateLatencyMax" : "4138",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"InputProcess" : [
			{"ID" : "2", "Name" : "read_input_U0"}],
		"OutputProcess" : [
			{"ID" : "168", "Name" : "dense_and_write_U0"}],
		"Port" : [
			{"Name" : "in_stream_V_data_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "in_stream",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "read_input_U0", "Port" : "in_stream_V_data_V"}]},
			{"Name" : "in_stream_V_keep_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "in_stream",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "read_input_U0", "Port" : "in_stream_V_keep_V"}]},
			{"Name" : "in_stream_V_strb_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "in_stream",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "read_input_U0", "Port" : "in_stream_V_strb_V"}]},
			{"Name" : "in_stream_V_user_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "in_stream",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "read_input_U0", "Port" : "in_stream_V_user_V"}]},
			{"Name" : "in_stream_V_last_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "in_stream",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "read_input_U0", "Port" : "in_stream_V_last_V"}]},
			{"Name" : "in_stream_V_id_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "in_stream",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "read_input_U0", "Port" : "in_stream_V_id_V"}]},
			{"Name" : "in_stream_V_dest_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "in_stream",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "read_input_U0", "Port" : "in_stream_V_dest_V"}]},
			{"Name" : "out_stream_V_data_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "out_stream",
				"SubConnect" : [
					{"ID" : "168", "SubInstance" : "dense_and_write_U0", "Port" : "out_stream_V_data_V"}]},
			{"Name" : "out_stream_V_keep_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "out_stream",
				"SubConnect" : [
					{"ID" : "168", "SubInstance" : "dense_and_write_U0", "Port" : "out_stream_V_keep_V"}]},
			{"Name" : "out_stream_V_strb_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "out_stream",
				"SubConnect" : [
					{"ID" : "168", "SubInstance" : "dense_and_write_U0", "Port" : "out_stream_V_strb_V"}]},
			{"Name" : "out_stream_V_user_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "out_stream",
				"SubConnect" : [
					{"ID" : "168", "SubInstance" : "dense_and_write_U0", "Port" : "out_stream_V_user_V"}]},
			{"Name" : "out_stream_V_last_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "out_stream",
				"SubConnect" : [
					{"ID" : "168", "SubInstance" : "dense_and_write_U0", "Port" : "out_stream_V_last_V"}]},
			{"Name" : "out_stream_V_id_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "out_stream",
				"SubConnect" : [
					{"ID" : "168", "SubInstance" : "dense_and_write_U0", "Port" : "out_stream_V_id_V"}]},
			{"Name" : "out_stream_V_dest_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "out_stream",
				"SubConnect" : [
					{"ID" : "168", "SubInstance" : "dense_and_write_U0", "Port" : "out_stream_V_dest_V"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ctrl_s_axi_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.read_input_U0", "Parent" : "0", "Child" : ["3", "4", "5", "6", "7", "8", "9", "10"],
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
			{"Name" : "img_stream", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["11"], "DependentChan" : "186", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "img_stream_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_9_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "1"}}]},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.read_input_U0.flow_control_loop_pipe_U", "Parent" : "2"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.read_input_U0.regslice_both_in_stream_V_data_V_U", "Parent" : "2"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.read_input_U0.regslice_both_in_stream_V_keep_V_U", "Parent" : "2"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.read_input_U0.regslice_both_in_stream_V_strb_V_U", "Parent" : "2"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.read_input_U0.regslice_both_in_stream_V_user_V_U", "Parent" : "2"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.read_input_U0.regslice_both_in_stream_V_last_V_U", "Parent" : "2"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.read_input_U0.regslice_both_in_stream_V_id_V_U", "Parent" : "2"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.read_input_U0.regslice_both_in_stream_V_dest_V_U", "Parent" : "2"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_and_pool_U0", "Parent" : "0", "Child" : ["12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "27"],
		"CDFG" : "conv_and_pool",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2203", "EstimateLatencyMax" : "2203",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"StartSource" : "2",
		"StartFifo" : "start_for_conv_and_pool_U0_U",
		"Port" : [
			{"Name" : "img_stream", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["2"], "DependentChan" : "186", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "21", "SubInstance" : "grp_conv_and_pool_Pipeline_VITIS_LOOP_26_1_VITIS_LOOP_27_2_fu_58", "Port" : "img_stream", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "pool_stream", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["168"], "DependentChan" : "187", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "27", "SubInstance" : "grp_conv_and_pool_Pipeline_VITIS_LOOP_34_3_VITIS_LOOP_35_4_VITIS_LOOP_36_5_fu_82", "Port" : "pool_stream", "Inst_start_state" : "4", "Inst_end_state" : "5"}]}]},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv_and_pool_U0.image_U", "Parent" : "11"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv_and_pool_U0.image_1_U", "Parent" : "11"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv_and_pool_U0.image_2_U", "Parent" : "11"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv_and_pool_U0.image_3_U", "Parent" : "11"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv_and_pool_U0.image_4_U", "Parent" : "11"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv_and_pool_U0.image_5_U", "Parent" : "11"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv_and_pool_U0.image_6_U", "Parent" : "11"},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv_and_pool_U0.image_7_U", "Parent" : "11"},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv_and_pool_U0.image_8_U", "Parent" : "11"},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv_and_pool_U0.grp_conv_and_pool_Pipeline_VITIS_LOOP_26_1_VITIS_LOOP_27_2_fu_58", "Parent" : "11", "Child" : ["22", "23", "24", "25", "26"],
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
	{"ID" : "22", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv_and_pool_U0.grp_conv_and_pool_Pipeline_VITIS_LOOP_26_1_VITIS_LOOP_27_2_fu_58.urem_5ns_5ns_5_9_1_U16", "Parent" : "21"},
	{"ID" : "23", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv_and_pool_U0.grp_conv_and_pool_Pipeline_VITIS_LOOP_26_1_VITIS_LOOP_27_2_fu_58.mul_5ns_7ns_11_1_1_U17", "Parent" : "21"},
	{"ID" : "24", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv_and_pool_U0.grp_conv_and_pool_Pipeline_VITIS_LOOP_26_1_VITIS_LOOP_27_2_fu_58.urem_5ns_5ns_5_9_1_U18", "Parent" : "21"},
	{"ID" : "25", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv_and_pool_U0.grp_conv_and_pool_Pipeline_VITIS_LOOP_26_1_VITIS_LOOP_27_2_fu_58.mul_5ns_7ns_11_1_1_U19", "Parent" : "21"},
	{"ID" : "26", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv_and_pool_U0.grp_conv_and_pool_Pipeline_VITIS_LOOP_26_1_VITIS_LOOP_27_2_fu_58.flow_control_loop_pipe_sequential_init_U", "Parent" : "21"},
	{"ID" : "27", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv_and_pool_U0.grp_conv_and_pool_Pipeline_VITIS_LOOP_34_3_VITIS_LOOP_35_4_VITIS_LOOP_36_5_fu_82", "Parent" : "11", "Child" : ["28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "55", "56", "57", "58", "59", "60", "61", "62", "63", "64", "65", "66", "67", "68", "69", "70", "71", "72", "73", "74", "75", "76", "77", "78", "79", "80", "81", "82", "83", "84", "85", "86", "87", "88", "89", "90", "91", "92", "93", "94", "95", "96", "97", "98", "99", "100", "101", "102", "103", "104", "105", "106", "107", "108", "109", "110", "111", "112", "113", "114", "115", "116", "117", "118", "119", "120", "121", "122", "123", "124", "125", "126", "127", "128", "129", "130", "131", "132", "133", "134", "135", "136", "137", "138", "139", "140", "141", "142", "143", "144", "145", "146", "147", "148", "149", "150", "151", "152", "153", "154", "155", "156", "157", "158", "159", "160", "161", "162", "163", "164", "165", "166", "167"],
		"CDFG" : "conv_and_pool_Pipeline_VITIS_LOOP_34_3_VITIS_LOOP_35_4_VITIS_LOOP_36_5",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1406", "EstimateLatencyMax" : "1406",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "image_r", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "image_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "image_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "image_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "image_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "image_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "image_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "image_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "image_8", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pool_stream", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "pool_stream_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_34_3_VITIS_LOOP_35_4_VITIS_LOOP_36_5", "PipelineType" : "NotSupport"}]},
	{"ID" : "28", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv_and_pool_U0.grp_conv_and_pool_Pipeline_VITIS_LOOP_34_3_VITIS_LOOP_35_4_VITIS_LOOP_36_5_fu_82.fadd_32ns_32ns_32_4_full_dsp_1_U32", "Parent" : "27"},
	{"ID" : "29", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv_and_pool_U0.grp_conv_and_pool_Pipeline_VITIS_LOOP_34_3_VITIS_LOOP_35_4_VITIS_LOOP_36_5_fu_82.fadd_32ns_32ns_32_4_full_dsp_1_U33", "Parent" : "27"},
	{"ID" : "30", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv_and_pool_U0.grp_conv_and_pool_Pipeline_VITIS_LOOP_34_3_VITIS_LOOP_35_4_VITIS_LOOP_36_5_fu_82.fadd_32ns_32ns_32_4_full_dsp_1_U34", "Parent" : "27"},
	{"ID" : "31", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv_and_pool_U0.grp_conv_and_pool_Pipeline_VITIS_LOOP_34_3_VITIS_LOOP_35_4_VITIS_LOOP_36_5_fu_82.fadd_32ns_32ns_32_4_full_dsp_1_U35", "Parent" : "27"},
	{"ID" : "32", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv_and_pool_U0.grp_conv_and_pool_Pipeline_VITIS_LOOP_34_3_VITIS_LOOP_35_4_VITIS_LOOP_36_5_fu_82.fadd_32ns_32ns_32_4_full_dsp_1_U36", "Parent" : "27"},
	{"ID" : "33", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv_and_pool_U0.grp_conv_and_pool_Pipeline_VITIS_LOOP_34_3_VITIS_LOOP_35_4_VITIS_LOOP_36_5_fu_82.fadd_32ns_32ns_32_4_full_dsp_1_U37", "Parent" : "27"},
	{"ID" : "34", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv_and_pool_U0.grp_conv_and_pool_Pipeline_VITIS_LOOP_34_3_VITIS_LOOP_35_4_VITIS_LOOP_36_5_fu_82.fadd_32ns_32ns_32_4_full_dsp_1_U38", "Parent" : "27"},
	{"ID" : "35", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv_and_pool_U0.grp_conv_and_pool_Pipeline_VITIS_LOOP_34_3_VITIS_LOOP_35_4_VITIS_LOOP_36_5_fu_82.fadd_32ns_32ns_32_4_full_dsp_1_U39", "Parent" : "27"},
	{"ID" : "36", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv_and_pool_U0.grp_conv_and_pool_Pipeline_VITIS_LOOP_34_3_VITIS_LOOP_35_4_VITIS_LOOP_36_5_fu_82.fadd_32ns_32ns_32_4_full_dsp_1_U40", "Parent" : "27"},
	{"ID" : "37", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv_and_pool_U0.grp_conv_and_pool_Pipeline_VITIS_LOOP_34_3_VITIS_LOOP_35_4_VITIS_LOOP_36_5_fu_82.fadd_32ns_32ns_32_4_full_dsp_1_U41", "Parent" : "27"},
	{"ID" : "38", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv_and_pool_U0.grp_conv_and_pool_Pipeline_VITIS_LOOP_34_3_VITIS_LOOP_35_4_VITIS_LOOP_36_5_fu_82.fadd_32ns_32ns_32_4_full_dsp_1_U42", "Parent" : "27"},
	{"ID" : "39", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv_and_pool_U0.grp_conv_and_pool_Pipeline_VITIS_LOOP_34_3_VITIS_LOOP_35_4_VITIS_LOOP_36_5_fu_82.fadd_32ns_32ns_32_4_full_dsp_1_U43", "Parent" : "27"},
	{"ID" : "40", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv_and_pool_U0.grp_conv_and_pool_Pipeline_VITIS_LOOP_34_3_VITIS_LOOP_35_4_VITIS_LOOP_36_5_fu_82.fadd_32ns_32ns_32_4_full_dsp_1_U44", "Parent" : "27"},
	{"ID" : "41", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv_and_pool_U0.grp_conv_and_pool_Pipeline_VITIS_LOOP_34_3_VITIS_LOOP_35_4_VITIS_LOOP_36_5_fu_82.fadd_32ns_32ns_32_4_full_dsp_1_U45", "Parent" : "27"},
	{"ID" : "42", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv_and_pool_U0.grp_conv_and_pool_Pipeline_VITIS_LOOP_34_3_VITIS_LOOP_35_4_VITIS_LOOP_36_5_fu_82.fadd_32ns_32ns_32_4_full_dsp_1_U46", "Parent" : "27"},
	{"ID" : "43", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv_and_pool_U0.grp_conv_and_pool_Pipeline_VITIS_LOOP_34_3_VITIS_LOOP_35_4_VITIS_LOOP_36_5_fu_82.fadd_32ns_32ns_32_4_full_dsp_1_U47", "Parent" : "27"},
	{"ID" : "44", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv_and_pool_U0.grp_conv_and_pool_Pipeline_VITIS_LOOP_34_3_VITIS_LOOP_35_4_VITIS_LOOP_36_5_fu_82.fadd_32ns_32ns_32_4_full_dsp_1_U48", "Parent" : "27"},
	{"ID" : "45", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv_and_pool_U0.grp_conv_and_pool_Pipeline_VITIS_LOOP_34_3_VITIS_LOOP_35_4_VITIS_LOOP_36_5_fu_82.fadd_32ns_32ns_32_4_full_dsp_1_U49", "Parent" : "27"},
	{"ID" : "46", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv_and_pool_U0.grp_conv_and_pool_Pipeline_VITIS_LOOP_34_3_VITIS_LOOP_35_4_VITIS_LOOP_36_5_fu_82.fadd_32ns_32ns_32_4_full_dsp_1_U50", "Parent" : "27"},
	{"ID" : "47", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv_and_pool_U0.grp_conv_and_pool_Pipeline_VITIS_LOOP_34_3_VITIS_LOOP_35_4_VITIS_LOOP_36_5_fu_82.fadd_32ns_32ns_32_4_full_dsp_1_U51", "Parent" : "27"},
	{"ID" : "48", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv_and_pool_U0.grp_conv_and_pool_Pipeline_VITIS_LOOP_34_3_VITIS_LOOP_35_4_VITIS_LOOP_36_5_fu_82.fadd_32ns_32ns_32_4_full_dsp_1_U52", "Parent" : "27"},
	{"ID" : "49", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv_and_pool_U0.grp_conv_and_pool_Pipeline_VITIS_LOOP_34_3_VITIS_LOOP_35_4_VITIS_LOOP_36_5_fu_82.fadd_32ns_32ns_32_4_full_dsp_1_U53", "Parent" : "27"},
	{"ID" : "50", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv_and_pool_U0.grp_conv_and_pool_Pipeline_VITIS_LOOP_34_3_VITIS_LOOP_35_4_VITIS_LOOP_36_5_fu_82.fadd_32ns_32ns_32_4_full_dsp_1_U54", "Parent" : "27"},
	{"ID" : "51", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv_and_pool_U0.grp_conv_and_pool_Pipeline_VITIS_LOOP_34_3_VITIS_LOOP_35_4_VITIS_LOOP_36_5_fu_82.fadd_32ns_32ns_32_4_full_dsp_1_U55", "Parent" : "27"},
	{"ID" : "52", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv_and_pool_U0.grp_conv_and_pool_Pipeline_VITIS_LOOP_34_3_VITIS_LOOP_35_4_VITIS_LOOP_36_5_fu_82.fadd_32ns_32ns_32_4_full_dsp_1_U56", "Parent" : "27"},
	{"ID" : "53", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv_and_pool_U0.grp_conv_and_pool_Pipeline_VITIS_LOOP_34_3_VITIS_LOOP_35_4_VITIS_LOOP_36_5_fu_82.fadd_32ns_32ns_32_4_full_dsp_1_U57", "Parent" : "27"},
	{"ID" : "54", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv_and_pool_U0.grp_conv_and_pool_Pipeline_VITIS_LOOP_34_3_VITIS_LOOP_35_4_VITIS_LOOP_36_5_fu_82.fadd_32ns_32ns_32_4_full_dsp_1_U58", "Parent" : "27"},
	{"ID" : "55", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv_and_pool_U0.grp_conv_and_pool_Pipeline_VITIS_LOOP_34_3_VITIS_LOOP_35_4_VITIS_LOOP_36_5_fu_82.fadd_32ns_32ns_32_4_full_dsp_1_U59", "Parent" : "27"},
	{"ID" : "56", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv_and_pool_U0.grp_conv_and_pool_Pipeline_VITIS_LOOP_34_3_VITIS_LOOP_35_4_VITIS_LOOP_36_5_fu_82.fadd_32ns_32ns_32_4_full_dsp_1_U60", "Parent" : "27"},
	{"ID" : "57", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv_and_pool_U0.grp_conv_and_pool_Pipeline_VITIS_LOOP_34_3_VITIS_LOOP_35_4_VITIS_LOOP_36_5_fu_82.fadd_32ns_32ns_32_4_full_dsp_1_U61", "Parent" : "27"},
	{"ID" : "58", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv_and_pool_U0.grp_conv_and_pool_Pipeline_VITIS_LOOP_34_3_VITIS_LOOP_35_4_VITIS_LOOP_36_5_fu_82.fadd_32ns_32ns_32_4_full_dsp_1_U62", "Parent" : "27"},
	{"ID" : "59", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv_and_pool_U0.grp_conv_and_pool_Pipeline_VITIS_LOOP_34_3_VITIS_LOOP_35_4_VITIS_LOOP_36_5_fu_82.fadd_32ns_32ns_32_4_full_dsp_1_U63", "Parent" : "27"},
	{"ID" : "60", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv_and_pool_U0.grp_conv_and_pool_Pipeline_VITIS_LOOP_34_3_VITIS_LOOP_35_4_VITIS_LOOP_36_5_fu_82.fadd_32ns_32ns_32_4_full_dsp_1_U64", "Parent" : "27"},
	{"ID" : "61", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv_and_pool_U0.grp_conv_and_pool_Pipeline_VITIS_LOOP_34_3_VITIS_LOOP_35_4_VITIS_LOOP_36_5_fu_82.fadd_32ns_32ns_32_4_full_dsp_1_U65", "Parent" : "27"},
	{"ID" : "62", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv_and_pool_U0.grp_conv_and_pool_Pipeline_VITIS_LOOP_34_3_VITIS_LOOP_35_4_VITIS_LOOP_36_5_fu_82.fadd_32ns_32ns_32_4_full_dsp_1_U66", "Parent" : "27"},
	{"ID" : "63", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv_and_pool_U0.grp_conv_and_pool_Pipeline_VITIS_LOOP_34_3_VITIS_LOOP_35_4_VITIS_LOOP_36_5_fu_82.fadd_32ns_32ns_32_4_full_dsp_1_U67", "Parent" : "27"},
	{"ID" : "64", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv_and_pool_U0.grp_conv_and_pool_Pipeline_VITIS_LOOP_34_3_VITIS_LOOP_35_4_VITIS_LOOP_36_5_fu_82.fmul_32ns_32ns_32_3_max_dsp_1_U68", "Parent" : "27"},
	{"ID" : "65", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv_and_pool_U0.grp_conv_and_pool_Pipeline_VITIS_LOOP_34_3_VITIS_LOOP_35_4_VITIS_LOOP_36_5_fu_82.fmul_32ns_32ns_32_3_max_dsp_1_U69", "Parent" : "27"},
	{"ID" : "66", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv_and_pool_U0.grp_conv_and_pool_Pipeline_VITIS_LOOP_34_3_VITIS_LOOP_35_4_VITIS_LOOP_36_5_fu_82.fmul_32ns_32ns_32_3_max_dsp_1_U70", "Parent" : "27"},
	{"ID" : "67", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv_and_pool_U0.grp_conv_and_pool_Pipeline_VITIS_LOOP_34_3_VITIS_LOOP_35_4_VITIS_LOOP_36_5_fu_82.fmul_32ns_32ns_32_3_max_dsp_1_U71", "Parent" : "27"},
	{"ID" : "68", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv_and_pool_U0.grp_conv_and_pool_Pipeline_VITIS_LOOP_34_3_VITIS_LOOP_35_4_VITIS_LOOP_36_5_fu_82.fmul_32ns_32ns_32_3_max_dsp_1_U72", "Parent" : "27"},
	{"ID" : "69", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv_and_pool_U0.grp_conv_and_pool_Pipeline_VITIS_LOOP_34_3_VITIS_LOOP_35_4_VITIS_LOOP_36_5_fu_82.fmul_32ns_32ns_32_3_max_dsp_1_U73", "Parent" : "27"},
	{"ID" : "70", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv_and_pool_U0.grp_conv_and_pool_Pipeline_VITIS_LOOP_34_3_VITIS_LOOP_35_4_VITIS_LOOP_36_5_fu_82.fmul_32ns_32ns_32_3_max_dsp_1_U74", "Parent" : "27"},
	{"ID" : "71", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv_and_pool_U0.grp_conv_and_pool_Pipeline_VITIS_LOOP_34_3_VITIS_LOOP_35_4_VITIS_LOOP_36_5_fu_82.fmul_32ns_32ns_32_3_max_dsp_1_U75", "Parent" : "27"},
	{"ID" : "72", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv_and_pool_U0.grp_conv_and_pool_Pipeline_VITIS_LOOP_34_3_VITIS_LOOP_35_4_VITIS_LOOP_36_5_fu_82.fmul_32ns_32ns_32_3_max_dsp_1_U76", "Parent" : "27"},
	{"ID" : "73", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv_and_pool_U0.grp_conv_and_pool_Pipeline_VITIS_LOOP_34_3_VITIS_LOOP_35_4_VITIS_LOOP_36_5_fu_82.fmul_32ns_32ns_32_3_max_dsp_1_U77", "Parent" : "27"},
	{"ID" : "74", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv_and_pool_U0.grp_conv_and_pool_Pipeline_VITIS_LOOP_34_3_VITIS_LOOP_35_4_VITIS_LOOP_36_5_fu_82.fmul_32ns_32ns_32_3_max_dsp_1_U78", "Parent" : "27"},
	{"ID" : "75", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv_and_pool_U0.grp_conv_and_pool_Pipeline_VITIS_LOOP_34_3_VITIS_LOOP_35_4_VITIS_LOOP_36_5_fu_82.fmul_32ns_32ns_32_3_max_dsp_1_U79", "Parent" : "27"},
	{"ID" : "76", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv_and_pool_U0.grp_conv_and_pool_Pipeline_VITIS_LOOP_34_3_VITIS_LOOP_35_4_VITIS_LOOP_36_5_fu_82.fmul_32ns_32ns_32_3_max_dsp_1_U80", "Parent" : "27"},
	{"ID" : "77", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv_and_pool_U0.grp_conv_and_pool_Pipeline_VITIS_LOOP_34_3_VITIS_LOOP_35_4_VITIS_LOOP_36_5_fu_82.fmul_32ns_32ns_32_3_max_dsp_1_U81", "Parent" : "27"},
	{"ID" : "78", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv_and_pool_U0.grp_conv_and_pool_Pipeline_VITIS_LOOP_34_3_VITIS_LOOP_35_4_VITIS_LOOP_36_5_fu_82.fmul_32ns_32ns_32_3_max_dsp_1_U82", "Parent" : "27"},
	{"ID" : "79", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv_and_pool_U0.grp_conv_and_pool_Pipeline_VITIS_LOOP_34_3_VITIS_LOOP_35_4_VITIS_LOOP_36_5_fu_82.fmul_32ns_32ns_32_3_max_dsp_1_U83", "Parent" : "27"},
	{"ID" : "80", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv_and_pool_U0.grp_conv_and_pool_Pipeline_VITIS_LOOP_34_3_VITIS_LOOP_35_4_VITIS_LOOP_36_5_fu_82.fcmp_32ns_32ns_1_2_no_dsp_1_U84", "Parent" : "27"},
	{"ID" : "81", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv_and_pool_U0.grp_conv_and_pool_Pipeline_VITIS_LOOP_34_3_VITIS_LOOP_35_4_VITIS_LOOP_36_5_fu_82.fcmp_32ns_32ns_1_2_no_dsp_1_U85", "Parent" : "27"},
	{"ID" : "82", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv_and_pool_U0.grp_conv_and_pool_Pipeline_VITIS_LOOP_34_3_VITIS_LOOP_35_4_VITIS_LOOP_36_5_fu_82.fcmp_32ns_32ns_1_2_no_dsp_1_U86", "Parent" : "27"},
	{"ID" : "83", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv_and_pool_U0.grp_conv_and_pool_Pipeline_VITIS_LOOP_34_3_VITIS_LOOP_35_4_VITIS_LOOP_36_5_fu_82.fcmp_32ns_32ns_1_2_no_dsp_1_U87", "Parent" : "27"},
	{"ID" : "84", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv_and_pool_U0.grp_conv_and_pool_Pipeline_VITIS_LOOP_34_3_VITIS_LOOP_35_4_VITIS_LOOP_36_5_fu_82.fcmp_32ns_32ns_1_2_no_dsp_1_U88", "Parent" : "27"},
	{"ID" : "85", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv_and_pool_U0.grp_conv_and_pool_Pipeline_VITIS_LOOP_34_3_VITIS_LOOP_35_4_VITIS_LOOP_36_5_fu_82.fcmp_32ns_32ns_1_2_no_dsp_1_U89", "Parent" : "27"},
	{"ID" : "86", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv_and_pool_U0.grp_conv_and_pool_Pipeline_VITIS_LOOP_34_3_VITIS_LOOP_35_4_VITIS_LOOP_36_5_fu_82.fcmp_32ns_32ns_1_2_no_dsp_1_U90", "Parent" : "27"},
	{"ID" : "87", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv_and_pool_U0.grp_conv_and_pool_Pipeline_VITIS_LOOP_34_3_VITIS_LOOP_35_4_VITIS_LOOP_36_5_fu_82.urem_4ns_4ns_3_8_1_U91", "Parent" : "27"},
	{"ID" : "88", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv_and_pool_U0.grp_conv_and_pool_Pipeline_VITIS_LOOP_34_3_VITIS_LOOP_35_4_VITIS_LOOP_36_5_fu_82.mul_4ns_6ns_9_1_1_U92", "Parent" : "27"},
	{"ID" : "89", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv_and_pool_U0.grp_conv_and_pool_Pipeline_VITIS_LOOP_34_3_VITIS_LOOP_35_4_VITIS_LOOP_36_5_fu_82.urem_5ns_5ns_5_9_1_U93", "Parent" : "27"},
	{"ID" : "90", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv_and_pool_U0.grp_conv_and_pool_Pipeline_VITIS_LOOP_34_3_VITIS_LOOP_35_4_VITIS_LOOP_36_5_fu_82.urem_5ns_5ns_5_9_1_U94", "Parent" : "27"},
	{"ID" : "91", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv_and_pool_U0.grp_conv_and_pool_Pipeline_VITIS_LOOP_34_3_VITIS_LOOP_35_4_VITIS_LOOP_36_5_fu_82.mul_5ns_7ns_11_1_1_U95", "Parent" : "27"},
	{"ID" : "92", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv_and_pool_U0.grp_conv_and_pool_Pipeline_VITIS_LOOP_34_3_VITIS_LOOP_35_4_VITIS_LOOP_36_5_fu_82.urem_5ns_5ns_5_9_1_U96", "Parent" : "27"},
	{"ID" : "93", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv_and_pool_U0.grp_conv_and_pool_Pipeline_VITIS_LOOP_34_3_VITIS_LOOP_35_4_VITIS_LOOP_36_5_fu_82.mul_5ns_7ns_11_1_1_U97", "Parent" : "27"},
	{"ID" : "94", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv_and_pool_U0.grp_conv_and_pool_Pipeline_VITIS_LOOP_34_3_VITIS_LOOP_35_4_VITIS_LOOP_36_5_fu_82.urem_4ns_4ns_4_8_1_U98", "Parent" : "27"},
	{"ID" : "95", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv_and_pool_U0.grp_conv_and_pool_Pipeline_VITIS_LOOP_34_3_VITIS_LOOP_35_4_VITIS_LOOP_36_5_fu_82.mul_4ns_6ns_9_1_1_U99", "Parent" : "27"},
	{"ID" : "96", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv_and_pool_U0.grp_conv_and_pool_Pipeline_VITIS_LOOP_34_3_VITIS_LOOP_35_4_VITIS_LOOP_36_5_fu_82.urem_5ns_5ns_5_9_1_U100", "Parent" : "27"},
	{"ID" : "97", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv_and_pool_U0.grp_conv_and_pool_Pipeline_VITIS_LOOP_34_3_VITIS_LOOP_35_4_VITIS_LOOP_36_5_fu_82.urem_5ns_5ns_5_9_1_U101", "Parent" : "27"},
	{"ID" : "98", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv_and_pool_U0.grp_conv_and_pool_Pipeline_VITIS_LOOP_34_3_VITIS_LOOP_35_4_VITIS_LOOP_36_5_fu_82.mul_5ns_7ns_11_1_1_U102", "Parent" : "27"},
	{"ID" : "99", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv_and_pool_U0.grp_conv_and_pool_Pipeline_VITIS_LOOP_34_3_VITIS_LOOP_35_4_VITIS_LOOP_36_5_fu_82.urem_5ns_5ns_5_9_1_U103", "Parent" : "27"},
	{"ID" : "100", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv_and_pool_U0.grp_conv_and_pool_Pipeline_VITIS_LOOP_34_3_VITIS_LOOP_35_4_VITIS_LOOP_36_5_fu_82.mul_5ns_7ns_11_1_1_U104", "Parent" : "27"},
	{"ID" : "101", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv_and_pool_U0.grp_conv_and_pool_Pipeline_VITIS_LOOP_34_3_VITIS_LOOP_35_4_VITIS_LOOP_36_5_fu_82.sparsemux_7_2_32_1_1_U105", "Parent" : "27"},
	{"ID" : "102", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv_and_pool_U0.grp_conv_and_pool_Pipeline_VITIS_LOOP_34_3_VITIS_LOOP_35_4_VITIS_LOOP_36_5_fu_82.sparsemux_7_2_32_1_1_U106", "Parent" : "27"},
	{"ID" : "103", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv_and_pool_U0.grp_conv_and_pool_Pipeline_VITIS_LOOP_34_3_VITIS_LOOP_35_4_VITIS_LOOP_36_5_fu_82.sparsemux_7_2_32_1_1_U107", "Parent" : "27"},
	{"ID" : "104", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv_and_pool_U0.grp_conv_and_pool_Pipeline_VITIS_LOOP_34_3_VITIS_LOOP_35_4_VITIS_LOOP_36_5_fu_82.sparsemux_7_2_32_1_1_U108", "Parent" : "27"},
	{"ID" : "105", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv_and_pool_U0.grp_conv_and_pool_Pipeline_VITIS_LOOP_34_3_VITIS_LOOP_35_4_VITIS_LOOP_36_5_fu_82.sparsemux_7_2_32_1_1_U109", "Parent" : "27"},
	{"ID" : "106", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv_and_pool_U0.grp_conv_and_pool_Pipeline_VITIS_LOOP_34_3_VITIS_LOOP_35_4_VITIS_LOOP_36_5_fu_82.sparsemux_7_2_32_1_1_U110", "Parent" : "27"},
	{"ID" : "107", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv_and_pool_U0.grp_conv_and_pool_Pipeline_VITIS_LOOP_34_3_VITIS_LOOP_35_4_VITIS_LOOP_36_5_fu_82.sparsemux_7_2_32_1_1_U111", "Parent" : "27"},
	{"ID" : "108", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv_and_pool_U0.grp_conv_and_pool_Pipeline_VITIS_LOOP_34_3_VITIS_LOOP_35_4_VITIS_LOOP_36_5_fu_82.sparsemux_7_2_32_1_1_U112", "Parent" : "27"},
	{"ID" : "109", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv_and_pool_U0.grp_conv_and_pool_Pipeline_VITIS_LOOP_34_3_VITIS_LOOP_35_4_VITIS_LOOP_36_5_fu_82.sparsemux_7_2_32_1_1_U113", "Parent" : "27"},
	{"ID" : "110", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv_and_pool_U0.grp_conv_and_pool_Pipeline_VITIS_LOOP_34_3_VITIS_LOOP_35_4_VITIS_LOOP_36_5_fu_82.sparsemux_7_2_32_1_1_U114", "Parent" : "27"},
	{"ID" : "111", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv_and_pool_U0.grp_conv_and_pool_Pipeline_VITIS_LOOP_34_3_VITIS_LOOP_35_4_VITIS_LOOP_36_5_fu_82.sparsemux_7_2_32_1_1_U115", "Parent" : "27"},
	{"ID" : "112", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv_and_pool_U0.grp_conv_and_pool_Pipeline_VITIS_LOOP_34_3_VITIS_LOOP_35_4_VITIS_LOOP_36_5_fu_82.sparsemux_7_2_32_1_1_U116", "Parent" : "27"},
	{"ID" : "113", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv_and_pool_U0.grp_conv_and_pool_Pipeline_VITIS_LOOP_34_3_VITIS_LOOP_35_4_VITIS_LOOP_36_5_fu_82.sparsemux_7_2_32_1_1_U117", "Parent" : "27"},
	{"ID" : "114", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv_and_pool_U0.grp_conv_and_pool_Pipeline_VITIS_LOOP_34_3_VITIS_LOOP_35_4_VITIS_LOOP_36_5_fu_82.sparsemux_7_2_32_1_1_U118", "Parent" : "27"},
	{"ID" : "115", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv_and_pool_U0.grp_conv_and_pool_Pipeline_VITIS_LOOP_34_3_VITIS_LOOP_35_4_VITIS_LOOP_36_5_fu_82.sparsemux_7_2_32_1_1_U119", "Parent" : "27"},
	{"ID" : "116", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv_and_pool_U0.grp_conv_and_pool_Pipeline_VITIS_LOOP_34_3_VITIS_LOOP_35_4_VITIS_LOOP_36_5_fu_82.sparsemux_7_2_32_1_1_U120", "Parent" : "27"},
	{"ID" : "117", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv_and_pool_U0.grp_conv_and_pool_Pipeline_VITIS_LOOP_34_3_VITIS_LOOP_35_4_VITIS_LOOP_36_5_fu_82.sparsemux_7_2_32_1_1_U121", "Parent" : "27"},
	{"ID" : "118", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv_and_pool_U0.grp_conv_and_pool_Pipeline_VITIS_LOOP_34_3_VITIS_LOOP_35_4_VITIS_LOOP_36_5_fu_82.sparsemux_7_2_32_1_1_U122", "Parent" : "27"},
	{"ID" : "119", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv_and_pool_U0.grp_conv_and_pool_Pipeline_VITIS_LOOP_34_3_VITIS_LOOP_35_4_VITIS_LOOP_36_5_fu_82.sparsemux_7_2_32_1_1_U123", "Parent" : "27"},
	{"ID" : "120", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv_and_pool_U0.grp_conv_and_pool_Pipeline_VITIS_LOOP_34_3_VITIS_LOOP_35_4_VITIS_LOOP_36_5_fu_82.sparsemux_7_2_32_1_1_U124", "Parent" : "27"},
	{"ID" : "121", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv_and_pool_U0.grp_conv_and_pool_Pipeline_VITIS_LOOP_34_3_VITIS_LOOP_35_4_VITIS_LOOP_36_5_fu_82.sparsemux_7_2_32_1_1_U125", "Parent" : "27"},
	{"ID" : "122", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv_and_pool_U0.grp_conv_and_pool_Pipeline_VITIS_LOOP_34_3_VITIS_LOOP_35_4_VITIS_LOOP_36_5_fu_82.sparsemux_7_2_32_1_1_U126", "Parent" : "27"},
	{"ID" : "123", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv_and_pool_U0.grp_conv_and_pool_Pipeline_VITIS_LOOP_34_3_VITIS_LOOP_35_4_VITIS_LOOP_36_5_fu_82.sparsemux_7_2_32_1_1_U127", "Parent" : "27"},
	{"ID" : "124", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv_and_pool_U0.grp_conv_and_pool_Pipeline_VITIS_LOOP_34_3_VITIS_LOOP_35_4_VITIS_LOOP_36_5_fu_82.sparsemux_7_2_32_1_1_U128", "Parent" : "27"},
	{"ID" : "125", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv_and_pool_U0.grp_conv_and_pool_Pipeline_VITIS_LOOP_34_3_VITIS_LOOP_35_4_VITIS_LOOP_36_5_fu_82.sparsemux_7_2_32_1_1_U129", "Parent" : "27"},
	{"ID" : "126", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv_and_pool_U0.grp_conv_and_pool_Pipeline_VITIS_LOOP_34_3_VITIS_LOOP_35_4_VITIS_LOOP_36_5_fu_82.sparsemux_7_2_32_1_1_U130", "Parent" : "27"},
	{"ID" : "127", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv_and_pool_U0.grp_conv_and_pool_Pipeline_VITIS_LOOP_34_3_VITIS_LOOP_35_4_VITIS_LOOP_36_5_fu_82.sparsemux_7_2_32_1_1_U131", "Parent" : "27"},
	{"ID" : "128", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv_and_pool_U0.grp_conv_and_pool_Pipeline_VITIS_LOOP_34_3_VITIS_LOOP_35_4_VITIS_LOOP_36_5_fu_82.sparsemux_7_2_32_1_1_U132", "Parent" : "27"},
	{"ID" : "129", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv_and_pool_U0.grp_conv_and_pool_Pipeline_VITIS_LOOP_34_3_VITIS_LOOP_35_4_VITIS_LOOP_36_5_fu_82.sparsemux_7_2_32_1_1_U133", "Parent" : "27"},
	{"ID" : "130", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv_and_pool_U0.grp_conv_and_pool_Pipeline_VITIS_LOOP_34_3_VITIS_LOOP_35_4_VITIS_LOOP_36_5_fu_82.sparsemux_7_2_32_1_1_U134", "Parent" : "27"},
	{"ID" : "131", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv_and_pool_U0.grp_conv_and_pool_Pipeline_VITIS_LOOP_34_3_VITIS_LOOP_35_4_VITIS_LOOP_36_5_fu_82.sparsemux_7_2_32_1_1_U135", "Parent" : "27"},
	{"ID" : "132", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv_and_pool_U0.grp_conv_and_pool_Pipeline_VITIS_LOOP_34_3_VITIS_LOOP_35_4_VITIS_LOOP_36_5_fu_82.sparsemux_7_2_32_1_1_U136", "Parent" : "27"},
	{"ID" : "133", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv_and_pool_U0.grp_conv_and_pool_Pipeline_VITIS_LOOP_34_3_VITIS_LOOP_35_4_VITIS_LOOP_36_5_fu_82.sparsemux_7_2_32_1_1_U137", "Parent" : "27"},
	{"ID" : "134", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv_and_pool_U0.grp_conv_and_pool_Pipeline_VITIS_LOOP_34_3_VITIS_LOOP_35_4_VITIS_LOOP_36_5_fu_82.sparsemux_7_2_32_1_1_U138", "Parent" : "27"},
	{"ID" : "135", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv_and_pool_U0.grp_conv_and_pool_Pipeline_VITIS_LOOP_34_3_VITIS_LOOP_35_4_VITIS_LOOP_36_5_fu_82.sparsemux_7_2_32_1_1_U139", "Parent" : "27"},
	{"ID" : "136", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv_and_pool_U0.grp_conv_and_pool_Pipeline_VITIS_LOOP_34_3_VITIS_LOOP_35_4_VITIS_LOOP_36_5_fu_82.sparsemux_7_2_32_1_1_U140", "Parent" : "27"},
	{"ID" : "137", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv_and_pool_U0.grp_conv_and_pool_Pipeline_VITIS_LOOP_34_3_VITIS_LOOP_35_4_VITIS_LOOP_36_5_fu_82.sparsemux_7_2_32_1_1_U141", "Parent" : "27"},
	{"ID" : "138", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv_and_pool_U0.grp_conv_and_pool_Pipeline_VITIS_LOOP_34_3_VITIS_LOOP_35_4_VITIS_LOOP_36_5_fu_82.sparsemux_7_2_32_1_1_U142", "Parent" : "27"},
	{"ID" : "139", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv_and_pool_U0.grp_conv_and_pool_Pipeline_VITIS_LOOP_34_3_VITIS_LOOP_35_4_VITIS_LOOP_36_5_fu_82.sparsemux_7_2_32_1_1_U143", "Parent" : "27"},
	{"ID" : "140", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv_and_pool_U0.grp_conv_and_pool_Pipeline_VITIS_LOOP_34_3_VITIS_LOOP_35_4_VITIS_LOOP_36_5_fu_82.sparsemux_7_2_32_1_1_U144", "Parent" : "27"},
	{"ID" : "141", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv_and_pool_U0.grp_conv_and_pool_Pipeline_VITIS_LOOP_34_3_VITIS_LOOP_35_4_VITIS_LOOP_36_5_fu_82.sparsemux_7_2_32_1_1_U145", "Parent" : "27"},
	{"ID" : "142", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv_and_pool_U0.grp_conv_and_pool_Pipeline_VITIS_LOOP_34_3_VITIS_LOOP_35_4_VITIS_LOOP_36_5_fu_82.sparsemux_7_2_32_1_1_U146", "Parent" : "27"},
	{"ID" : "143", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv_and_pool_U0.grp_conv_and_pool_Pipeline_VITIS_LOOP_34_3_VITIS_LOOP_35_4_VITIS_LOOP_36_5_fu_82.sparsemux_7_2_32_1_1_U147", "Parent" : "27"},
	{"ID" : "144", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv_and_pool_U0.grp_conv_and_pool_Pipeline_VITIS_LOOP_34_3_VITIS_LOOP_35_4_VITIS_LOOP_36_5_fu_82.sparsemux_7_2_32_1_1_U148", "Parent" : "27"},
	{"ID" : "145", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv_and_pool_U0.grp_conv_and_pool_Pipeline_VITIS_LOOP_34_3_VITIS_LOOP_35_4_VITIS_LOOP_36_5_fu_82.sparsemux_7_2_32_1_1_U149", "Parent" : "27"},
	{"ID" : "146", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv_and_pool_U0.grp_conv_and_pool_Pipeline_VITIS_LOOP_34_3_VITIS_LOOP_35_4_VITIS_LOOP_36_5_fu_82.sparsemux_7_2_32_1_1_U150", "Parent" : "27"},
	{"ID" : "147", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv_and_pool_U0.grp_conv_and_pool_Pipeline_VITIS_LOOP_34_3_VITIS_LOOP_35_4_VITIS_LOOP_36_5_fu_82.sparsemux_7_2_32_1_1_U151", "Parent" : "27"},
	{"ID" : "148", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv_and_pool_U0.grp_conv_and_pool_Pipeline_VITIS_LOOP_34_3_VITIS_LOOP_35_4_VITIS_LOOP_36_5_fu_82.sparsemux_7_2_32_1_1_U152", "Parent" : "27"},
	{"ID" : "149", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv_and_pool_U0.grp_conv_and_pool_Pipeline_VITIS_LOOP_34_3_VITIS_LOOP_35_4_VITIS_LOOP_36_5_fu_82.sparsemux_7_2_32_1_1_U153", "Parent" : "27"},
	{"ID" : "150", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv_and_pool_U0.grp_conv_and_pool_Pipeline_VITIS_LOOP_34_3_VITIS_LOOP_35_4_VITIS_LOOP_36_5_fu_82.sparsemux_7_2_32_1_1_U154", "Parent" : "27"},
	{"ID" : "151", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv_and_pool_U0.grp_conv_and_pool_Pipeline_VITIS_LOOP_34_3_VITIS_LOOP_35_4_VITIS_LOOP_36_5_fu_82.sparsemux_7_2_32_1_1_U155", "Parent" : "27"},
	{"ID" : "152", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv_and_pool_U0.grp_conv_and_pool_Pipeline_VITIS_LOOP_34_3_VITIS_LOOP_35_4_VITIS_LOOP_36_5_fu_82.sparsemux_7_2_32_1_1_U156", "Parent" : "27"},
	{"ID" : "153", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv_and_pool_U0.grp_conv_and_pool_Pipeline_VITIS_LOOP_34_3_VITIS_LOOP_35_4_VITIS_LOOP_36_5_fu_82.sparsemux_7_2_32_1_1_U157", "Parent" : "27"},
	{"ID" : "154", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv_and_pool_U0.grp_conv_and_pool_Pipeline_VITIS_LOOP_34_3_VITIS_LOOP_35_4_VITIS_LOOP_36_5_fu_82.sparsemux_7_2_32_1_1_U158", "Parent" : "27"},
	{"ID" : "155", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv_and_pool_U0.grp_conv_and_pool_Pipeline_VITIS_LOOP_34_3_VITIS_LOOP_35_4_VITIS_LOOP_36_5_fu_82.sparsemux_7_2_32_1_1_U159", "Parent" : "27"},
	{"ID" : "156", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv_and_pool_U0.grp_conv_and_pool_Pipeline_VITIS_LOOP_34_3_VITIS_LOOP_35_4_VITIS_LOOP_36_5_fu_82.sparsemux_7_2_32_1_1_U160", "Parent" : "27"},
	{"ID" : "157", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv_and_pool_U0.grp_conv_and_pool_Pipeline_VITIS_LOOP_34_3_VITIS_LOOP_35_4_VITIS_LOOP_36_5_fu_82.sparsemux_7_2_32_1_1_U161", "Parent" : "27"},
	{"ID" : "158", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv_and_pool_U0.grp_conv_and_pool_Pipeline_VITIS_LOOP_34_3_VITIS_LOOP_35_4_VITIS_LOOP_36_5_fu_82.sparsemux_7_2_32_1_1_U162", "Parent" : "27"},
	{"ID" : "159", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv_and_pool_U0.grp_conv_and_pool_Pipeline_VITIS_LOOP_34_3_VITIS_LOOP_35_4_VITIS_LOOP_36_5_fu_82.sparsemux_7_2_32_1_1_U163", "Parent" : "27"},
	{"ID" : "160", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv_and_pool_U0.grp_conv_and_pool_Pipeline_VITIS_LOOP_34_3_VITIS_LOOP_35_4_VITIS_LOOP_36_5_fu_82.sparsemux_7_2_32_1_1_U164", "Parent" : "27"},
	{"ID" : "161", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv_and_pool_U0.grp_conv_and_pool_Pipeline_VITIS_LOOP_34_3_VITIS_LOOP_35_4_VITIS_LOOP_36_5_fu_82.sparsemux_7_2_32_1_1_U165", "Parent" : "27"},
	{"ID" : "162", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv_and_pool_U0.grp_conv_and_pool_Pipeline_VITIS_LOOP_34_3_VITIS_LOOP_35_4_VITIS_LOOP_36_5_fu_82.sparsemux_7_2_32_1_1_U166", "Parent" : "27"},
	{"ID" : "163", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv_and_pool_U0.grp_conv_and_pool_Pipeline_VITIS_LOOP_34_3_VITIS_LOOP_35_4_VITIS_LOOP_36_5_fu_82.sparsemux_7_2_32_1_1_U167", "Parent" : "27"},
	{"ID" : "164", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv_and_pool_U0.grp_conv_and_pool_Pipeline_VITIS_LOOP_34_3_VITIS_LOOP_35_4_VITIS_LOOP_36_5_fu_82.sparsemux_7_2_32_1_1_U168", "Parent" : "27"},
	{"ID" : "165", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv_and_pool_U0.grp_conv_and_pool_Pipeline_VITIS_LOOP_34_3_VITIS_LOOP_35_4_VITIS_LOOP_36_5_fu_82.flow_control_loop_pipe_sequential_init_U", "Parent" : "27"},
	{"ID" : "166", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv_and_pool_U0.grp_conv_and_pool_Pipeline_VITIS_LOOP_34_3_VITIS_LOOP_35_4_VITIS_LOOP_36_5_fu_82.frp_pipeline_valid_U", "Parent" : "27"},
	{"ID" : "167", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv_and_pool_U0.grp_conv_and_pool_Pipeline_VITIS_LOOP_34_3_VITIS_LOOP_35_4_VITIS_LOOP_36_5_fu_82.pf_pool_stream_U", "Parent" : "27"},
	{"ID" : "168", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dense_and_write_U0", "Parent" : "0", "Child" : ["169", "176", "179", "180", "181", "182", "183", "184", "185"],
		"CDFG" : "dense_and_write",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4082", "EstimateLatencyMax" : "4082",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"StartSource" : "11",
		"StartFifo" : "start_for_dense_and_write_U0_U",
		"Port" : [
			{"Name" : "pool_stream", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["11"], "DependentChan" : "187", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "169", "SubInstance" : "grp_dense_and_write_Pipeline_VITIS_LOOP_73_1_VITIS_LOOP_74_2_VITIS_LOOP_75_3_fu_84", "Port" : "pool_stream", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "out_stream_V_data_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "out_stream",
				"SubConnect" : [
					{"ID" : "176", "SubInstance" : "grp_dense_and_write_Pipeline_VITIS_LOOP_88_5_fu_100", "Port" : "out_stream_V_data_V", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "out_stream_V_keep_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "out_stream",
				"SubConnect" : [
					{"ID" : "176", "SubInstance" : "grp_dense_and_write_Pipeline_VITIS_LOOP_88_5_fu_100", "Port" : "out_stream_V_keep_V", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "out_stream_V_strb_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "out_stream",
				"SubConnect" : [
					{"ID" : "176", "SubInstance" : "grp_dense_and_write_Pipeline_VITIS_LOOP_88_5_fu_100", "Port" : "out_stream_V_strb_V", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "out_stream_V_user_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "out_stream",
				"SubConnect" : [
					{"ID" : "176", "SubInstance" : "grp_dense_and_write_Pipeline_VITIS_LOOP_88_5_fu_100", "Port" : "out_stream_V_user_V", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "out_stream_V_last_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "out_stream",
				"SubConnect" : [
					{"ID" : "176", "SubInstance" : "grp_dense_and_write_Pipeline_VITIS_LOOP_88_5_fu_100", "Port" : "out_stream_V_last_V", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "out_stream_V_id_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "out_stream",
				"SubConnect" : [
					{"ID" : "176", "SubInstance" : "grp_dense_and_write_Pipeline_VITIS_LOOP_88_5_fu_100", "Port" : "out_stream_V_id_V", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "out_stream_V_dest_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "out_stream",
				"SubConnect" : [
					{"ID" : "176", "SubInstance" : "grp_dense_and_write_Pipeline_VITIS_LOOP_88_5_fu_100", "Port" : "out_stream_V_dest_V", "Inst_start_state" : "4", "Inst_end_state" : "5"}]}]},
	{"ID" : "169", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dense_and_write_U0.grp_dense_and_write_Pipeline_VITIS_LOOP_73_1_VITIS_LOOP_74_2_VITIS_LOOP_75_3_fu_84", "Parent" : "168", "Child" : ["170", "171", "172", "173", "174", "175"],
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
	{"ID" : "170", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dense_and_write_U0.grp_dense_and_write_Pipeline_VITIS_LOOP_73_1_VITIS_LOOP_74_2_VITIS_LOOP_75_3_fu_84.fadd_32ns_32ns_32_4_full_dsp_1_U190", "Parent" : "169"},
	{"ID" : "171", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dense_and_write_U0.grp_dense_and_write_Pipeline_VITIS_LOOP_73_1_VITIS_LOOP_74_2_VITIS_LOOP_75_3_fu_84.fadd_32ns_32ns_32_4_full_dsp_1_U191", "Parent" : "169"},
	{"ID" : "172", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dense_and_write_U0.grp_dense_and_write_Pipeline_VITIS_LOOP_73_1_VITIS_LOOP_74_2_VITIS_LOOP_75_3_fu_84.fadd_32ns_32ns_32_4_full_dsp_1_U192", "Parent" : "169"},
	{"ID" : "173", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dense_and_write_U0.grp_dense_and_write_Pipeline_VITIS_LOOP_73_1_VITIS_LOOP_74_2_VITIS_LOOP_75_3_fu_84.fadd_32ns_32ns_32_4_full_dsp_1_U193", "Parent" : "169"},
	{"ID" : "174", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dense_and_write_U0.grp_dense_and_write_Pipeline_VITIS_LOOP_73_1_VITIS_LOOP_74_2_VITIS_LOOP_75_3_fu_84.fmul_32ns_32ns_32_3_max_dsp_1_U194", "Parent" : "169"},
	{"ID" : "175", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dense_and_write_U0.grp_dense_and_write_Pipeline_VITIS_LOOP_73_1_VITIS_LOOP_74_2_VITIS_LOOP_75_3_fu_84.flow_control_loop_pipe_sequential_init_U", "Parent" : "169"},
	{"ID" : "176", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dense_and_write_U0.grp_dense_and_write_Pipeline_VITIS_LOOP_88_5_fu_100", "Parent" : "168", "Child" : ["177", "178"],
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
	{"ID" : "177", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dense_and_write_U0.grp_dense_and_write_Pipeline_VITIS_LOOP_88_5_fu_100.sparsemux_21_4_32_1_1_U206", "Parent" : "176"},
	{"ID" : "178", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dense_and_write_U0.grp_dense_and_write_Pipeline_VITIS_LOOP_88_5_fu_100.flow_control_loop_pipe_sequential_init_U", "Parent" : "176"},
	{"ID" : "179", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dense_and_write_U0.regslice_both_out_stream_V_data_V_U", "Parent" : "168"},
	{"ID" : "180", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dense_and_write_U0.regslice_both_out_stream_V_keep_V_U", "Parent" : "168"},
	{"ID" : "181", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dense_and_write_U0.regslice_both_out_stream_V_strb_V_U", "Parent" : "168"},
	{"ID" : "182", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dense_and_write_U0.regslice_both_out_stream_V_user_V_U", "Parent" : "168"},
	{"ID" : "183", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dense_and_write_U0.regslice_both_out_stream_V_last_V_U", "Parent" : "168"},
	{"ID" : "184", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dense_and_write_U0.regslice_both_out_stream_V_id_V_U", "Parent" : "168"},
	{"ID" : "185", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dense_and_write_U0.regslice_both_out_stream_V_dest_V_U", "Parent" : "168"},
	{"ID" : "186", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.img_stream_U", "Parent" : "0"},
	{"ID" : "187", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pool_stream_U", "Parent" : "0"},
	{"ID" : "188", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_conv_and_pool_U0_U", "Parent" : "0"},
	{"ID" : "189", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_dense_and_write_U0_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	cnn_accelerator {
		in_stream_V_data_V {Type I LastRead 0 FirstWrite -1}
		in_stream_V_keep_V {Type I LastRead 0 FirstWrite -1}
		in_stream_V_strb_V {Type I LastRead 0 FirstWrite -1}
		in_stream_V_user_V {Type I LastRead 0 FirstWrite -1}
		in_stream_V_last_V {Type I LastRead 0 FirstWrite -1}
		in_stream_V_id_V {Type I LastRead 0 FirstWrite -1}
		in_stream_V_dest_V {Type I LastRead 0 FirstWrite -1}
		out_stream_V_data_V {Type O LastRead -1 FirstWrite 1}
		out_stream_V_keep_V {Type O LastRead -1 FirstWrite 1}
		out_stream_V_strb_V {Type O LastRead -1 FirstWrite 1}
		out_stream_V_user_V {Type O LastRead -1 FirstWrite 1}
		out_stream_V_last_V {Type O LastRead -1 FirstWrite 1}
		out_stream_V_id_V {Type O LastRead -1 FirstWrite 1}
		out_stream_V_dest_V {Type O LastRead -1 FirstWrite 1}}
	read_input {
		in_stream_V_data_V {Type I LastRead 0 FirstWrite -1}
		in_stream_V_keep_V {Type I LastRead 0 FirstWrite -1}
		in_stream_V_strb_V {Type I LastRead 0 FirstWrite -1}
		in_stream_V_user_V {Type I LastRead 0 FirstWrite -1}
		in_stream_V_last_V {Type I LastRead 0 FirstWrite -1}
		in_stream_V_id_V {Type I LastRead 0 FirstWrite -1}
		in_stream_V_dest_V {Type I LastRead 0 FirstWrite -1}
		img_stream {Type O LastRead -1 FirstWrite 0}}
	conv_and_pool {
		img_stream {Type I LastRead 8 FirstWrite -1}
		pool_stream {Type O LastRead -1 FirstWrite 53}}
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
		img_stream {Type I LastRead 8 FirstWrite -1}}
	conv_and_pool_Pipeline_VITIS_LOOP_34_3_VITIS_LOOP_35_4_VITIS_LOOP_36_5 {
		image_r {Type I LastRead 9 FirstWrite -1}
		image_1 {Type I LastRead 9 FirstWrite -1}
		image_2 {Type I LastRead 9 FirstWrite -1}
		image_3 {Type I LastRead 9 FirstWrite -1}
		image_4 {Type I LastRead 9 FirstWrite -1}
		image_5 {Type I LastRead 9 FirstWrite -1}
		image_6 {Type I LastRead 9 FirstWrite -1}
		image_7 {Type I LastRead 9 FirstWrite -1}
		image_8 {Type I LastRead 9 FirstWrite -1}
		pool_stream {Type O LastRead -1 FirstWrite 53}}
	dense_and_write {
		pool_stream {Type I LastRead 1 FirstWrite -1}
		out_stream_V_data_V {Type O LastRead -1 FirstWrite 1}
		out_stream_V_keep_V {Type O LastRead -1 FirstWrite 1}
		out_stream_V_strb_V {Type O LastRead -1 FirstWrite 1}
		out_stream_V_user_V {Type O LastRead -1 FirstWrite 1}
		out_stream_V_last_V {Type O LastRead -1 FirstWrite 1}
		out_stream_V_id_V {Type O LastRead -1 FirstWrite 1}
		out_stream_V_dest_V {Type O LastRead -1 FirstWrite 1}}
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
		add9_out {Type O LastRead -1 FirstWrite 7}}
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
	{"Name" : "Latency", "Min" : "4138", "Max" : "4138"}
	, {"Name" : "Interval", "Min" : "4083", "Max" : "4083"}
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
	in_stream_V_dest_V { axis {  { in_stream_TDEST in_data 0 1 }  { in_stream_TVALID in_vld 0 1 }  { in_stream_TREADY in_acc 1 1 } } }
	out_stream_V_data_V { axis {  { out_stream_TDATA out_data 1 32 } } }
	out_stream_V_keep_V { axis {  { out_stream_TKEEP out_data 1 4 } } }
	out_stream_V_strb_V { axis {  { out_stream_TSTRB out_data 1 4 } } }
	out_stream_V_user_V { axis {  { out_stream_TUSER out_data 1 1 } } }
	out_stream_V_last_V { axis {  { out_stream_TLAST out_data 1 1 } } }
	out_stream_V_id_V { axis {  { out_stream_TID out_data 1 1 } } }
	out_stream_V_dest_V { axis {  { out_stream_TDEST out_data 1 1 }  { out_stream_TVALID out_vld 1 1 }  { out_stream_TREADY out_acc 0 1 } } }
}

set maxi_interface_dict [dict create]

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
