set moduleName choleskyAlt_false_3_choleskyTraits_x_complex_x_complex_ap_fixed_s
set isTopModule 0
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
set C_modelName {choleskyAlt<false,3,choleskyTraits,x_complex,x_complex<ap_fixed >>}
set C_modelType { int 32 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict A_re { MEM_WIDTH 16 MEM_SIZE 18 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict A_im { MEM_WIDTH 16 MEM_SIZE 18 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict L_re { MEM_WIDTH 16 MEM_SIZE 18 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict L_im { MEM_WIDTH 16 MEM_SIZE 18 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
set C_modelArgList {
	{ A_re int 16 regular {array 9 { 1 3 } 1 1 }  }
	{ A_im int 16 regular {array 9 { 1 3 } 1 1 }  }
	{ L_re int 16 regular {array 9 { 0 0 } 0 1 }  }
	{ L_im int 16 regular {array 9 { 0 0 } 0 1 }  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "A_re", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "A_im", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "L_re", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "L_im", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 32} ]}
# RTL Port declarations: 
set portNum 29
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ A_re_address0 sc_out sc_lv 4 signal 0 } 
	{ A_re_ce0 sc_out sc_logic 1 signal 0 } 
	{ A_re_q0 sc_in sc_lv 16 signal 0 } 
	{ A_im_address0 sc_out sc_lv 4 signal 1 } 
	{ A_im_ce0 sc_out sc_logic 1 signal 1 } 
	{ A_im_q0 sc_in sc_lv 16 signal 1 } 
	{ L_re_address0 sc_out sc_lv 4 signal 2 } 
	{ L_re_ce0 sc_out sc_logic 1 signal 2 } 
	{ L_re_we0 sc_out sc_logic 1 signal 2 } 
	{ L_re_d0 sc_out sc_lv 16 signal 2 } 
	{ L_re_address1 sc_out sc_lv 4 signal 2 } 
	{ L_re_ce1 sc_out sc_logic 1 signal 2 } 
	{ L_re_we1 sc_out sc_logic 1 signal 2 } 
	{ L_re_d1 sc_out sc_lv 16 signal 2 } 
	{ L_im_address0 sc_out sc_lv 4 signal 3 } 
	{ L_im_ce0 sc_out sc_logic 1 signal 3 } 
	{ L_im_we0 sc_out sc_logic 1 signal 3 } 
	{ L_im_d0 sc_out sc_lv 16 signal 3 } 
	{ L_im_address1 sc_out sc_lv 4 signal 3 } 
	{ L_im_ce1 sc_out sc_logic 1 signal 3 } 
	{ L_im_we1 sc_out sc_logic 1 signal 3 } 
	{ L_im_d1 sc_out sc_lv 16 signal 3 } 
	{ ap_return sc_out sc_lv 32 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "A_re_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "A_re", "role": "address0" }} , 
 	{ "name": "A_re_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A_re", "role": "ce0" }} , 
 	{ "name": "A_re_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "A_re", "role": "q0" }} , 
 	{ "name": "A_im_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "A_im", "role": "address0" }} , 
 	{ "name": "A_im_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A_im", "role": "ce0" }} , 
 	{ "name": "A_im_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "A_im", "role": "q0" }} , 
 	{ "name": "L_re_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "L_re", "role": "address0" }} , 
 	{ "name": "L_re_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "L_re", "role": "ce0" }} , 
 	{ "name": "L_re_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "L_re", "role": "we0" }} , 
 	{ "name": "L_re_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "L_re", "role": "d0" }} , 
 	{ "name": "L_re_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "L_re", "role": "address1" }} , 
 	{ "name": "L_re_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "L_re", "role": "ce1" }} , 
 	{ "name": "L_re_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "L_re", "role": "we1" }} , 
 	{ "name": "L_re_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "L_re", "role": "d1" }} , 
 	{ "name": "L_im_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "L_im", "role": "address0" }} , 
 	{ "name": "L_im_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "L_im", "role": "ce0" }} , 
 	{ "name": "L_im_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "L_im", "role": "we0" }} , 
 	{ "name": "L_im_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "L_im", "role": "d0" }} , 
 	{ "name": "L_im_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "L_im", "role": "address1" }} , 
 	{ "name": "L_im_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "L_im", "role": "ce1" }} , 
 	{ "name": "L_im_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "L_im", "role": "we1" }} , 
 	{ "name": "L_im_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "L_im", "role": "d1" }} , 
 	{ "name": "ap_return", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33"],
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
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_choleskyAlt_false_3_choleskyTraits_x_complex_x_complex_ap_fixed_Pipeline_sum_s_fu_477", "Parent" : "0", "Child" : ["2", "3", "4", "5", "6", "7", "8"],
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
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_choleskyAlt_false_3_choleskyTraits_x_complex_x_complex_ap_fixed_Pipeline_sum_s_fu_477.sparsemux_7_2_16_1_1_U4", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_choleskyAlt_false_3_choleskyTraits_x_complex_x_complex_ap_fixed_Pipeline_sum_s_fu_477.sparsemux_7_2_16_1_1_U5", "Parent" : "1"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_choleskyAlt_false_3_choleskyTraits_x_complex_x_complex_ap_fixed_Pipeline_sum_s_fu_477.mul_16s_16s_32_2_1_U6", "Parent" : "1"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_choleskyAlt_false_3_choleskyTraits_x_complex_x_complex_ap_fixed_Pipeline_sum_s_fu_477.mul_16s_16s_32_2_1_U7", "Parent" : "1"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_choleskyAlt_false_3_choleskyTraits_x_complex_x_complex_ap_fixed_Pipeline_sum_s_fu_477.mul_16s_16s_32_2_1_U8", "Parent" : "1"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_choleskyAlt_false_3_choleskyTraits_x_complex_x_complex_ap_fixed_Pipeline_sum_s_fu_477.mul_16s_16s_32_2_1_U9", "Parent" : "1"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_choleskyAlt_false_3_choleskyTraits_x_complex_x_complex_ap_fixed_Pipeline_sum_s_fu_477.flow_control_loop_pipe_sequential_init_U", "Parent" : "1"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dsqrt_64ns_64ns_64_57_no_dsp_1_U25", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dsqrt_64ns_64ns_64_57_no_dsp_1_U26", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_34s_33s_67_3_1_U27", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_34s_33s_67_3_1_U28", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_2s_2s_3_1_1_U29", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_2s_2s_2_1_1_U30", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_16s_16s_32_2_1_U31", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_16s_16s_32_2_1_U32", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ctlz_17_17_1_1_U33", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ctlz_34_34_1_1_U34", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.bitselect_1ns_54ns_32s_1_1_1_U35", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.bitselect_1ns_54ns_32s_1_1_1_U36", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.bitselect_1ns_54ns_32s_1_1_1_U37", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.bitselect_1ns_54ns_32s_1_1_1_U38", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_7_2_17_1_1_U39", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_7_2_1_1_1_U40", "Parent" : "0"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_7_2_1_1_1_U41", "Parent" : "0"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_7_2_1_1_1_U42", "Parent" : "0"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_7_2_34_1_1_U43", "Parent" : "0"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_7_2_1_1_1_U44", "Parent" : "0"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_7_2_1_1_1_U45", "Parent" : "0"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_7_2_17_1_1_U46", "Parent" : "0"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_7_2_1_1_1_U47", "Parent" : "0"},
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_7_2_34_1_1_U48", "Parent" : "0"},
	{"ID" : "33", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sdiv_34ns_19s_34_38_1_U49", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
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
		product_sum_im_2_out {Type O LastRead -1 FirstWrite 5}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "343", "Max" : "499"}
	, {"Name" : "Interval", "Min" : "343", "Max" : "499"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	A_re { ap_memory {  { A_re_address0 mem_address 1 4 }  { A_re_ce0 mem_ce 1 1 }  { A_re_q0 mem_dout 0 16 } } }
	A_im { ap_memory {  { A_im_address0 mem_address 1 4 }  { A_im_ce0 mem_ce 1 1 }  { A_im_q0 mem_dout 0 16 } } }
	L_re { ap_memory {  { L_re_address0 mem_address 1 4 }  { L_re_ce0 mem_ce 1 1 }  { L_re_we0 mem_we 1 1 }  { L_re_d0 mem_din 1 16 }  { L_re_address1 MemPortADDR2 1 4 }  { L_re_ce1 MemPortCE2 1 1 }  { L_re_we1 MemPortWE2 1 1 }  { L_re_d1 MemPortDIN2 1 16 } } }
	L_im { ap_memory {  { L_im_address0 mem_address 1 4 }  { L_im_ce0 mem_ce 1 1 }  { L_im_we0 mem_we 1 1 }  { L_im_d0 mem_din 1 16 }  { L_im_address1 MemPortADDR2 1 4 }  { L_im_ce1 MemPortCE2 1 1 }  { L_im_we1 MemPortWE2 1 1 }  { L_im_d1 MemPortDIN2 1 16 } } }
}
