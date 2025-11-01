set SynModuleInfo {
  {SRCNAME entry_proc MODELNAME entry_proc RTLNAME lz4CompressEngineRun_entry_proc}
  {SRCNAME {lzCompress<6, 4, 65536, 6, 1, 1024, 64>_Pipeline_dict_flush} MODELNAME lzCompress_6_4_65536_6_1_1024_64_Pipeline_dict_flush RTLNAME lz4CompressEngineRun_lzCompress_6_4_65536_6_1_1024_64_Pipeline_dict_flush
    SUBMODULES {
      {MODELNAME lz4CompressEngineRun_flow_control_loop_pipe_sequential_init RTLNAME lz4CompressEngineRun_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME lz4CompressEngineRun_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME {lzCompress<6, 4, 65536, 6, 1, 1024, 64>_Outline_VITIS_LOOP_84_2} MODELNAME lzCompress_6_4_65536_6_1_1024_64_Outline_VITIS_LOOP_84_2 RTLNAME lz4CompressEngineRun_lzCompress_6_4_65536_6_1_1024_64_Outline_VITIS_LOOP_84_2}
  {SRCNAME {lzCompress<6, 4, 65536, 6, 1, 1024, 64>_Pipeline_lz_compress} MODELNAME lzCompress_6_4_65536_6_1_1024_64_Pipeline_lz_compress RTLNAME lz4CompressEngineRun_lzCompress_6_4_65536_6_1_1024_64_Pipeline_lz_compress
    SUBMODULES {
      {MODELNAME lz4CompressEngineRun_sparsemux_9_2_408_1_1 RTLNAME lz4CompressEngineRun_sparsemux_9_2_408_1_1 BINDTYPE op TYPE sparsemux IMPL compactencoding_dontcare}
    }
  }
  {SRCNAME {lzCompress<6, 4, 65536, 6, 1, 1024, 64>_Pipeline_lz_compress_leftover} MODELNAME lzCompress_6_4_65536_6_1_1024_64_Pipeline_lz_compress_leftover RTLNAME lz4CompressEngineRun_lzCompress_6_4_65536_6_1_1024_64_Pipeline_lz_compress_leftover
    SUBMODULES {
      {MODELNAME lz4CompressEngineRun_sparsemux_11_3_8_1_1 RTLNAME lz4CompressEngineRun_sparsemux_11_3_8_1_1 BINDTYPE op TYPE sparsemux IMPL compactencoding_dontcare}
    }
  }
  {SRCNAME {lzCompress<6, 4, 65536, 6, 1, 1024, 64>_Pipeline_lz_left_bytes} MODELNAME lzCompress_6_4_65536_6_1_1024_64_Pipeline_lz_left_bytes RTLNAME lz4CompressEngineRun_lzCompress_6_4_65536_6_1_1024_64_Pipeline_lz_left_bytes}
  {SRCNAME {lzCompress<6, 4, 65536, 6, 1, 1024, 64>} MODELNAME lzCompress_6_4_65536_6_1_1024_64_s RTLNAME lz4CompressEngineRun_lzCompress_6_4_65536_6_1_1024_64_s
    SUBMODULES {
      {MODELNAME lz4CompressEngineRun_lzCompress_6_4_65536_6_1_1024_64_s_dict_RAM_2P_BRAM_1R1W RTLNAME lz4CompressEngineRun_lzCompress_6_4_65536_6_1_1024_64_s_dict_RAM_2P_BRAM_1R1W BINDTYPE storage TYPE ram_2p IMPL bram LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME {lzBestMatchFilter<6, 65536>_Pipeline_lz_bestMatchFilter} MODELNAME lzBestMatchFilter_6_65536_Pipeline_lz_bestMatchFilter RTLNAME lz4CompressEngineRun_lzBestMatchFilter_6_65536_Pipeline_lz_bestMatchFilter}
  {SRCNAME {lzBestMatchFilter<6, 65536>} MODELNAME lzBestMatchFilter_6_65536_s RTLNAME lz4CompressEngineRun_lzBestMatchFilter_6_65536_s
    SUBMODULES {
      {MODELNAME lz4CompressEngineRun_sparsemux_13_3_32_1_1 RTLNAME lz4CompressEngineRun_sparsemux_13_3_32_1_1 BINDTYPE op TYPE sparsemux IMPL compactencoding_dontcare}
    }
  }
  {SRCNAME {lzBooster<255, 16384, 64>_Pipeline_lz_booster} MODELNAME lzBooster_255_16384_64_Pipeline_lz_booster RTLNAME lz4CompressEngineRun_lzBooster_255_16384_64_Pipeline_lz_booster}
  {SRCNAME {lzBooster<255, 16384, 64>} MODELNAME lzBooster_255_16384_64_s RTLNAME lz4CompressEngineRun_lzBooster_255_16384_64_s
    SUBMODULES {
      {MODELNAME lz4CompressEngineRun_lzBooster_255_16384_64_s_local_mem_RAM_2P_BRAM_1R1W RTLNAME lz4CompressEngineRun_lzBooster_255_16384_64_s_local_mem_RAM_2P_BRAM_1R1W BINDTYPE storage TYPE ram_2p IMPL bram LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME {lz4CompressPart1<4096, 8>_Pipeline_lz4_divide} MODELNAME lz4CompressPart1_4096_8_Pipeline_lz4_divide RTLNAME lz4CompressEngineRun_lz4CompressPart1_4096_8_Pipeline_lz4_divide}
  {SRCNAME {lz4CompressPart1<4096, 8>} MODELNAME lz4CompressPart1_4096_8_s RTLNAME lz4CompressEngineRun_lz4CompressPart1_4096_8_s}
  {SRCNAME lz4CompressPart2_Pipeline_lz4_compress MODELNAME lz4CompressPart2_Pipeline_lz4_compress RTLNAME lz4CompressEngineRun_lz4CompressPart2_Pipeline_lz4_compress}
  {SRCNAME lz4CompressPart2 MODELNAME lz4CompressPart2 RTLNAME lz4CompressEngineRun_lz4CompressPart2}
  {SRCNAME {lz4Compress<4096, 8>} MODELNAME lz4Compress_4096_8_s RTLNAME lz4CompressEngineRun_lz4Compress_4096_8_s
    SUBMODULES {
      {MODELNAME lz4CompressEngineRun_fifo_w8_d65536_B RTLNAME lz4CompressEngineRun_fifo_w8_d65536_B BINDTYPE storage TYPE fifo IMPL bram ALLOW_PRAGMA 1 INSTNAME lit_outStream_U}
      {MODELNAME lz4CompressEngineRun_fifo_w64_d512_B RTLNAME lz4CompressEngineRun_fifo_w64_d512_B BINDTYPE storage TYPE fifo IMPL bram ALLOW_PRAGMA 1 INSTNAME lenOffset_Stream_U}
      {MODELNAME lz4CompressEngineRun_fifo_w32_d2_S RTLNAME lz4CompressEngineRun_fifo_w32_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME input_size_c_U}
      {MODELNAME lz4CompressEngineRun_start_for_lz4CompressPart2_U0 RTLNAME lz4CompressEngineRun_start_for_lz4CompressPart2_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_lz4CompressPart2_U0_U}
    }
  }
  {SRCNAME lz4CompressEngineRun MODELNAME lz4CompressEngineRun RTLNAME lz4CompressEngineRun IS_TOP 1
    SUBMODULES {
      {MODELNAME lz4CompressEngineRun_fifo_w32_d5_S RTLNAME lz4CompressEngineRun_fifo_w32_d5_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME core_idx_c_U}
      {MODELNAME lz4CompressEngineRun_fifo_w32_d8_S RTLNAME lz4CompressEngineRun_fifo_w32_d8_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME compressdStream_U}
      {MODELNAME lz4CompressEngineRun_fifo_w32_d2_S_x RTLNAME lz4CompressEngineRun_fifo_w32_d2_S_x BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME input_size_c2_U}
      {MODELNAME lz4CompressEngineRun_fifo_w32_d8_S RTLNAME lz4CompressEngineRun_fifo_w32_d8_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME bestMatchStream_U}
      {MODELNAME lz4CompressEngineRun_fifo_w32_d2_S_x RTLNAME lz4CompressEngineRun_fifo_w32_d2_S_x BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME input_size_c1_U}
      {MODELNAME lz4CompressEngineRun_fifo_w32_d8_S RTLNAME lz4CompressEngineRun_fifo_w32_d8_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME boosterStream_U}
      {MODELNAME lz4CompressEngineRun_fifo_w32_d2_S_x RTLNAME lz4CompressEngineRun_fifo_w32_d2_S_x BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME input_size_c_U}
      {MODELNAME lz4CompressEngineRun_start_for_lz4Compress_4096_8_U0 RTLNAME lz4CompressEngineRun_start_for_lz4Compress_4096_8_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_lz4Compress_4096_8_U0_U}
      {MODELNAME lz4CompressEngineRun_start_for_lzBestMatchFilter_6_65536_U0 RTLNAME lz4CompressEngineRun_start_for_lzBestMatchFilter_6_65536_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_lzBestMatchFilter_6_65536_U0_U}
      {MODELNAME lz4CompressEngineRun_start_for_lzBooster_255_16384_64_U0 RTLNAME lz4CompressEngineRun_start_for_lzBooster_255_16384_64_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_lzBooster_255_16384_64_U0_U}
    }
  }
}
