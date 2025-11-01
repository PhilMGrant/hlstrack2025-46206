create_project prj -part xc7z020-clg484-1 -force
set_property target_language verilog [current_project]
set vivado_ver [version -short]
set COE_DIR "../../syn/verilog"
source "D:/Xillinx_Project/PROJECT/cholesky_test/kernel_cholesky_0/hls/syn/verilog/kernel_cholesky_0_dsqrt_64ns_64ns_64_57_no_dsp_1_ip.tcl"
