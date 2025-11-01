set moduleName lz4CompressEngineRun
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
set svuvm_can_support 1
set cdfgNum 19
set C_modelName {lz4CompressEngineRun}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict max_lit_limit { MEM_WIDTH 32 MEM_SIZE 32 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
set C_modelArgList {
	{ inStream int 8 regular {fifo 0 volatile }  }
	{ lz4Out int 8 regular {fifo 1 volatile }  }
	{ lz4Out_eos int 1 regular {fifo 1 volatile }  }
	{ lz4OutSize int 32 regular {fifo 1 volatile }  }
	{ max_lit_limit int 32 regular {array 8 { 0 3 } 0 1 }  }
	{ input_size int 32 regular  }
	{ core_idx int 32 regular  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "inStream", "interface" : "fifo", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "lz4Out", "interface" : "fifo", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "lz4Out_eos", "interface" : "fifo", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "lz4OutSize", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "max_lit_limit", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_size", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "core_idx", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 30
set portList { 
	{ inStream_dout sc_in sc_lv 8 signal 0 } 
	{ inStream_empty_n sc_in sc_logic 1 signal 0 } 
	{ inStream_read sc_out sc_logic 1 signal 0 } 
	{ lz4Out_din sc_out sc_lv 8 signal 1 } 
	{ lz4Out_full_n sc_in sc_logic 1 signal 1 } 
	{ lz4Out_write sc_out sc_logic 1 signal 1 } 
	{ lz4Out_eos_din sc_out sc_lv 1 signal 2 } 
	{ lz4Out_eos_full_n sc_in sc_logic 1 signal 2 } 
	{ lz4Out_eos_write sc_out sc_logic 1 signal 2 } 
	{ lz4OutSize_din sc_out sc_lv 32 signal 3 } 
	{ lz4OutSize_full_n sc_in sc_logic 1 signal 3 } 
	{ lz4OutSize_write sc_out sc_logic 1 signal 3 } 
	{ max_lit_limit_address0 sc_out sc_lv 3 signal 4 } 
	{ max_lit_limit_ce0 sc_out sc_logic 1 signal 4 } 
	{ max_lit_limit_d0 sc_out sc_lv 32 signal 4 } 
	{ max_lit_limit_q0 sc_in sc_lv 32 signal 4 } 
	{ max_lit_limit_we0 sc_out sc_logic 1 signal 4 } 
	{ max_lit_limit_address1 sc_out sc_lv 3 signal 4 } 
	{ max_lit_limit_ce1 sc_out sc_logic 1 signal 4 } 
	{ max_lit_limit_d1 sc_out sc_lv 32 signal 4 } 
	{ max_lit_limit_q1 sc_in sc_lv 32 signal 4 } 
	{ max_lit_limit_we1 sc_out sc_logic 1 signal 4 } 
	{ input_size sc_in sc_lv 32 signal 5 } 
	{ core_idx sc_in sc_lv 32 signal 6 } 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
}
set NewPortList {[ 
	{ "name": "inStream_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "inStream", "role": "dout" }} , 
 	{ "name": "inStream_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inStream", "role": "empty_n" }} , 
 	{ "name": "inStream_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inStream", "role": "read" }} , 
 	{ "name": "lz4Out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "lz4Out", "role": "din" }} , 
 	{ "name": "lz4Out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "lz4Out", "role": "full_n" }} , 
 	{ "name": "lz4Out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "lz4Out", "role": "write" }} , 
 	{ "name": "lz4Out_eos_din", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "lz4Out_eos", "role": "din" }} , 
 	{ "name": "lz4Out_eos_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "lz4Out_eos", "role": "full_n" }} , 
 	{ "name": "lz4Out_eos_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "lz4Out_eos", "role": "write" }} , 
 	{ "name": "lz4OutSize_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "lz4OutSize", "role": "din" }} , 
 	{ "name": "lz4OutSize_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "lz4OutSize", "role": "full_n" }} , 
 	{ "name": "lz4OutSize_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "lz4OutSize", "role": "write" }} , 
 	{ "name": "max_lit_limit_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "max_lit_limit", "role": "address0" }} , 
 	{ "name": "max_lit_limit_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "max_lit_limit", "role": "ce0" }} , 
 	{ "name": "max_lit_limit_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "max_lit_limit", "role": "d0" }} , 
 	{ "name": "max_lit_limit_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "max_lit_limit", "role": "q0" }} , 
 	{ "name": "max_lit_limit_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "max_lit_limit", "role": "we0" }} , 
 	{ "name": "max_lit_limit_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "max_lit_limit", "role": "address1" }} , 
 	{ "name": "max_lit_limit_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "max_lit_limit", "role": "ce1" }} , 
 	{ "name": "max_lit_limit_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "max_lit_limit", "role": "d1" }} , 
 	{ "name": "max_lit_limit_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "max_lit_limit", "role": "q1" }} , 
 	{ "name": "max_lit_limit_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "max_lit_limit", "role": "we1" }} , 
 	{ "name": "input_size", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_size", "role": "default" }} , 
 	{ "name": "core_idx", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "core_idx", "role": "default" }} , 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "18", "22", "26", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46"],
		"CDFG" : "lz4CompressEngineRun",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"InputProcess" : [
			{"ID" : "1", "Name" : "entry_proc_U0"},
			{"ID" : "2", "Name" : "lzCompress_6_4_65536_6_1_1024_64_U0"}],
		"OutputProcess" : [
			{"ID" : "26", "Name" : "lz4Compress_4096_8_U0"}],
		"Port" : [
			{"Name" : "inStream", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "lzCompress_6_4_65536_6_1_1024_64_U0", "Port" : "inStream"}]},
			{"Name" : "lz4Out", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "26", "SubInstance" : "lz4Compress_4096_8_U0", "Port" : "lz4Out"}]},
			{"Name" : "lz4Out_eos", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "26", "SubInstance" : "lz4Compress_4096_8_U0", "Port" : "lz4Out_eos"}]},
			{"Name" : "lz4OutSize", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "26", "SubInstance" : "lz4Compress_4096_8_U0", "Port" : "lz4OutSize"}]},
			{"Name" : "max_lit_limit", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "26", "SubInstance" : "lz4Compress_4096_8_U0", "Port" : "max_lit_limit"}]},
			{"Name" : "input_size", "Type" : "None", "Direction" : "I"},
			{"Name" : "core_idx", "Type" : "None", "Direction" : "I"},
			{"Name" : "guard_variable_for_void_lzBooster_stream_stream_unsigned_int_nextMatchCh", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "lzBooster_255_16384_64_U0", "Port" : "guard_variable_for_void_lzBooster_stream_stream_unsigned_int_nextMatchCh"}]},
			{"Name" : "nextMatchCh", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "lzBooster_255_16384_64_U0", "Port" : "nextMatchCh"}]},
			{"Name" : "match_loc_reg", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "lzBooster_255_16384_64_U0", "Port" : "match_loc_reg"}]},
			{"Name" : "skip_len_reg", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "lzBooster_255_16384_64_U0", "Port" : "skip_len_reg"}]},
			{"Name" : "matchFlag_reg", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "lzBooster_255_16384_64_U0", "Port" : "matchFlag_reg"}]},
			{"Name" : "match_len_reg", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "lzBooster_255_16384_64_U0", "Port" : "match_len_reg"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.entry_proc_U0", "Parent" : "0",
		"CDFG" : "entry_proc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "core_idx", "Type" : "None", "Direction" : "I"},
			{"Name" : "core_idx_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["26","27"], "DependentChan" : "37", "DependentChanDepth" : "5", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "core_idx_c_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.lzCompress_6_4_65536_6_1_1024_64_U0", "Parent" : "0", "Child" : ["3", "4", "5", "6", "7", "9", "10", "13", "16"],
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
					{"ID" : "9", "SubInstance" : "grp_lzCompress_6_4_65536_6_1_1024_64_Outline_VITIS_LOOP_84_2_fu_158", "Port" : "inStream", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "10", "SubInstance" : "grp_lzCompress_6_4_65536_6_1_1024_64_Pipeline_lz_compress_fu_174", "Port" : "inStream", "Inst_start_state" : "4", "Inst_end_state" : "5"},
					{"ID" : "16", "SubInstance" : "grp_lzCompress_6_4_65536_6_1_1024_64_Pipeline_lz_left_bytes_fu_208", "Port" : "inStream", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "compressdStream", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["18"], "DependentChan" : "38", "DependentChanDepth" : "8", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "grp_lzCompress_6_4_65536_6_1_1024_64_Pipeline_lz_compress_fu_174", "Port" : "compressdStream", "Inst_start_state" : "4", "Inst_end_state" : "5"},
					{"ID" : "13", "SubInstance" : "grp_lzCompress_6_4_65536_6_1_1024_64_Pipeline_lz_compress_leftover_fu_197", "Port" : "compressdStream", "Inst_start_state" : "6", "Inst_end_state" : "7"},
					{"ID" : "16", "SubInstance" : "grp_lzCompress_6_4_65536_6_1_1024_64_Pipeline_lz_left_bytes_fu_208", "Port" : "compressdStream", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "input_size", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_size_c2", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["18"], "DependentChan" : "39", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "input_size_c2_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.lzCompress_6_4_65536_6_1_1024_64_U0.dict_U", "Parent" : "2"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.lzCompress_6_4_65536_6_1_1024_64_U0.dict_1_U", "Parent" : "2"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.lzCompress_6_4_65536_6_1_1024_64_U0.dict_2_U", "Parent" : "2"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.lzCompress_6_4_65536_6_1_1024_64_U0.dict_3_U", "Parent" : "2"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.lzCompress_6_4_65536_6_1_1024_64_U0.grp_lzCompress_6_4_65536_6_1_1024_64_Pipeline_dict_flush_fu_150", "Parent" : "2", "Child" : ["8"],
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
	{"ID" : "8", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.lzCompress_6_4_65536_6_1_1024_64_U0.grp_lzCompress_6_4_65536_6_1_1024_64_Pipeline_dict_flush_fu_150.flow_control_loop_pipe_sequential_init_U", "Parent" : "7"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.lzCompress_6_4_65536_6_1_1024_64_U0.grp_lzCompress_6_4_65536_6_1_1024_64_Outline_VITIS_LOOP_84_2_fu_158", "Parent" : "2",
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
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.lzCompress_6_4_65536_6_1_1024_64_U0.grp_lzCompress_6_4_65536_6_1_1024_64_Pipeline_lz_compress_fu_174", "Parent" : "2", "Child" : ["11", "12"],
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
	{"ID" : "11", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.lzCompress_6_4_65536_6_1_1024_64_U0.grp_lzCompress_6_4_65536_6_1_1024_64_Pipeline_lz_compress_fu_174.sparsemux_9_2_408_1_1_U18", "Parent" : "10"},
	{"ID" : "12", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.lzCompress_6_4_65536_6_1_1024_64_U0.grp_lzCompress_6_4_65536_6_1_1024_64_Pipeline_lz_compress_fu_174.flow_control_loop_pipe_sequential_init_U", "Parent" : "10"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.lzCompress_6_4_65536_6_1_1024_64_U0.grp_lzCompress_6_4_65536_6_1_1024_64_Pipeline_lz_compress_leftover_fu_197", "Parent" : "2", "Child" : ["14", "15"],
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
	{"ID" : "14", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.lzCompress_6_4_65536_6_1_1024_64_U0.grp_lzCompress_6_4_65536_6_1_1024_64_Pipeline_lz_compress_leftover_fu_197.sparsemux_11_3_8_1_1_U37", "Parent" : "13"},
	{"ID" : "15", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.lzCompress_6_4_65536_6_1_1024_64_U0.grp_lzCompress_6_4_65536_6_1_1024_64_Pipeline_lz_compress_leftover_fu_197.flow_control_loop_pipe_sequential_init_U", "Parent" : "13"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.lzCompress_6_4_65536_6_1_1024_64_U0.grp_lzCompress_6_4_65536_6_1_1024_64_Pipeline_lz_left_bytes_fu_208", "Parent" : "2", "Child" : ["17"],
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
	{"ID" : "17", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.lzCompress_6_4_65536_6_1_1024_64_U0.grp_lzCompress_6_4_65536_6_1_1024_64_Pipeline_lz_left_bytes_fu_208.flow_control_loop_pipe_sequential_init_U", "Parent" : "16"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.lzBestMatchFilter_6_65536_U0", "Parent" : "0", "Child" : ["19", "21"],
		"CDFG" : "lzBestMatchFilter_6_65536_s",
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
		"StartSource" : "2",
		"StartFifo" : "start_for_lzBestMatchFilter_6_65536_U0_U",
		"Port" : [
			{"Name" : "compressdStream", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["2"], "DependentChan" : "38", "DependentChanDepth" : "8", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "compressdStream_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_lzBestMatchFilter_6_65536_Pipeline_lz_bestMatchFilter_fu_135", "Port" : "compressdStream", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "bestMatchStream", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["22"], "DependentChan" : "40", "DependentChanDepth" : "8", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "bestMatchStream_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_lzBestMatchFilter_6_65536_Pipeline_lz_bestMatchFilter_fu_135", "Port" : "bestMatchStream", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "input_size", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["2"], "DependentChan" : "39", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "input_size_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "input_size_c1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["22"], "DependentChan" : "41", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "input_size_c1_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "lz_bestMatchFilter_left_over", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "11", "FirstState" : "ap_ST_fsm_state11", "LastState" : ["ap_ST_fsm_state11"], "QuitState" : ["ap_ST_fsm_state11"], "PreState" : ["ap_ST_fsm_state1", "ap_ST_fsm_state10"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "1", "OneStateBlock": "ap_ST_fsm_state11_blk"}}]},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.lzBestMatchFilter_6_65536_U0.grp_lzBestMatchFilter_6_65536_Pipeline_lz_bestMatchFilter_fu_135", "Parent" : "18", "Child" : ["20"],
		"CDFG" : "lzBestMatchFilter_6_65536_Pipeline_lz_bestMatchFilter",
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
			{"Name" : "compare_window_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "compare_window_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "compare_window_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "compare_window_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "compare_window_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "compare_window", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_size_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "compressdStream", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "compressdStream_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bestMatchStream", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "bestMatchStream_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "compare_window_12_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "compare_window_13_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "compare_window_14_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "compare_window_15_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "compare_window_16_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "compare_window_17_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "lz_bestMatchFilter", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage1", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage1_subdone", "QuitState" : "ap_ST_fsm_pp0_stage1", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage1_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "20", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.lzBestMatchFilter_6_65536_U0.grp_lzBestMatchFilter_6_65536_Pipeline_lz_bestMatchFilter_fu_135.flow_control_loop_pipe_sequential_init_U", "Parent" : "19"},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.lzBestMatchFilter_6_65536_U0.sparsemux_13_3_32_1_1_U67", "Parent" : "18"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.lzBooster_255_16384_64_U0", "Parent" : "0", "Child" : ["23", "24"],
		"CDFG" : "lzBooster_255_16384_64_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
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
		"StartSource" : "18",
		"StartFifo" : "start_for_lzBooster_255_16384_64_U0_U",
		"Port" : [
			{"Name" : "bestMatchStream", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["18"], "DependentChan" : "40", "DependentChanDepth" : "8", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "bestMatchStream_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "24", "SubInstance" : "grp_lzBooster_255_16384_64_Pipeline_lz_booster_fu_169", "Port" : "bestMatchStream", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "boosterStream", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["26","27"], "DependentChan" : "42", "DependentChanDepth" : "8", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "boosterStream_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "24", "SubInstance" : "grp_lzBooster_255_16384_64_Pipeline_lz_booster_fu_169", "Port" : "boosterStream", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "input_size", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["18"], "DependentChan" : "41", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "input_size_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "input_size_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["26","27"], "DependentChan" : "43", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "input_size_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "guard_variable_for_void_lzBooster_stream_stream_unsigned_int_nextMatchCh", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "nextMatchCh", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "match_loc_reg", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "24", "SubInstance" : "grp_lzBooster_255_16384_64_Pipeline_lz_booster_fu_169", "Port" : "match_loc_reg", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "skip_len_reg", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "24", "SubInstance" : "grp_lzBooster_255_16384_64_Pipeline_lz_booster_fu_169", "Port" : "skip_len_reg", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "matchFlag_reg", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "24", "SubInstance" : "grp_lzBooster_255_16384_64_Pipeline_lz_booster_fu_169", "Port" : "matchFlag_reg", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "match_len_reg", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "24", "SubInstance" : "grp_lzBooster_255_16384_64_Pipeline_lz_booster_fu_169", "Port" : "match_len_reg", "Inst_start_state" : "4", "Inst_end_state" : "5"}]}],
		"Loop" : [
			{"Name" : "lz_booster_left_bytes", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "7", "FirstState" : "ap_ST_fsm_state7", "LastState" : ["ap_ST_fsm_state7"], "QuitState" : ["ap_ST_fsm_state7"], "PreState" : ["ap_ST_fsm_state1", "ap_ST_fsm_state6"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "1", "OneStateBlock": "ap_ST_fsm_state7_blk"}}]},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.lzBooster_255_16384_64_U0.local_mem_U", "Parent" : "22"},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.lzBooster_255_16384_64_U0.grp_lzBooster_255_16384_64_Pipeline_lz_booster_fu_169", "Parent" : "22", "Child" : ["25"],
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
			{"Name" : "nextMatchCh_loc_0", "Type" : "None", "Direction" : "I"},
			{"Name" : "sub", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_mem", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "bestMatchStream", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "bestMatchStream_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "boosterStream", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "boosterStream_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "outValue_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "skip_len_reg", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "match_loc_reg", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "matchFlag_reg", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "match_len_reg", "Type" : "OVld", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "lz_booster", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "3", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage2", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage2_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "25", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.lzBooster_255_16384_64_U0.grp_lzBooster_255_16384_64_Pipeline_lz_booster_fu_169.flow_control_loop_pipe_sequential_init_U", "Parent" : "24"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.lz4Compress_4096_8_U0", "Parent" : "0", "Child" : ["27", "30", "33", "34", "35", "36"],
		"CDFG" : "lz4Compress_4096_8_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"StartSource" : "1",
		"StartFifo" : "start_for_lz4Compress_4096_8_U0_U",
		"InputProcess" : [
			{"ID" : "27", "Name" : "lz4CompressPart1_4096_8_U0"}],
		"OutputProcess" : [
			{"ID" : "27", "Name" : "lz4CompressPart1_4096_8_U0"},
			{"ID" : "30", "Name" : "lz4CompressPart2_U0"}],
		"Port" : [
			{"Name" : "boosterStream", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["22"], "DependentChan" : "42", "DependentChanDepth" : "8", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "27", "SubInstance" : "lz4CompressPart1_4096_8_U0", "Port" : "boosterStream"}]},
			{"Name" : "lz4Out", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "30", "SubInstance" : "lz4CompressPart2_U0", "Port" : "lz4Out"}]},
			{"Name" : "max_lit_limit", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "27", "SubInstance" : "lz4CompressPart1_4096_8_U0", "Port" : "max_lit_limit"}]},
			{"Name" : "input_size", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["22"], "DependentChan" : "43", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"SubConnect" : [
					{"ID" : "27", "SubInstance" : "lz4CompressPart1_4096_8_U0", "Port" : "input_size"}]},
			{"Name" : "lz4Out_eos", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "30", "SubInstance" : "lz4CompressPart2_U0", "Port" : "lz4Out_eos"}]},
			{"Name" : "lz4OutSize", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "30", "SubInstance" : "lz4CompressPart2_U0", "Port" : "lz4OutSize"}]},
			{"Name" : "index", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["1"], "DependentChan" : "37", "DependentChanDepth" : "5", "DependentChanType" : "2",
				"SubConnect" : [
					{"ID" : "27", "SubInstance" : "lz4CompressPart1_4096_8_U0", "Port" : "index"}]}]},
	{"ID" : "27", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.lz4Compress_4096_8_U0.lz4CompressPart1_4096_8_U0", "Parent" : "26", "Child" : ["28"],
		"CDFG" : "lz4CompressPart1_4096_8_s",
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
			{"Name" : "boosterStream", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["22"], "DependentChan" : "42", "DependentChanDepth" : "8", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "boosterStream_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "28", "SubInstance" : "grp_lz4CompressPart1_4096_8_Pipeline_lz4_divide_fu_158", "Port" : "boosterStream", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "lit_outStream", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["30"], "DependentChan" : "33", "DependentChanDepth" : "65536", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "28", "SubInstance" : "grp_lz4CompressPart1_4096_8_Pipeline_lz4_divide_fu_158", "Port" : "lit_outStream", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "lenOffset_Stream", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["30"], "DependentChan" : "34", "DependentChanDepth" : "512", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "lenOffset_Stream_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "28", "SubInstance" : "grp_lz4CompressPart1_4096_8_Pipeline_lz4_divide_fu_158", "Port" : "lenOffset_Stream", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "input_size", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["22"], "DependentChan" : "43", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "input_size_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "max_lit_limit", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "index", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["1"], "DependentChan" : "37", "DependentChanDepth" : "5", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "index_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "input_size_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["30"], "DependentChan" : "35", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "input_size_c_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "28", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.lz4Compress_4096_8_U0.lz4CompressPart1_4096_8_U0.grp_lz4CompressPart1_4096_8_Pipeline_lz4_divide_fu_158", "Parent" : "27", "Child" : ["29"],
		"CDFG" : "lz4CompressPart1_4096_8_Pipeline_lz4_divide",
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
			{"Name" : "currentEncodedValue", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_size_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "lenOffset_Stream", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "lenOffset_Stream_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "sub_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "boosterStream", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "boosterStream_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "lit_outStream", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "lit_outStream_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "lit_count_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "lit_count_flag_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "lz4_divide", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage1", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage1_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "29", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.lz4Compress_4096_8_U0.lz4CompressPart1_4096_8_U0.grp_lz4CompressPart1_4096_8_Pipeline_lz4_divide_fu_158.flow_control_loop_pipe_sequential_init_U", "Parent" : "28"},
	{"ID" : "30", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.lz4Compress_4096_8_U0.lz4CompressPart2_U0", "Parent" : "26", "Child" : ["31"],
		"CDFG" : "lz4CompressPart2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
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
		"StartSource" : "27",
		"StartFifo" : "start_for_lz4CompressPart2_U0_U",
		"Port" : [
			{"Name" : "lit_outStream", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["27"], "DependentChan" : "33", "DependentChanDepth" : "65536", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "31", "SubInstance" : "grp_lz4CompressPart2_Pipeline_lz4_compress_fu_91", "Port" : "lit_outStream", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "lenOffset_Stream", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["27"], "DependentChan" : "34", "DependentChanDepth" : "512", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "31", "SubInstance" : "grp_lz4CompressPart2_Pipeline_lz4_compress_fu_91", "Port" : "lenOffset_Stream", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "lz4Out", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "lz4Out_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "31", "SubInstance" : "grp_lz4CompressPart2_Pipeline_lz4_compress_fu_91", "Port" : "lz4Out", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "lz4Out_eos", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "lz4Out_eos_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "31", "SubInstance" : "grp_lz4CompressPart2_Pipeline_lz4_compress_fu_91", "Port" : "lz4Out_eos", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "lz4OutSize", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "lz4OutSize_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "input_size", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["27"], "DependentChan" : "35", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "input_size_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "31", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.lz4Compress_4096_8_U0.lz4CompressPart2_U0.grp_lz4CompressPart2_Pipeline_lz4_compress_fu_91", "Parent" : "30", "Child" : ["32"],
		"CDFG" : "lz4CompressPart2_Pipeline_lz4_compress",
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
			{"Name" : "input_size_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "lenOffset_Stream", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "lenOffset_Stream_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "lit_outStream", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "lit_outStream_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "lz4Out", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "lz4Out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "lz4Out_eos", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "lz4Out_eos_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "compressedSize_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "lz4_compress", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "4", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage1", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage1_subdone", "QuitState" : "ap_ST_fsm_pp0_stage1", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage1_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "32", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.lz4Compress_4096_8_U0.lz4CompressPart2_U0.grp_lz4CompressPart2_Pipeline_lz4_compress_fu_91.flow_control_loop_pipe_sequential_init_U", "Parent" : "31"},
	{"ID" : "33", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.lz4Compress_4096_8_U0.lit_outStream_U", "Parent" : "26"},
	{"ID" : "34", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.lz4Compress_4096_8_U0.lenOffset_Stream_U", "Parent" : "26"},
	{"ID" : "35", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.lz4Compress_4096_8_U0.input_size_c_U", "Parent" : "26"},
	{"ID" : "36", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.lz4Compress_4096_8_U0.start_for_lz4CompressPart2_U0_U", "Parent" : "26"},
	{"ID" : "37", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.core_idx_c_U", "Parent" : "0"},
	{"ID" : "38", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.compressdStream_U", "Parent" : "0"},
	{"ID" : "39", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.input_size_c2_U", "Parent" : "0"},
	{"ID" : "40", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.bestMatchStream_U", "Parent" : "0"},
	{"ID" : "41", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.input_size_c1_U", "Parent" : "0"},
	{"ID" : "42", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.boosterStream_U", "Parent" : "0"},
	{"ID" : "43", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.input_size_c_U", "Parent" : "0"},
	{"ID" : "44", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_lz4Compress_4096_8_U0_U", "Parent" : "0"},
	{"ID" : "45", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_lzBestMatchFilter_6_65536_U0_U", "Parent" : "0"},
	{"ID" : "46", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_lzBooster_255_16384_64_U0_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	lz4CompressEngineRun {
		inStream {Type I LastRead 4 FirstWrite -1}
		lz4Out {Type O LastRead -1 FirstWrite 3}
		lz4Out_eos {Type O LastRead -1 FirstWrite 3}
		lz4OutSize {Type O LastRead -1 FirstWrite 3}
		max_lit_limit {Type O LastRead -1 FirstWrite 5}
		input_size {Type I LastRead 0 FirstWrite -1}
		core_idx {Type I LastRead 5 FirstWrite -1}
		guard_variable_for_void_lzBooster_stream_stream_unsigned_int_nextMatchCh {Type IO LastRead -1 FirstWrite -1}
		nextMatchCh {Type IO LastRead -1 FirstWrite -1}
		match_loc_reg {Type IO LastRead -1 FirstWrite -1}
		skip_len_reg {Type IO LastRead -1 FirstWrite -1}
		matchFlag_reg {Type IO LastRead -1 FirstWrite -1}
		match_len_reg {Type IO LastRead -1 FirstWrite -1}}
	entry_proc {
		core_idx {Type I LastRead 0 FirstWrite -1}
		core_idx_c {Type O LastRead -1 FirstWrite 0}}
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
		compressdStream {Type O LastRead -1 FirstWrite 1}}
	lzBestMatchFilter_6_65536_s {
		compressdStream {Type I LastRead 6 FirstWrite -1}
		bestMatchStream {Type O LastRead -1 FirstWrite 3}
		input_size {Type I LastRead 0 FirstWrite -1}
		input_size_c1 {Type O LastRead -1 FirstWrite 0}}
	lzBestMatchFilter_6_65536_Pipeline_lz_bestMatchFilter {
		compare_window_5 {Type I LastRead 0 FirstWrite -1}
		compare_window_4 {Type I LastRead 0 FirstWrite -1}
		compare_window_3 {Type I LastRead 0 FirstWrite -1}
		compare_window_2 {Type I LastRead 0 FirstWrite -1}
		compare_window_1 {Type I LastRead 0 FirstWrite -1}
		compare_window {Type I LastRead 0 FirstWrite -1}
		input_size_2 {Type I LastRead 0 FirstWrite -1}
		compressdStream {Type I LastRead 2 FirstWrite -1}
		bestMatchStream {Type O LastRead -1 FirstWrite 3}
		compare_window_12_out {Type O LastRead -1 FirstWrite 1}
		compare_window_13_out {Type O LastRead -1 FirstWrite 1}
		compare_window_14_out {Type O LastRead -1 FirstWrite 1}
		compare_window_15_out {Type O LastRead -1 FirstWrite 1}
		compare_window_16_out {Type O LastRead -1 FirstWrite 1}
		compare_window_17_out {Type O LastRead -1 FirstWrite 1}}
	lzBooster_255_16384_64_s {
		bestMatchStream {Type I LastRead 6 FirstWrite -1}
		boosterStream {Type O LastRead -1 FirstWrite 4}
		input_size {Type I LastRead 0 FirstWrite -1}
		input_size_c {Type O LastRead -1 FirstWrite 0}
		guard_variable_for_void_lzBooster_stream_stream_unsigned_int_nextMatchCh {Type IO LastRead -1 FirstWrite -1}
		nextMatchCh {Type IO LastRead -1 FirstWrite -1}
		match_loc_reg {Type IO LastRead -1 FirstWrite -1}
		skip_len_reg {Type IO LastRead -1 FirstWrite -1}
		matchFlag_reg {Type IO LastRead -1 FirstWrite -1}
		match_len_reg {Type IO LastRead -1 FirstWrite -1}}
	lzBooster_255_16384_64_Pipeline_lz_booster {
		nextMatchCh_loc_0 {Type I LastRead 0 FirstWrite -1}
		sub {Type I LastRead 0 FirstWrite -1}
		local_mem {Type IO LastRead 4 FirstWrite 2}
		bestMatchStream {Type I LastRead 1 FirstWrite -1}
		boosterStream {Type O LastRead -1 FirstWrite 4}
		p_out {Type O LastRead -1 FirstWrite 3}
		outValue_out {Type O LastRead -1 FirstWrite 3}
		skip_len_reg {Type IO LastRead -1 FirstWrite -1}
		match_loc_reg {Type IO LastRead 3 FirstWrite 3}
		matchFlag_reg {Type IO LastRead -1 FirstWrite -1}
		match_len_reg {Type IO LastRead -1 FirstWrite -1}}
	lz4Compress_4096_8_s {
		boosterStream {Type I LastRead 2 FirstWrite -1}
		lz4Out {Type O LastRead -1 FirstWrite 3}
		max_lit_limit {Type O LastRead -1 FirstWrite 5}
		input_size {Type I LastRead 0 FirstWrite -1}
		lz4Out_eos {Type O LastRead -1 FirstWrite 3}
		lz4OutSize {Type O LastRead -1 FirstWrite 3}
		index {Type I LastRead 0 FirstWrite -1}}
	lz4CompressPart1_4096_8_s {
		boosterStream {Type I LastRead 2 FirstWrite -1}
		lit_outStream {Type O LastRead -1 FirstWrite 2}
		lenOffset_Stream {Type O LastRead -1 FirstWrite 2}
		input_size {Type I LastRead 0 FirstWrite -1}
		max_lit_limit {Type O LastRead -1 FirstWrite 5}
		index {Type I LastRead 0 FirstWrite -1}
		input_size_c {Type O LastRead -1 FirstWrite 0}}
	lz4CompressPart1_4096_8_Pipeline_lz4_divide {
		currentEncodedValue {Type I LastRead 0 FirstWrite -1}
		input_size_5 {Type I LastRead 0 FirstWrite -1}
		lenOffset_Stream {Type O LastRead -1 FirstWrite 2}
		sub_i {Type I LastRead 0 FirstWrite -1}
		boosterStream {Type I LastRead 2 FirstWrite -1}
		lit_outStream {Type O LastRead -1 FirstWrite 2}
		lit_count_out {Type O LastRead -1 FirstWrite 1}
		lit_count_flag_out {Type O LastRead -1 FirstWrite 1}}
	lz4CompressPart2 {
		lit_outStream {Type I LastRead 4 FirstWrite -1}
		lenOffset_Stream {Type I LastRead 2 FirstWrite -1}
		lz4Out {Type O LastRead -1 FirstWrite 3}
		lz4Out_eos {Type O LastRead -1 FirstWrite 3}
		lz4OutSize {Type O LastRead -1 FirstWrite 3}
		input_size {Type I LastRead 0 FirstWrite -1}}
	lz4CompressPart2_Pipeline_lz4_compress {
		input_size_4 {Type I LastRead 0 FirstWrite -1}
		lenOffset_Stream {Type I LastRead 2 FirstWrite -1}
		lit_outStream {Type I LastRead 4 FirstWrite -1}
		lz4Out {Type O LastRead -1 FirstWrite 5}
		lz4Out_eos {Type O LastRead -1 FirstWrite 5}
		compressedSize_out {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	inStream { ap_fifo {  { inStream_dout fifo_data_in 0 8 }  { inStream_empty_n fifo_status 0 1 }  { inStream_read fifo_port_we 1 1 } } }
	lz4Out { ap_fifo {  { lz4Out_din fifo_data_in 1 8 }  { lz4Out_full_n fifo_status 0 1 }  { lz4Out_write fifo_port_we 1 1 } } }
	lz4Out_eos { ap_fifo {  { lz4Out_eos_din fifo_data_in 1 1 }  { lz4Out_eos_full_n fifo_status 0 1 }  { lz4Out_eos_write fifo_port_we 1 1 } } }
	lz4OutSize { ap_fifo {  { lz4OutSize_din fifo_data_in 1 32 }  { lz4OutSize_full_n fifo_status 0 1 }  { lz4OutSize_write fifo_port_we 1 1 } } }
	max_lit_limit { ap_memory {  { max_lit_limit_address0 mem_address 1 3 }  { max_lit_limit_ce0 mem_ce 1 1 }  { max_lit_limit_d0 mem_din 1 32 }  { max_lit_limit_q0 mem_dout 0 32 }  { max_lit_limit_we0 mem_we 1 1 }  { max_lit_limit_address1 mem_address 1 3 }  { max_lit_limit_ce1 mem_ce 1 1 }  { max_lit_limit_d1 mem_din 1 32 }  { max_lit_limit_q1 mem_dout 0 32 }  { max_lit_limit_we1 mem_we 1 1 } } }
	input_size { ap_none {  { input_size in_data 0 32 } } }
	core_idx { ap_none {  { core_idx in_data 0 32 } } }
}

set maxi_interface_dict [dict create]

# RTL port scheduling information:
set fifoSchedulingInfoList { 
	inStream { fifo_read 1 no_conditional }
	lz4Out { fifo_write 1 no_conditional }
	lz4Out_eos { fifo_write 1 no_conditional }
	lz4OutSize { fifo_write 1 no_conditional }
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
