set moduleName lzCompress_6_4_65536_6_1_1024_64_Pipeline_lz_compress
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
set cdfgNum 19
set C_modelName {lzCompress<6, 4, 65536, 6, 1, 1024, 64>_Pipeline_lz_compress}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict dict_3 { MEM_WIDTH 408 MEM_SIZE 13056 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict dict_2 { MEM_WIDTH 408 MEM_SIZE 13056 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict dict_1 { MEM_WIDTH 408 MEM_SIZE 13056 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict dict { MEM_WIDTH 408 MEM_SIZE 13056 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
set C_modelArgList {
	{ arrayidx48_promoted187_reload int 8 regular  }
	{ arrayidx42_3_promoted185_reload int 8 regular  }
	{ arrayidx71_promoted183_reload int 8 regular  }
	{ arrayidx61_promoted181_reload int 8 regular  }
	{ arrayidx54_promoted179_reload int 8 regular  }
	{ sub27 int 32 regular  }
	{ compressdStream int 32 regular {fifo 1 volatile }  }
	{ dict_3 int 408 regular {array 256 { 1 0 } 1 1 }  }
	{ dict_2 int 408 regular {array 256 { 1 0 } 1 1 }  }
	{ dict_1 int 408 regular {array 256 { 1 0 } 1 1 }  }
	{ dict int 408 regular {array 256 { 1 0 } 1 1 }  }
	{ inStream int 8 regular {fifo 0 volatile }  }
	{ present_window_15_out int 8 regular {pointer 1}  }
	{ present_window_14_out int 8 regular {pointer 1}  }
	{ present_window_13_out int 8 regular {pointer 1}  }
	{ present_window_12_out int 8 regular {pointer 1}  }
	{ present_window_11_out int 8 regular {pointer 1}  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "arrayidx48_promoted187_reload", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "arrayidx42_3_promoted185_reload", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "arrayidx71_promoted183_reload", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "arrayidx61_promoted181_reload", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "arrayidx54_promoted179_reload", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "sub27", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "compressdStream", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "dict_3", "interface" : "memory", "bitwidth" : 408, "direction" : "READWRITE"} , 
 	{ "Name" : "dict_2", "interface" : "memory", "bitwidth" : 408, "direction" : "READWRITE"} , 
 	{ "Name" : "dict_1", "interface" : "memory", "bitwidth" : 408, "direction" : "READWRITE"} , 
 	{ "Name" : "dict", "interface" : "memory", "bitwidth" : 408, "direction" : "READWRITE"} , 
 	{ "Name" : "inStream", "interface" : "fifo", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "present_window_15_out", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "present_window_14_out", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "present_window_13_out", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "present_window_12_out", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "present_window_11_out", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 58
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ inStream_dout sc_in sc_lv 8 signal 11 } 
	{ inStream_empty_n sc_in sc_logic 1 signal 11 } 
	{ inStream_read sc_out sc_logic 1 signal 11 } 
	{ compressdStream_din sc_out sc_lv 32 signal 6 } 
	{ compressdStream_full_n sc_in sc_logic 1 signal 6 } 
	{ compressdStream_write sc_out sc_logic 1 signal 6 } 
	{ compressdStream_num_data_valid sc_in sc_lv 4 signal 6 } 
	{ compressdStream_fifo_cap sc_in sc_lv 4 signal 6 } 
	{ arrayidx48_promoted187_reload sc_in sc_lv 8 signal 0 } 
	{ arrayidx42_3_promoted185_reload sc_in sc_lv 8 signal 1 } 
	{ arrayidx71_promoted183_reload sc_in sc_lv 8 signal 2 } 
	{ arrayidx61_promoted181_reload sc_in sc_lv 8 signal 3 } 
	{ arrayidx54_promoted179_reload sc_in sc_lv 8 signal 4 } 
	{ sub27 sc_in sc_lv 32 signal 5 } 
	{ dict_3_address0 sc_out sc_lv 8 signal 7 } 
	{ dict_3_ce0 sc_out sc_logic 1 signal 7 } 
	{ dict_3_q0 sc_in sc_lv 408 signal 7 } 
	{ dict_3_address1 sc_out sc_lv 8 signal 7 } 
	{ dict_3_ce1 sc_out sc_logic 1 signal 7 } 
	{ dict_3_we1 sc_out sc_logic 1 signal 7 } 
	{ dict_3_d1 sc_out sc_lv 408 signal 7 } 
	{ dict_2_address0 sc_out sc_lv 8 signal 8 } 
	{ dict_2_ce0 sc_out sc_logic 1 signal 8 } 
	{ dict_2_q0 sc_in sc_lv 408 signal 8 } 
	{ dict_2_address1 sc_out sc_lv 8 signal 8 } 
	{ dict_2_ce1 sc_out sc_logic 1 signal 8 } 
	{ dict_2_we1 sc_out sc_logic 1 signal 8 } 
	{ dict_2_d1 sc_out sc_lv 408 signal 8 } 
	{ dict_1_address0 sc_out sc_lv 8 signal 9 } 
	{ dict_1_ce0 sc_out sc_logic 1 signal 9 } 
	{ dict_1_q0 sc_in sc_lv 408 signal 9 } 
	{ dict_1_address1 sc_out sc_lv 8 signal 9 } 
	{ dict_1_ce1 sc_out sc_logic 1 signal 9 } 
	{ dict_1_we1 sc_out sc_logic 1 signal 9 } 
	{ dict_1_d1 sc_out sc_lv 408 signal 9 } 
	{ dict_address0 sc_out sc_lv 8 signal 10 } 
	{ dict_ce0 sc_out sc_logic 1 signal 10 } 
	{ dict_q0 sc_in sc_lv 408 signal 10 } 
	{ dict_address1 sc_out sc_lv 8 signal 10 } 
	{ dict_ce1 sc_out sc_logic 1 signal 10 } 
	{ dict_we1 sc_out sc_logic 1 signal 10 } 
	{ dict_d1 sc_out sc_lv 408 signal 10 } 
	{ present_window_15_out sc_out sc_lv 8 signal 12 } 
	{ present_window_15_out_ap_vld sc_out sc_logic 1 outvld 12 } 
	{ present_window_14_out sc_out sc_lv 8 signal 13 } 
	{ present_window_14_out_ap_vld sc_out sc_logic 1 outvld 13 } 
	{ present_window_13_out sc_out sc_lv 8 signal 14 } 
	{ present_window_13_out_ap_vld sc_out sc_logic 1 outvld 14 } 
	{ present_window_12_out sc_out sc_lv 8 signal 15 } 
	{ present_window_12_out_ap_vld sc_out sc_logic 1 outvld 15 } 
	{ present_window_11_out sc_out sc_lv 8 signal 16 } 
	{ present_window_11_out_ap_vld sc_out sc_logic 1 outvld 16 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "inStream_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "inStream", "role": "dout" }} , 
 	{ "name": "inStream_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inStream", "role": "empty_n" }} , 
 	{ "name": "inStream_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inStream", "role": "read" }} , 
 	{ "name": "compressdStream_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "compressdStream", "role": "din" }} , 
 	{ "name": "compressdStream_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "compressdStream", "role": "full_n" }} , 
 	{ "name": "compressdStream_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "compressdStream", "role": "write" }} , 
 	{ "name": "compressdStream_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "compressdStream", "role": "num_data_valid" }} , 
 	{ "name": "compressdStream_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "compressdStream", "role": "fifo_cap" }} , 
 	{ "name": "arrayidx48_promoted187_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "arrayidx48_promoted187_reload", "role": "default" }} , 
 	{ "name": "arrayidx42_3_promoted185_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "arrayidx42_3_promoted185_reload", "role": "default" }} , 
 	{ "name": "arrayidx71_promoted183_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "arrayidx71_promoted183_reload", "role": "default" }} , 
 	{ "name": "arrayidx61_promoted181_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "arrayidx61_promoted181_reload", "role": "default" }} , 
 	{ "name": "arrayidx54_promoted179_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "arrayidx54_promoted179_reload", "role": "default" }} , 
 	{ "name": "sub27", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sub27", "role": "default" }} , 
 	{ "name": "dict_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "dict_3", "role": "address0" }} , 
 	{ "name": "dict_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dict_3", "role": "ce0" }} , 
 	{ "name": "dict_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":408, "type": "signal", "bundle":{"name": "dict_3", "role": "q0" }} , 
 	{ "name": "dict_3_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "dict_3", "role": "address1" }} , 
 	{ "name": "dict_3_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dict_3", "role": "ce1" }} , 
 	{ "name": "dict_3_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dict_3", "role": "we1" }} , 
 	{ "name": "dict_3_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":408, "type": "signal", "bundle":{"name": "dict_3", "role": "d1" }} , 
 	{ "name": "dict_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "dict_2", "role": "address0" }} , 
 	{ "name": "dict_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dict_2", "role": "ce0" }} , 
 	{ "name": "dict_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":408, "type": "signal", "bundle":{"name": "dict_2", "role": "q0" }} , 
 	{ "name": "dict_2_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "dict_2", "role": "address1" }} , 
 	{ "name": "dict_2_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dict_2", "role": "ce1" }} , 
 	{ "name": "dict_2_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dict_2", "role": "we1" }} , 
 	{ "name": "dict_2_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":408, "type": "signal", "bundle":{"name": "dict_2", "role": "d1" }} , 
 	{ "name": "dict_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "dict_1", "role": "address0" }} , 
 	{ "name": "dict_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dict_1", "role": "ce0" }} , 
 	{ "name": "dict_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":408, "type": "signal", "bundle":{"name": "dict_1", "role": "q0" }} , 
 	{ "name": "dict_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "dict_1", "role": "address1" }} , 
 	{ "name": "dict_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dict_1", "role": "ce1" }} , 
 	{ "name": "dict_1_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dict_1", "role": "we1" }} , 
 	{ "name": "dict_1_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":408, "type": "signal", "bundle":{"name": "dict_1", "role": "d1" }} , 
 	{ "name": "dict_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "dict", "role": "address0" }} , 
 	{ "name": "dict_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dict", "role": "ce0" }} , 
 	{ "name": "dict_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":408, "type": "signal", "bundle":{"name": "dict", "role": "q0" }} , 
 	{ "name": "dict_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "dict", "role": "address1" }} , 
 	{ "name": "dict_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dict", "role": "ce1" }} , 
 	{ "name": "dict_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dict", "role": "we1" }} , 
 	{ "name": "dict_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":408, "type": "signal", "bundle":{"name": "dict", "role": "d1" }} , 
 	{ "name": "present_window_15_out", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "present_window_15_out", "role": "default" }} , 
 	{ "name": "present_window_15_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "present_window_15_out", "role": "ap_vld" }} , 
 	{ "name": "present_window_14_out", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "present_window_14_out", "role": "default" }} , 
 	{ "name": "present_window_14_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "present_window_14_out", "role": "ap_vld" }} , 
 	{ "name": "present_window_13_out", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "present_window_13_out", "role": "default" }} , 
 	{ "name": "present_window_13_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "present_window_13_out", "role": "ap_vld" }} , 
 	{ "name": "present_window_12_out", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "present_window_12_out", "role": "default" }} , 
 	{ "name": "present_window_12_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "present_window_12_out", "role": "ap_vld" }} , 
 	{ "name": "present_window_11_out", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "present_window_11_out", "role": "default" }} , 
 	{ "name": "present_window_11_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "present_window_11_out", "role": "ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
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
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_9_2_408_1_1_U18", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
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
		present_window_11_out {Type O LastRead -1 FirstWrite 8}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	arrayidx48_promoted187_reload { ap_none {  { arrayidx48_promoted187_reload in_data 0 8 } } }
	arrayidx42_3_promoted185_reload { ap_none {  { arrayidx42_3_promoted185_reload in_data 0 8 } } }
	arrayidx71_promoted183_reload { ap_none {  { arrayidx71_promoted183_reload in_data 0 8 } } }
	arrayidx61_promoted181_reload { ap_none {  { arrayidx61_promoted181_reload in_data 0 8 } } }
	arrayidx54_promoted179_reload { ap_none {  { arrayidx54_promoted179_reload in_data 0 8 } } }
	sub27 { ap_none {  { sub27 in_data 0 32 } } }
	compressdStream { ap_fifo {  { compressdStream_din fifo_data_in 1 32 }  { compressdStream_full_n fifo_status 0 1 }  { compressdStream_write fifo_port_we 1 1 }  { compressdStream_num_data_valid fifo_status_num_data_valid 0 4 }  { compressdStream_fifo_cap fifo_update 0 4 } } }
	dict_3 { ap_memory {  { dict_3_address0 mem_address 1 8 }  { dict_3_ce0 mem_ce 1 1 }  { dict_3_q0 mem_dout 0 408 }  { dict_3_address1 MemPortADDR2 1 8 }  { dict_3_ce1 MemPortCE2 1 1 }  { dict_3_we1 MemPortWE2 1 1 }  { dict_3_d1 MemPortDIN2 1 408 } } }
	dict_2 { ap_memory {  { dict_2_address0 mem_address 1 8 }  { dict_2_ce0 mem_ce 1 1 }  { dict_2_q0 mem_dout 0 408 }  { dict_2_address1 MemPortADDR2 1 8 }  { dict_2_ce1 MemPortCE2 1 1 }  { dict_2_we1 MemPortWE2 1 1 }  { dict_2_d1 MemPortDIN2 1 408 } } }
	dict_1 { ap_memory {  { dict_1_address0 mem_address 1 8 }  { dict_1_ce0 mem_ce 1 1 }  { dict_1_q0 mem_dout 0 408 }  { dict_1_address1 MemPortADDR2 1 8 }  { dict_1_ce1 MemPortCE2 1 1 }  { dict_1_we1 MemPortWE2 1 1 }  { dict_1_d1 MemPortDIN2 1 408 } } }
	dict { ap_memory {  { dict_address0 mem_address 1 8 }  { dict_ce0 mem_ce 1 1 }  { dict_q0 mem_dout 0 408 }  { dict_address1 MemPortADDR2 1 8 }  { dict_ce1 MemPortCE2 1 1 }  { dict_we1 MemPortWE2 1 1 }  { dict_d1 MemPortDIN2 1 408 } } }
	inStream { ap_fifo {  { inStream_dout fifo_data_in 0 8 }  { inStream_empty_n fifo_status 0 1 }  { inStream_read fifo_port_we 1 1 } } }
	present_window_15_out { ap_vld {  { present_window_15_out out_data 1 8 }  { present_window_15_out_ap_vld out_vld 1 1 } } }
	present_window_14_out { ap_vld {  { present_window_14_out out_data 1 8 }  { present_window_14_out_ap_vld out_vld 1 1 } } }
	present_window_13_out { ap_vld {  { present_window_13_out out_data 1 8 }  { present_window_13_out_ap_vld out_vld 1 1 } } }
	present_window_12_out { ap_vld {  { present_window_12_out out_data 1 8 }  { present_window_12_out_ap_vld out_vld 1 1 } } }
	present_window_11_out { ap_vld {  { present_window_11_out out_data 1 8 }  { present_window_11_out_ap_vld out_vld 1 1 } } }
}
