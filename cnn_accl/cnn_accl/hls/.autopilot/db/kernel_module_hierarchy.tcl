set ModuleHierarchy {[{
"Name" : "cnn_accelerator","ID" : "0","Type" : "dataflow",
"SubInsts" : [
	{"Name" : "read_input_U0","ID" : "1","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "VITIS_LOOP_9_1","ID" : "2","Type" : "pipeline"},]},
	{"Name" : "conv_and_pool_U0","ID" : "3","Type" : "sequential",
		"SubInsts" : [
		{"Name" : "grp_conv_and_pool_Pipeline_VITIS_LOOP_26_1_VITIS_LOOP_27_2_fu_58","ID" : "4","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "VITIS_LOOP_26_1_VITIS_LOOP_27_2","ID" : "5","Type" : "pipeline"},]},
		{"Name" : "grp_conv_and_pool_Pipeline_VITIS_LOOP_34_3_VITIS_LOOP_35_4_VITIS_LOOP_36_5_fu_82","ID" : "6","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "VITIS_LOOP_34_3_VITIS_LOOP_35_4_VITIS_LOOP_36_5","ID" : "7","Type" : "pipeline"},]},]},
	{"Name" : "dense_and_write_U0","ID" : "8","Type" : "sequential",
		"SubInsts" : [
		{"Name" : "grp_dense_and_write_Pipeline_VITIS_LOOP_73_1_VITIS_LOOP_74_2_VITIS_LOOP_75_3_fu_84","ID" : "9","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "VITIS_LOOP_73_1_VITIS_LOOP_74_2_VITIS_LOOP_75_3","ID" : "10","Type" : "pipeline"},]},
		{"Name" : "grp_dense_and_write_Pipeline_VITIS_LOOP_88_5_fu_100","ID" : "11","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "VITIS_LOOP_88_5","ID" : "12","Type" : "pipeline"},]},]},]
}]}