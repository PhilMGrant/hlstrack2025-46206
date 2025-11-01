set moduleName choleskyAlt_false_3_choleskyTraits_x_complex_x_complex_ap_fixed_Pipeline_sum_s
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type loop_auto_rewind
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
set C_modelName {choleskyAlt<false,3,choleskyTraits,x_complex,x_complex<ap_fixed >>_Pipeline_sum_}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ sext_ln59 int 31 regular  }
	{ sext_ln59_1 int 31 regular  }
	{ j int 1 regular  }
	{ empty int 2 regular  }
	{ L_internal_re_3 int 16 regular  }
	{ L_internal_re_4 int 16 regular  }
	{ L_internal_re_5 int 16 regular  }
	{ L_internal_im_3 int 16 regular  }
	{ L_internal_im_4 int 16 regular  }
	{ L_internal_im_5 int 16 regular  }
	{ zext_ln468 int 1 regular  }
	{ product_sum_re_2_out int 35 regular {pointer 1}  }
	{ product_sum_im_2_out int 35 regular {pointer 1}  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "sext_ln59", "interface" : "wire", "bitwidth" : 31, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln59_1", "interface" : "wire", "bitwidth" : 31, "direction" : "READONLY"} , 
 	{ "Name" : "j", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "empty", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "L_internal_re_3", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "L_internal_re_4", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "L_internal_re_5", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "L_internal_im_3", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "L_internal_im_4", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "L_internal_im_5", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln468", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "product_sum_re_2_out", "interface" : "wire", "bitwidth" : 35, "direction" : "WRITEONLY"} , 
 	{ "Name" : "product_sum_im_2_out", "interface" : "wire", "bitwidth" : 35, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 21
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ sext_ln59 sc_in sc_lv 31 signal 0 } 
	{ sext_ln59_1 sc_in sc_lv 31 signal 1 } 
	{ j sc_in sc_lv 1 signal 2 } 
	{ empty sc_in sc_lv 2 signal 3 } 
	{ L_internal_re_3 sc_in sc_lv 16 signal 4 } 
	{ L_internal_re_4 sc_in sc_lv 16 signal 5 } 
	{ L_internal_re_5 sc_in sc_lv 16 signal 6 } 
	{ L_internal_im_3 sc_in sc_lv 16 signal 7 } 
	{ L_internal_im_4 sc_in sc_lv 16 signal 8 } 
	{ L_internal_im_5 sc_in sc_lv 16 signal 9 } 
	{ zext_ln468 sc_in sc_lv 1 signal 10 } 
	{ product_sum_re_2_out sc_out sc_lv 35 signal 11 } 
	{ product_sum_re_2_out_ap_vld sc_out sc_logic 1 outvld 11 } 
	{ product_sum_im_2_out sc_out sc_lv 35 signal 12 } 
	{ product_sum_im_2_out_ap_vld sc_out sc_logic 1 outvld 12 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "sext_ln59", "direction": "in", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "sext_ln59", "role": "default" }} , 
 	{ "name": "sext_ln59_1", "direction": "in", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "sext_ln59_1", "role": "default" }} , 
 	{ "name": "j", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "j", "role": "default" }} , 
 	{ "name": "empty", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "empty", "role": "default" }} , 
 	{ "name": "L_internal_re_3", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "L_internal_re_3", "role": "default" }} , 
 	{ "name": "L_internal_re_4", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "L_internal_re_4", "role": "default" }} , 
 	{ "name": "L_internal_re_5", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "L_internal_re_5", "role": "default" }} , 
 	{ "name": "L_internal_im_3", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "L_internal_im_3", "role": "default" }} , 
 	{ "name": "L_internal_im_4", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "L_internal_im_4", "role": "default" }} , 
 	{ "name": "L_internal_im_5", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "L_internal_im_5", "role": "default" }} , 
 	{ "name": "zext_ln468", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "zext_ln468", "role": "default" }} , 
 	{ "name": "product_sum_re_2_out", "direction": "out", "datatype": "sc_lv", "bitwidth":35, "type": "signal", "bundle":{"name": "product_sum_re_2_out", "role": "default" }} , 
 	{ "name": "product_sum_re_2_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "product_sum_re_2_out", "role": "ap_vld" }} , 
 	{ "name": "product_sum_im_2_out", "direction": "out", "datatype": "sc_lv", "bitwidth":35, "type": "signal", "bundle":{"name": "product_sum_im_2_out", "role": "default" }} , 
 	{ "name": "product_sum_im_2_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "product_sum_im_2_out", "role": "ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7"],
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
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_7_2_16_1_1_U4", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_7_2_16_1_1_U5", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_16s_16s_32_2_1_U6", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_16s_16s_32_2_1_U7", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_16s_16s_32_2_1_U8", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_16s_16s_32_2_1_U9", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
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
	{"Name" : "Latency", "Min" : "2", "Max" : "8"}
	, {"Name" : "Interval", "Min" : "2", "Max" : "8"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	sext_ln59 { ap_none {  { sext_ln59 in_data 0 31 } } }
	sext_ln59_1 { ap_none {  { sext_ln59_1 in_data 0 31 } } }
	j { ap_none {  { j in_data 0 1 } } }
	empty { ap_none {  { empty in_data 0 2 } } }
	L_internal_re_3 { ap_none {  { L_internal_re_3 in_data 0 16 } } }
	L_internal_re_4 { ap_none {  { L_internal_re_4 in_data 0 16 } } }
	L_internal_re_5 { ap_none {  { L_internal_re_5 in_data 0 16 } } }
	L_internal_im_3 { ap_none {  { L_internal_im_3 in_data 0 16 } } }
	L_internal_im_4 { ap_none {  { L_internal_im_4 in_data 0 16 } } }
	L_internal_im_5 { ap_none {  { L_internal_im_5 in_data 0 16 } } }
	zext_ln468 { ap_none {  { zext_ln468 in_data 0 1 } } }
	product_sum_re_2_out { ap_vld {  { product_sum_re_2_out out_data 1 35 }  { product_sum_re_2_out_ap_vld out_vld 1 1 } } }
	product_sum_im_2_out { ap_vld {  { product_sum_im_2_out out_data 1 35 }  { product_sum_im_2_out_ap_vld out_vld 1 1 } } }
}
