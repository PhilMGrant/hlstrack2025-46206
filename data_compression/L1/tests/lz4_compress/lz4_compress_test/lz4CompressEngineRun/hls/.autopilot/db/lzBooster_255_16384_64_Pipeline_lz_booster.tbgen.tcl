set moduleName lzBooster_255_16384_64_Pipeline_lz_booster
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
set cdfgNum 18
set C_modelName {lzBooster<255, 16384, 64>_Pipeline_lz_booster}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict local_mem { MEM_WIDTH 8 MEM_SIZE 16384 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
set C_modelArgList {
	{ match_loc_reg_load int 32 regular  }
	{ nextMatchCh_loc_0 int 8 regular  }
	{ matchFlag_reg_load int 1 regular  }
	{ match_len_reg_load int 32 regular  }
	{ skip_len_reg_load int 16 regular  }
	{ sub int 32 regular  }
	{ local_mem int 8 regular {array 16384 { 1 0 } 1 1 }  }
	{ bestMatchStream int 32 regular {fifo 0 volatile }  }
	{ boosterStream int 32 regular {fifo 1 volatile }  }
	{ new_match_loc_out int 32 regular {pointer 1}  }
	{ p_out int 8 regular {pointer 1}  }
	{ new_matchFlag_1_0_0_07_out int 1 regular {pointer 1}  }
	{ new_match_len_out int 32 regular {pointer 1}  }
	{ p_out1 int 16 regular {pointer 1}  }
	{ outValue_out int 32 regular {pointer 1}  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "match_loc_reg_load", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "nextMatchCh_loc_0", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "matchFlag_reg_load", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "match_len_reg_load", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "skip_len_reg_load", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "sub", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "local_mem", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "bestMatchStream", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "boosterStream", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "new_match_loc_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_out", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "new_matchFlag_1_0_0_07_out", "interface" : "wire", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "new_match_len_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_out1", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "outValue_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 41
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ bestMatchStream_dout sc_in sc_lv 32 signal 7 } 
	{ bestMatchStream_empty_n sc_in sc_logic 1 signal 7 } 
	{ bestMatchStream_read sc_out sc_logic 1 signal 7 } 
	{ bestMatchStream_num_data_valid sc_in sc_lv 4 signal 7 } 
	{ bestMatchStream_fifo_cap sc_in sc_lv 4 signal 7 } 
	{ boosterStream_din sc_out sc_lv 32 signal 8 } 
	{ boosterStream_full_n sc_in sc_logic 1 signal 8 } 
	{ boosterStream_write sc_out sc_logic 1 signal 8 } 
	{ boosterStream_num_data_valid sc_in sc_lv 32 signal 8 } 
	{ boosterStream_fifo_cap sc_in sc_lv 32 signal 8 } 
	{ match_loc_reg_load sc_in sc_lv 32 signal 0 } 
	{ nextMatchCh_loc_0 sc_in sc_lv 8 signal 1 } 
	{ matchFlag_reg_load sc_in sc_lv 1 signal 2 } 
	{ match_len_reg_load sc_in sc_lv 32 signal 3 } 
	{ skip_len_reg_load sc_in sc_lv 16 signal 4 } 
	{ sub sc_in sc_lv 32 signal 5 } 
	{ local_mem_address0 sc_out sc_lv 14 signal 6 } 
	{ local_mem_ce0 sc_out sc_logic 1 signal 6 } 
	{ local_mem_q0 sc_in sc_lv 8 signal 6 } 
	{ local_mem_address1 sc_out sc_lv 14 signal 6 } 
	{ local_mem_ce1 sc_out sc_logic 1 signal 6 } 
	{ local_mem_we1 sc_out sc_logic 1 signal 6 } 
	{ local_mem_d1 sc_out sc_lv 8 signal 6 } 
	{ new_match_loc_out sc_out sc_lv 32 signal 9 } 
	{ new_match_loc_out_ap_vld sc_out sc_logic 1 outvld 9 } 
	{ p_out sc_out sc_lv 8 signal 10 } 
	{ p_out_ap_vld sc_out sc_logic 1 outvld 10 } 
	{ new_matchFlag_1_0_0_07_out sc_out sc_lv 1 signal 11 } 
	{ new_matchFlag_1_0_0_07_out_ap_vld sc_out sc_logic 1 outvld 11 } 
	{ new_match_len_out sc_out sc_lv 32 signal 12 } 
	{ new_match_len_out_ap_vld sc_out sc_logic 1 outvld 12 } 
	{ p_out1 sc_out sc_lv 16 signal 13 } 
	{ p_out1_ap_vld sc_out sc_logic 1 outvld 13 } 
	{ outValue_out sc_out sc_lv 32 signal 14 } 
	{ outValue_out_ap_vld sc_out sc_logic 1 outvld 14 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "bestMatchStream_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bestMatchStream", "role": "dout" }} , 
 	{ "name": "bestMatchStream_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bestMatchStream", "role": "empty_n" }} , 
 	{ "name": "bestMatchStream_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bestMatchStream", "role": "read" }} , 
 	{ "name": "bestMatchStream_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bestMatchStream", "role": "num_data_valid" }} , 
 	{ "name": "bestMatchStream_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bestMatchStream", "role": "fifo_cap" }} , 
 	{ "name": "boosterStream_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "boosterStream", "role": "din" }} , 
 	{ "name": "boosterStream_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "boosterStream", "role": "full_n" }} , 
 	{ "name": "boosterStream_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "boosterStream", "role": "write" }} , 
 	{ "name": "boosterStream_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "boosterStream", "role": "num_data_valid" }} , 
 	{ "name": "boosterStream_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "boosterStream", "role": "fifo_cap" }} , 
 	{ "name": "match_loc_reg_load", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "match_loc_reg_load", "role": "default" }} , 
 	{ "name": "nextMatchCh_loc_0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "nextMatchCh_loc_0", "role": "default" }} , 
 	{ "name": "matchFlag_reg_load", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "matchFlag_reg_load", "role": "default" }} , 
 	{ "name": "match_len_reg_load", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "match_len_reg_load", "role": "default" }} , 
 	{ "name": "skip_len_reg_load", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "skip_len_reg_load", "role": "default" }} , 
 	{ "name": "sub", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sub", "role": "default" }} , 
 	{ "name": "local_mem_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "local_mem", "role": "address0" }} , 
 	{ "name": "local_mem_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_mem", "role": "ce0" }} , 
 	{ "name": "local_mem_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "local_mem", "role": "q0" }} , 
 	{ "name": "local_mem_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "local_mem", "role": "address1" }} , 
 	{ "name": "local_mem_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_mem", "role": "ce1" }} , 
 	{ "name": "local_mem_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_mem", "role": "we1" }} , 
 	{ "name": "local_mem_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "local_mem", "role": "d1" }} , 
 	{ "name": "new_match_loc_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "new_match_loc_out", "role": "default" }} , 
 	{ "name": "new_match_loc_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "new_match_loc_out", "role": "ap_vld" }} , 
 	{ "name": "p_out", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_out", "role": "default" }} , 
 	{ "name": "p_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_out", "role": "ap_vld" }} , 
 	{ "name": "new_matchFlag_1_0_0_07_out", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "new_matchFlag_1_0_0_07_out", "role": "default" }} , 
 	{ "name": "new_matchFlag_1_0_0_07_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "new_matchFlag_1_0_0_07_out", "role": "ap_vld" }} , 
 	{ "name": "new_match_len_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "new_match_len_out", "role": "default" }} , 
 	{ "name": "new_match_len_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "new_match_len_out", "role": "ap_vld" }} , 
 	{ "name": "p_out1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_out1", "role": "default" }} , 
 	{ "name": "p_out1_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_out1", "role": "ap_vld" }} , 
 	{ "name": "outValue_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "outValue_out", "role": "default" }} , 
 	{ "name": "outValue_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "outValue_out", "role": "ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "lzBooster_255_16384_64_Pipeline_lz_booster",
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
			{"Name" : "match_loc_reg_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "nextMatchCh_loc_0", "Type" : "None", "Direction" : "I"},
			{"Name" : "matchFlag_reg_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "match_len_reg_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "skip_len_reg_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "sub", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_mem", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "bestMatchStream", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "bestMatchStream_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "boosterStream", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "boosterStream_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "new_match_loc_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "new_matchFlag_1_0_0_07_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "new_match_len_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out1", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "outValue_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "lz_booster", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "3", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage1", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage1_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	lzBooster_255_16384_64_Pipeline_lz_booster {
		match_loc_reg_load {Type I LastRead 0 FirstWrite -1}
		nextMatchCh_loc_0 {Type I LastRead 0 FirstWrite -1}
		matchFlag_reg_load {Type I LastRead 0 FirstWrite -1}
		match_len_reg_load {Type I LastRead 0 FirstWrite -1}
		skip_len_reg_load {Type I LastRead 0 FirstWrite -1}
		sub {Type I LastRead 0 FirstWrite -1}
		local_mem {Type IO LastRead 3 FirstWrite 1}
		bestMatchStream {Type I LastRead 1 FirstWrite -1}
		boosterStream {Type O LastRead -1 FirstWrite 2}
		new_match_loc_out {Type O LastRead -1 FirstWrite 1}
		p_out {Type O LastRead -1 FirstWrite 1}
		new_matchFlag_1_0_0_07_out {Type O LastRead -1 FirstWrite 1}
		new_match_len_out {Type O LastRead -1 FirstWrite 1}
		p_out1 {Type O LastRead -1 FirstWrite 1}
		outValue_out {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	match_loc_reg_load { ap_none {  { match_loc_reg_load in_data 0 32 } } }
	nextMatchCh_loc_0 { ap_none {  { nextMatchCh_loc_0 in_data 0 8 } } }
	matchFlag_reg_load { ap_none {  { matchFlag_reg_load in_data 0 1 } } }
	match_len_reg_load { ap_none {  { match_len_reg_load in_data 0 32 } } }
	skip_len_reg_load { ap_none {  { skip_len_reg_load in_data 0 16 } } }
	sub { ap_none {  { sub in_data 0 32 } } }
	local_mem { ap_memory {  { local_mem_address0 mem_address 1 14 }  { local_mem_ce0 mem_ce 1 1 }  { local_mem_q0 in_data 0 8 }  { local_mem_address1 MemPortADDR2 1 14 }  { local_mem_ce1 MemPortCE2 1 1 }  { local_mem_we1 MemPortWE2 1 1 }  { local_mem_d1 MemPortDIN2 1 8 } } }
	bestMatchStream { ap_fifo {  { bestMatchStream_dout fifo_data_in 0 32 }  { bestMatchStream_empty_n fifo_status 0 1 }  { bestMatchStream_read fifo_port_we 1 1 }  { bestMatchStream_num_data_valid fifo_status_num_data_valid 0 4 }  { bestMatchStream_fifo_cap fifo_update 0 4 } } }
	boosterStream { ap_fifo {  { boosterStream_din fifo_data_in 1 32 }  { boosterStream_full_n fifo_status 0 1 }  { boosterStream_write fifo_port_we 1 1 }  { boosterStream_num_data_valid fifo_status_num_data_valid 0 32 }  { boosterStream_fifo_cap fifo_update 0 32 } } }
	new_match_loc_out { ap_vld {  { new_match_loc_out out_data 1 32 }  { new_match_loc_out_ap_vld out_vld 1 1 } } }
	p_out { ap_vld {  { p_out out_data 1 8 }  { p_out_ap_vld out_vld 1 1 } } }
	new_matchFlag_1_0_0_07_out { ap_vld {  { new_matchFlag_1_0_0_07_out out_data 1 1 }  { new_matchFlag_1_0_0_07_out_ap_vld out_vld 1 1 } } }
	new_match_len_out { ap_vld {  { new_match_len_out out_data 1 32 }  { new_match_len_out_ap_vld out_vld 1 1 } } }
	p_out1 { ap_vld {  { p_out1 out_data 1 16 }  { p_out1_ap_vld out_vld 1 1 } } }
	outValue_out { ap_vld {  { outValue_out out_data 1 32 }  { outValue_out_ap_vld out_vld 1 1 } } }
}
