set moduleName kernel_cholesky_0
set isTopModule 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set DLRegFirstOffset 0
set DLRegItemOffset 0
set svuvm_can_support 1
set cdfgNum 7
set C_modelName {kernel_cholesky_0}
set C_modelType { int 32 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ matrixAStrm int 32 regular {fifo 0 volatile }  }
	{ matrixLStrm int 32 regular {fifo 1 volatile }  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "matrixAStrm", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "matrixLStrm", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 32} ]}
# RTL Port declarations: 
set portNum 13
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ matrixAStrm_dout sc_in sc_lv 32 signal 0 } 
	{ matrixAStrm_empty_n sc_in sc_logic 1 signal 0 } 
	{ matrixAStrm_read sc_out sc_logic 1 signal 0 } 
	{ matrixLStrm_din sc_out sc_lv 32 signal 1 } 
	{ matrixLStrm_full_n sc_in sc_logic 1 signal 1 } 
	{ matrixLStrm_write sc_out sc_logic 1 signal 1 } 
	{ ap_return sc_out sc_lv 32 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "matrixAStrm_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "matrixAStrm", "role": "dout" }} , 
 	{ "name": "matrixAStrm_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "matrixAStrm", "role": "empty_n" }} , 
 	{ "name": "matrixAStrm_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "matrixAStrm", "role": "read" }} , 
 	{ "name": "matrixLStrm_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "matrixLStrm", "role": "din" }} , 
 	{ "name": "matrixLStrm_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "matrixLStrm", "role": "full_n" }} , 
 	{ "name": "matrixLStrm_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "matrixLStrm", "role": "write" }} , 
 	{ "name": "ap_return", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "7", "41"],
		"CDFG" : "kernel_cholesky_0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "372", "EstimateLatencyMax" : "528",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "matrixAStrm", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_kernel_cholesky_0_Pipeline_VITIS_LOOP_724_1_fu_44", "Port" : "matrixAStrm", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "matrixLStrm", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "41", "SubInstance" : "grp_kernel_cholesky_0_Pipeline_VITIS_LOOP_734_3_fu_62", "Port" : "matrixLStrm", "Inst_start_state" : "5", "Inst_end_state" : "6"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_re_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_im_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.L_re_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.L_im_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_kernel_cholesky_0_Pipeline_VITIS_LOOP_724_1_fu_44", "Parent" : "0", "Child" : ["6"],
		"CDFG" : "kernel_cholesky_0_Pipeline_VITIS_LOOP_724_1",
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
			{"Name" : "A_re", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "A_im", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "matrixAStrm", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "matrixAStrm_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_724_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "3", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage1", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage1_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel_cholesky_0_Pipeline_VITIS_LOOP_724_1_fu_44.flow_control_loop_pipe_sequential_init_U", "Parent" : "5"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_choleskyAlt_false_3_choleskyTraits_x_complex_x_complex_ap_fixed_s_fu_54", "Parent" : "0", "Child" : ["8", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40"],
		"CDFG" : "choleskyAlt_false_3_choleskyTraits_x_complex_x_complex_ap_fixed_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "343", "EstimateLatencyMax" : "499",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "A_re", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "A_im", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L_re", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "L_im", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "col_loop", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "132", "FirstState" : "ap_ST_fsm_state5", "LastState" : ["ap_ST_fsm_state22"], "QuitState" : ["ap_ST_fsm_state5"], "PreState" : ["ap_ST_fsm_state4"], "PostState" : ["ap_ST_fsm_state23"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "row_loop", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "132", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state132"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_choleskyAlt_false_3_choleskyTraits_x_complex_x_complex_ap_fixed_s_fu_54.grp_choleskyAlt_false_3_choleskyTraits_x_complex_x_complex_ap_fixed_Pipeline_sum_s_fu_477", "Parent" : "7", "Child" : ["9", "10", "11", "12", "13", "14", "15"],
		"CDFG" : "choleskyAlt_false_3_choleskyTraits_x_complex_x_complex_ap_fixed_Pipeline_sum_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2", "EstimateLatencyMax" : "8",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "sext_ln59", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln59_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "j", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty", "Type" : "None", "Direction" : "I"},
			{"Name" : "L_internal_re_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "L_internal_re_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "L_internal_re_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "L_internal_im_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "L_internal_im_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "L_internal_im_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln468", "Type" : "None", "Direction" : "I"},
			{"Name" : "product_sum_re_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "product_sum_im_2_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "sum_loop", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter6", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter6", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "9", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_choleskyAlt_false_3_choleskyTraits_x_complex_x_complex_ap_fixed_s_fu_54.grp_choleskyAlt_false_3_choleskyTraits_x_complex_x_complex_ap_fixed_Pipeline_sum_s_fu_477.sparsemux_7_2_16_1_1_U4", "Parent" : "8"},
	{"ID" : "10", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_choleskyAlt_false_3_choleskyTraits_x_complex_x_complex_ap_fixed_s_fu_54.grp_choleskyAlt_false_3_choleskyTraits_x_complex_x_complex_ap_fixed_Pipeline_sum_s_fu_477.sparsemux_7_2_16_1_1_U5", "Parent" : "8"},
	{"ID" : "11", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_choleskyAlt_false_3_choleskyTraits_x_complex_x_complex_ap_fixed_s_fu_54.grp_choleskyAlt_false_3_choleskyTraits_x_complex_x_complex_ap_fixed_Pipeline_sum_s_fu_477.mul_16s_16s_32_2_1_U6", "Parent" : "8"},
	{"ID" : "12", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_choleskyAlt_false_3_choleskyTraits_x_complex_x_complex_ap_fixed_s_fu_54.grp_choleskyAlt_false_3_choleskyTraits_x_complex_x_complex_ap_fixed_Pipeline_sum_s_fu_477.mul_16s_16s_32_2_1_U7", "Parent" : "8"},
	{"ID" : "13", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_choleskyAlt_false_3_choleskyTraits_x_complex_x_complex_ap_fixed_s_fu_54.grp_choleskyAlt_false_3_choleskyTraits_x_complex_x_complex_ap_fixed_Pipeline_sum_s_fu_477.mul_16s_16s_32_2_1_U8", "Parent" : "8"},
	{"ID" : "14", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_choleskyAlt_false_3_choleskyTraits_x_complex_x_complex_ap_fixed_s_fu_54.grp_choleskyAlt_false_3_choleskyTraits_x_complex_x_complex_ap_fixed_Pipeline_sum_s_fu_477.mul_16s_16s_32_2_1_U9", "Parent" : "8"},
	{"ID" : "15", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_choleskyAlt_false_3_choleskyTraits_x_complex_x_complex_ap_fixed_s_fu_54.grp_choleskyAlt_false_3_choleskyTraits_x_complex_x_complex_ap_fixed_Pipeline_sum_s_fu_477.flow_control_loop_pipe_sequential_init_U", "Parent" : "8"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_choleskyAlt_false_3_choleskyTraits_x_complex_x_complex_ap_fixed_s_fu_54.dsqrt_64ns_64ns_64_57_no_dsp_1_U25", "Parent" : "7"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_choleskyAlt_false_3_choleskyTraits_x_complex_x_complex_ap_fixed_s_fu_54.dsqrt_64ns_64ns_64_57_no_dsp_1_U26", "Parent" : "7"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_choleskyAlt_false_3_choleskyTraits_x_complex_x_complex_ap_fixed_s_fu_54.mul_34s_33s_67_3_1_U27", "Parent" : "7"},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_choleskyAlt_false_3_choleskyTraits_x_complex_x_complex_ap_fixed_s_fu_54.mul_34s_33s_67_3_1_U28", "Parent" : "7"},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_choleskyAlt_false_3_choleskyTraits_x_complex_x_complex_ap_fixed_s_fu_54.mul_2s_2s_3_1_1_U29", "Parent" : "7"},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_choleskyAlt_false_3_choleskyTraits_x_complex_x_complex_ap_fixed_s_fu_54.mul_2s_2s_2_1_1_U30", "Parent" : "7"},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_choleskyAlt_false_3_choleskyTraits_x_complex_x_complex_ap_fixed_s_fu_54.mul_16s_16s_32_2_1_U31", "Parent" : "7"},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_choleskyAlt_false_3_choleskyTraits_x_complex_x_complex_ap_fixed_s_fu_54.mul_16s_16s_32_2_1_U32", "Parent" : "7"},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_choleskyAlt_false_3_choleskyTraits_x_complex_x_complex_ap_fixed_s_fu_54.ctlz_17_17_1_1_U33", "Parent" : "7"},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_choleskyAlt_false_3_choleskyTraits_x_complex_x_complex_ap_fixed_s_fu_54.ctlz_34_34_1_1_U34", "Parent" : "7"},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_choleskyAlt_false_3_choleskyTraits_x_complex_x_complex_ap_fixed_s_fu_54.bitselect_1ns_54ns_32s_1_1_1_U35", "Parent" : "7"},
	{"ID" : "27", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_choleskyAlt_false_3_choleskyTraits_x_complex_x_complex_ap_fixed_s_fu_54.bitselect_1ns_54ns_32s_1_1_1_U36", "Parent" : "7"},
	{"ID" : "28", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_choleskyAlt_false_3_choleskyTraits_x_complex_x_complex_ap_fixed_s_fu_54.bitselect_1ns_54ns_32s_1_1_1_U37", "Parent" : "7"},
	{"ID" : "29", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_choleskyAlt_false_3_choleskyTraits_x_complex_x_complex_ap_fixed_s_fu_54.bitselect_1ns_54ns_32s_1_1_1_U38", "Parent" : "7"},
	{"ID" : "30", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_choleskyAlt_false_3_choleskyTraits_x_complex_x_complex_ap_fixed_s_fu_54.sparsemux_7_2_17_1_1_U39", "Parent" : "7"},
	{"ID" : "31", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_choleskyAlt_false_3_choleskyTraits_x_complex_x_complex_ap_fixed_s_fu_54.sparsemux_7_2_1_1_1_U40", "Parent" : "7"},
	{"ID" : "32", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_choleskyAlt_false_3_choleskyTraits_x_complex_x_complex_ap_fixed_s_fu_54.sparsemux_7_2_1_1_1_U41", "Parent" : "7"},
	{"ID" : "33", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_choleskyAlt_false_3_choleskyTraits_x_complex_x_complex_ap_fixed_s_fu_54.sparsemux_7_2_1_1_1_U42", "Parent" : "7"},
	{"ID" : "34", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_choleskyAlt_false_3_choleskyTraits_x_complex_x_complex_ap_fixed_s_fu_54.sparsemux_7_2_34_1_1_U43", "Parent" : "7"},
	{"ID" : "35", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_choleskyAlt_false_3_choleskyTraits_x_complex_x_complex_ap_fixed_s_fu_54.sparsemux_7_2_1_1_1_U44", "Parent" : "7"},
	{"ID" : "36", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_choleskyAlt_false_3_choleskyTraits_x_complex_x_complex_ap_fixed_s_fu_54.sparsemux_7_2_1_1_1_U45", "Parent" : "7"},
	{"ID" : "37", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_choleskyAlt_false_3_choleskyTraits_x_complex_x_complex_ap_fixed_s_fu_54.sparsemux_7_2_17_1_1_U46", "Parent" : "7"},
	{"ID" : "38", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_choleskyAlt_false_3_choleskyTraits_x_complex_x_complex_ap_fixed_s_fu_54.sparsemux_7_2_1_1_1_U47", "Parent" : "7"},
	{"ID" : "39", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_choleskyAlt_false_3_choleskyTraits_x_complex_x_complex_ap_fixed_s_fu_54.sparsemux_7_2_34_1_1_U48", "Parent" : "7"},
	{"ID" : "40", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_choleskyAlt_false_3_choleskyTraits_x_complex_x_complex_ap_fixed_s_fu_54.sdiv_34ns_19s_34_38_1_U49", "Parent" : "7"},
	{"ID" : "41", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_kernel_cholesky_0_Pipeline_VITIS_LOOP_734_3_fu_62", "Parent" : "0", "Child" : ["42"],
		"CDFG" : "kernel_cholesky_0_Pipeline_VITIS_LOOP_734_3",
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
			{"Name" : "L_re", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L_im", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "matrixLStrm", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "matrixLStrm_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_734_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "3", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage1", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage1_subdone", "QuitState" : "ap_ST_fsm_pp0_stage1", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage1_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "42", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel_cholesky_0_Pipeline_VITIS_LOOP_734_3_fu_62.flow_control_loop_pipe_sequential_init_U", "Parent" : "41"}]}


set ArgLastReadFirstWriteLatency {
	kernel_cholesky_0 {
		matrixAStrm {Type I LastRead 3 FirstWrite -1}
		matrixLStrm {Type O LastRead -1 FirstWrite 2}}
	kernel_cholesky_0_Pipeline_VITIS_LOOP_724_1 {
		A_re {Type O LastRead -1 FirstWrite 1}
		A_im {Type O LastRead -1 FirstWrite 1}
		matrixAStrm {Type I LastRead 3 FirstWrite -1}}
	choleskyAlt_false_3_choleskyTraits_x_complex_x_complex_ap_fixed_s {
		A_re {Type I LastRead 5 FirstWrite -1}
		A_im {Type I LastRead 4 FirstWrite -1}
		L_re {Type O LastRead -1 FirstWrite 21}
		L_im {Type O LastRead -1 FirstWrite 4}}
	choleskyAlt_false_3_choleskyTraits_x_complex_x_complex_ap_fixed_Pipeline_sum_s {
		sext_ln59 {Type I LastRead 0 FirstWrite -1}
		sext_ln59_1 {Type I LastRead 0 FirstWrite -1}
		j {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		L_internal_re_3 {Type I LastRead 0 FirstWrite -1}
		L_internal_re_4 {Type I LastRead 0 FirstWrite -1}
		L_internal_re_5 {Type I LastRead 0 FirstWrite -1}
		L_internal_im_3 {Type I LastRead 0 FirstWrite -1}
		L_internal_im_4 {Type I LastRead 0 FirstWrite -1}
		L_internal_im_5 {Type I LastRead 0 FirstWrite -1}
		zext_ln468 {Type I LastRead 0 FirstWrite -1}
		product_sum_re_2_out {Type O LastRead -1 FirstWrite 5}
		product_sum_im_2_out {Type O LastRead -1 FirstWrite 5}}
	kernel_cholesky_0_Pipeline_VITIS_LOOP_734_3 {
		L_re {Type I LastRead 3 FirstWrite -1}
		L_im {Type I LastRead 3 FirstWrite -1}
		matrixLStrm {Type O LastRead -1 FirstWrite 2}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "372", "Max" : "528"}
	, {"Name" : "Interval", "Min" : "373", "Max" : "529"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	matrixAStrm { ap_fifo {  { matrixAStrm_dout fifo_data_in 0 32 }  { matrixAStrm_empty_n fifo_status 0 1 }  { matrixAStrm_read fifo_port_we 1 1 } } }
	matrixLStrm { ap_fifo {  { matrixLStrm_din fifo_data_in 1 32 }  { matrixLStrm_full_n fifo_status 0 1 }  { matrixLStrm_write fifo_port_we 1 1 } } }
}

set maxi_interface_dict [dict create]

# RTL port scheduling information:
set fifoSchedulingInfoList { 
	matrixAStrm { fifo_read 1 no_conditional }
	matrixLStrm { fifo_write 1 no_conditional }
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
