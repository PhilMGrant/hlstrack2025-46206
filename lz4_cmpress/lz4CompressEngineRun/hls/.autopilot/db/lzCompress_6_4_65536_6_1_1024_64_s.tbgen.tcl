set moduleName lzCompress_6_4_65536_6_1_1024_64_s
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
set cdfgNum 19
set C_modelName {lzCompress<6, 4, 65536, 6, 1, 1024, 64>}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ inStream int 8 regular {fifo 0 volatile }  }
	{ compressdStream int 32 regular {fifo 1 volatile }  }
	{ input_size int 32 regular  }
	{ input_size_c2 int 32 regular {fifo 1}  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "inStream", "interface" : "fifo", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "compressdStream", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_size", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "input_size_c2", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
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
	{ start_out sc_out sc_logic 1 signal -1 } 
	{ start_write sc_out sc_logic 1 signal -1 } 
	{ inStream_dout sc_in sc_lv 8 signal 0 } 
	{ inStream_empty_n sc_in sc_logic 1 signal 0 } 
	{ inStream_read sc_out sc_logic 1 signal 0 } 
	{ compressdStream_din sc_out sc_lv 32 signal 1 } 
	{ compressdStream_full_n sc_in sc_logic 1 signal 1 } 
	{ compressdStream_write sc_out sc_logic 1 signal 1 } 
	{ compressdStream_num_data_valid sc_in sc_lv 32 signal 1 } 
	{ compressdStream_fifo_cap sc_in sc_lv 32 signal 1 } 
	{ input_size sc_in sc_lv 32 signal 2 } 
	{ input_size_c2_din sc_out sc_lv 32 signal 3 } 
	{ input_size_c2_full_n sc_in sc_logic 1 signal 3 } 
	{ input_size_c2_write sc_out sc_logic 1 signal 3 } 
	{ input_size_c2_num_data_valid sc_in sc_lv 3 signal 3 } 
	{ input_size_c2_fifo_cap sc_in sc_lv 3 signal 3 } 
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
 	{ "name": "start_out", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_out", "role": "default" }} , 
 	{ "name": "start_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_write", "role": "default" }} , 
 	{ "name": "inStream_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "inStream", "role": "dout" }} , 
 	{ "name": "inStream_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inStream", "role": "empty_n" }} , 
 	{ "name": "inStream_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inStream", "role": "read" }} , 
 	{ "name": "compressdStream_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "compressdStream", "role": "din" }} , 
 	{ "name": "compressdStream_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "compressdStream", "role": "full_n" }} , 
 	{ "name": "compressdStream_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "compressdStream", "role": "write" }} , 
 	{ "name": "compressdStream_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "compressdStream", "role": "num_data_valid" }} , 
 	{ "name": "compressdStream_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "compressdStream", "role": "fifo_cap" }} , 
 	{ "name": "input_size", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_size", "role": "default" }} , 
 	{ "name": "input_size_c2_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_size_c2", "role": "din" }} , 
 	{ "name": "input_size_c2_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_size_c2", "role": "full_n" }} , 
 	{ "name": "input_size_c2_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_size_c2", "role": "write" }} , 
 	{ "name": "input_size_c2_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "input_size_c2", "role": "num_data_valid" }} , 
 	{ "name": "input_size_c2_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "input_size_c2", "role": "fifo_cap" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "7", "8", "11", "14"],
		"CDFG" : "lzCompress_6_4_65536_6_1_1024_64_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "inStream", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_lzCompress_6_4_65536_6_1_1024_64_Outline_VITIS_LOOP_84_2_fu_158", "Port" : "inStream", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "8", "SubInstance" : "grp_lzCompress_6_4_65536_6_1_1024_64_Pipeline_lz_compress_fu_174", "Port" : "inStream", "Inst_start_state" : "4", "Inst_end_state" : "5"},
					{"ID" : "14", "SubInstance" : "grp_lzCompress_6_4_65536_6_1_1024_64_Pipeline_lz_left_bytes_fu_208", "Port" : "inStream", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "compressdStream", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "8", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "grp_lzCompress_6_4_65536_6_1_1024_64_Pipeline_lz_compress_fu_174", "Port" : "compressdStream", "Inst_start_state" : "4", "Inst_end_state" : "5"},
					{"ID" : "11", "SubInstance" : "grp_lzCompress_6_4_65536_6_1_1024_64_Pipeline_lz_compress_leftover_fu_197", "Port" : "compressdStream", "Inst_start_state" : "6", "Inst_end_state" : "7"},
					{"ID" : "14", "SubInstance" : "grp_lzCompress_6_4_65536_6_1_1024_64_Pipeline_lz_left_bytes_fu_208", "Port" : "compressdStream", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "input_size", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_size_c2", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "input_size_c2_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dict_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dict_1_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dict_2_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dict_3_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_lzCompress_6_4_65536_6_1_1024_64_Pipeline_dict_flush_fu_150", "Parent" : "0", "Child" : ["6"],
		"CDFG" : "lzCompress_6_4_65536_6_1_1024_64_Pipeline_dict_flush",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "258", "EstimateLatencyMax" : "258",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "dict_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dict_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dict_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dict", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "dict_flush", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_lzCompress_6_4_65536_6_1_1024_64_Pipeline_dict_flush_fu_150.flow_control_loop_pipe_sequential_init_U", "Parent" : "5"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_lzCompress_6_4_65536_6_1_1024_64_Outline_VITIS_LOOP_84_2_fu_158", "Parent" : "0",
		"CDFG" : "lzCompress_6_4_65536_6_1_1024_64_Outline_VITIS_LOOP_84_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "6", "EstimateLatencyMax" : "6",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "inStream", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "inStream_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "present_window_4_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "present_window_3_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "present_window_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "present_window_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "present_window_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "arrayidx48_promoted187_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "arrayidx42_3_promoted185_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "arrayidx71_promoted183_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "arrayidx61_promoted181_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "arrayidx54_promoted179_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_84_2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state2"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "1", "OneStateBlock": "ap_ST_fsm_state2_blk"}}]},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_lzCompress_6_4_65536_6_1_1024_64_Pipeline_lz_compress_fu_174", "Parent" : "0", "Child" : ["9", "10"],
		"CDFG" : "lzCompress_6_4_65536_6_1_1024_64_Pipeline_lz_compress",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "arrayidx48_promoted187_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "arrayidx42_3_promoted185_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "arrayidx71_promoted183_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "arrayidx61_promoted181_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "arrayidx54_promoted179_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "sub27", "Type" : "None", "Direction" : "I"},
			{"Name" : "compressdStream", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "compressdStream_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "dict_3", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "dict_2", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "dict_1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "dict", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "inStream", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "inStream_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "present_window_15_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "present_window_14_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "present_window_13_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "present_window_12_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "present_window_11_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "lz_compress", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "3", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage2", "LastStateIter" : "ap_enable_reg_pp0_iter3", "LastStateBlock" : "ap_block_pp0_stage2_subdone", "QuitState" : "ap_ST_fsm_pp0_stage2", "QuitStateIter" : "ap_enable_reg_pp0_iter3", "QuitStateBlock" : "ap_block_pp0_stage2_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_lzCompress_6_4_65536_6_1_1024_64_Pipeline_lz_compress_fu_174.sparsemux_9_2_408_1_1_U18", "Parent" : "8"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_lzCompress_6_4_65536_6_1_1024_64_Pipeline_lz_compress_fu_174.flow_control_loop_pipe_sequential_init_U", "Parent" : "8"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_lzCompress_6_4_65536_6_1_1024_64_Pipeline_lz_compress_leftover_fu_197", "Parent" : "0", "Child" : ["12", "13"],
		"CDFG" : "lzCompress_6_4_65536_6_1_1024_64_Pipeline_lz_compress_leftover",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "7", "EstimateLatencyMax" : "7",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "select_ln82_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "select_ln82_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "select_ln82_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "select_ln82_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "select_ln82", "Type" : "None", "Direction" : "I"},
			{"Name" : "compressdStream", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "compressdStream_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "lz_compress_leftover", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_lzCompress_6_4_65536_6_1_1024_64_Pipeline_lz_compress_leftover_fu_197.sparsemux_11_3_8_1_1_U37", "Parent" : "11"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_lzCompress_6_4_65536_6_1_1024_64_Pipeline_lz_compress_leftover_fu_197.flow_control_loop_pipe_sequential_init_U", "Parent" : "11"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_lzCompress_6_4_65536_6_1_1024_64_Pipeline_lz_left_bytes_fu_208", "Parent" : "0", "Child" : ["15"],
		"CDFG" : "lzCompress_6_4_65536_6_1_1024_64_Pipeline_lz_left_bytes",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "66", "EstimateLatencyMax" : "66",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "inStream", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "inStream_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "compressdStream", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "compressdStream_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "lz_left_bytes", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_lzCompress_6_4_65536_6_1_1024_64_Pipeline_lz_left_bytes_fu_208.flow_control_loop_pipe_sequential_init_U", "Parent" : "14"}]}


set ArgLastReadFirstWriteLatency {
	lzCompress_6_4_65536_6_1_1024_64_s {
		inStream {Type I LastRead 4 FirstWrite -1}
		compressdStream {Type O LastRead -1 FirstWrite 1}
		input_size {Type I LastRead 0 FirstWrite -1}
		input_size_c2 {Type O LastRead -1 FirstWrite 0}}
	lzCompress_6_4_65536_6_1_1024_64_Pipeline_dict_flush {
		dict_3 {Type O LastRead -1 FirstWrite 0}
		dict_2 {Type O LastRead -1 FirstWrite 0}
		dict_1 {Type O LastRead -1 FirstWrite 0}
		dict {Type O LastRead -1 FirstWrite 0}}
	lzCompress_6_4_65536_6_1_1024_64_Outline_VITIS_LOOP_84_2 {
		inStream {Type I LastRead 1 FirstWrite -1}
		present_window_4_out {Type O LastRead -1 FirstWrite 1}
		present_window_3_out {Type O LastRead -1 FirstWrite 1}
		present_window_2_out {Type O LastRead -1 FirstWrite 1}
		present_window_1_out {Type O LastRead -1 FirstWrite 1}
		present_window_out {Type O LastRead -1 FirstWrite 1}
		arrayidx48_promoted187_out {Type O LastRead -1 FirstWrite 1}
		arrayidx42_3_promoted185_out {Type O LastRead -1 FirstWrite 1}
		arrayidx71_promoted183_out {Type O LastRead -1 FirstWrite 1}
		arrayidx61_promoted181_out {Type O LastRead -1 FirstWrite 1}
		arrayidx54_promoted179_out {Type O LastRead -1 FirstWrite 1}}
	lzCompress_6_4_65536_6_1_1024_64_Pipeline_lz_compress {
		arrayidx48_promoted187_reload {Type I LastRead 0 FirstWrite -1}
		arrayidx42_3_promoted185_reload {Type I LastRead 0 FirstWrite -1}
		arrayidx71_promoted183_reload {Type I LastRead 0 FirstWrite -1}
		arrayidx61_promoted181_reload {Type I LastRead 0 FirstWrite -1}
		arrayidx54_promoted179_reload {Type I LastRead 0 FirstWrite -1}
		sub27 {Type I LastRead 0 FirstWrite -1}
		compressdStream {Type O LastRead -1 FirstWrite 11}
		dict_3 {Type IO LastRead 3 FirstWrite 5}
		dict_2 {Type IO LastRead 3 FirstWrite 5}
		dict_1 {Type IO LastRead 3 FirstWrite 5}
		dict {Type IO LastRead 3 FirstWrite 5}
		inStream {Type I LastRead 4 FirstWrite -1}
		present_window_15_out {Type O LastRead -1 FirstWrite 8}
		present_window_14_out {Type O LastRead -1 FirstWrite 8}
		present_window_13_out {Type O LastRead -1 FirstWrite 8}
		present_window_12_out {Type O LastRead -1 FirstWrite 8}
		present_window_11_out {Type O LastRead -1 FirstWrite 8}}
	lzCompress_6_4_65536_6_1_1024_64_Pipeline_lz_compress_leftover {
		select_ln82_4 {Type I LastRead 0 FirstWrite -1}
		select_ln82_3 {Type I LastRead 0 FirstWrite -1}
		select_ln82_2 {Type I LastRead 0 FirstWrite -1}
		select_ln82_1 {Type I LastRead 0 FirstWrite -1}
		select_ln82 {Type I LastRead 0 FirstWrite -1}
		compressdStream {Type O LastRead -1 FirstWrite 1}}
	lzCompress_6_4_65536_6_1_1024_64_Pipeline_lz_left_bytes {
		inStream {Type I LastRead 1 FirstWrite -1}
		compressdStream {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	inStream { ap_fifo {  { inStream_dout fifo_data_in 0 8 }  { inStream_empty_n fifo_status 0 1 }  { inStream_read fifo_port_we 1 1 } } }
	compressdStream { ap_fifo {  { compressdStream_din fifo_data_in 1 32 }  { compressdStream_full_n fifo_status 0 1 }  { compressdStream_write fifo_port_we 1 1 }  { compressdStream_num_data_valid fifo_status_num_data_valid 0 32 }  { compressdStream_fifo_cap fifo_update 0 32 } } }
	input_size { ap_none {  { input_size in_data 0 32 } } }
	input_size_c2 { ap_fifo {  { input_size_c2_din fifo_data_in 1 32 }  { input_size_c2_full_n fifo_status 0 1 }  { input_size_c2_write fifo_port_we 1 1 }  { input_size_c2_num_data_valid fifo_status_num_data_valid 0 3 }  { input_size_c2_fifo_cap fifo_update 0 3 } } }
}
