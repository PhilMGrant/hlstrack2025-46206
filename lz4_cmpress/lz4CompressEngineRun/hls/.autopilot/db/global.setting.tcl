
set TopModule "lz4CompressEngineRun"
set ClockPeriod 7
set ClockList ap_clk
set AxiliteClockList {}
set HasVivadoClockPeriod 0
set CombLogicFlag 0
set PipelineFlag 1
set DataflowTaskPipelineFlag 1
set TrivialPipelineFlag 0
set noPortSwitchingFlag 0
set FloatingPointFlag 0
set FftOrFirFlag 0
set NbRWValue 0
set intNbAccess 0
set NewDSPMapping 1
set HasDSPModule 0
set ResetLevelFlag 1
set ResetStyle control
set ResetSyncFlag 1
set ResetRegisterFlag 0
set ResetVariableFlag 0
set ResetRegisterNum 0
set FsmEncStyle onehot
set MaxFanout 0
set RtlPrefix {}
set RtlSubPrefix lz4CompressEngineRun_
set ExtraCCFlags {}
set ExtraCLdFlags {}
set SynCheckOptions {}
set PresynOptions {}
set PreprocOptions {}
set SchedOptions {}
set BindOptions {}
set RtlGenOptions {}
set RtlWriterOptions {}
set CbcGenFlag {}
set CasGenFlag {}
set CasMonitorFlag {}
set AutoSimOptions {}
set ExportMCPathFlag 0
set SCTraceFileName mytrace
set SCTraceFileFormat vcd
set SCTraceOption all
set TargetInfo xc7z020:-clg484:-1
set SourceFiles {sc {} c ../../../data_compression/L1/tests/lz4_compress/lz4_compress_test.cpp}
set SourceFlags {sc {} c -ID:/Xillinx_Project/PROJECT/data_compression/L1/tests/lz4_compress/../../../L1/include/hw}
set DirectiveFile {}
set TBFiles {verilog D:/Xillinx_Project/PROJECT/data_compression/L1/tests/lz4_compress/lz4_compress_test.cpp bc D:/Xillinx_Project/PROJECT/data_compression/L1/tests/lz4_compress/lz4_compress_test.cpp vhdl D:/Xillinx_Project/PROJECT/data_compression/L1/tests/lz4_compress/lz4_compress_test.cpp sc D:/Xillinx_Project/PROJECT/data_compression/L1/tests/lz4_compress/lz4_compress_test.cpp cas D:/Xillinx_Project/PROJECT/data_compression/L1/tests/lz4_compress/lz4_compress_test.cpp c {}}
set SpecLanguage C
set TVInFiles {bc {} c {} sc {} cas {} vhdl {} verilog {}}
set TVOutFiles {bc {} c {} sc {} cas {} vhdl {} verilog {}}
set TBTops {verilog {} bc {} vhdl {} sc {} cas {} c {}}
set TBInstNames {verilog {} bc {} vhdl {} sc {} cas {} c {}}
set XDCFiles {}
set ExtraGlobalOptions {"area_timing" 1 "clock_gate" 1 "impl_flow" map "power_gate" 0}
set TBTVFileNotFound {}
set AppFile {}
set ApsFile hls.aps
set AvePath ../../.
set DefaultPlatform DefaultPlatform
set multiClockList {}
set SCPortClockMap {}
set intNbAccess 0
set PlatformFiles {{DefaultPlatform {xilinx/zynq/zynq}}}
set HPFPO 0
