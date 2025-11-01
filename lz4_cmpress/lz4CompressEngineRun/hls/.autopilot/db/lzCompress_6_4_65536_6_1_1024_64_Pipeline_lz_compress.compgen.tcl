# This script segment is generated automatically by AutoPilot

if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler lz4CompressEngineRun_sparsemux_9_2_408_1_1 BINDTYPE {op} TYPE {sparsemux} IMPL {compactencoding_dontcare}
}


# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 27 \
    name dict_3 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename dict_3 \
    op interface \
    ports { dict_3_address0 { O 8 vector } dict_3_ce0 { O 1 bit } dict_3_q0 { I 408 vector } dict_3_address1 { O 8 vector } dict_3_ce1 { O 1 bit } dict_3_we1 { O 1 bit } dict_3_d1 { O 408 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'dict_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 28 \
    name dict_2 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename dict_2 \
    op interface \
    ports { dict_2_address0 { O 8 vector } dict_2_ce0 { O 1 bit } dict_2_q0 { I 408 vector } dict_2_address1 { O 8 vector } dict_2_ce1 { O 1 bit } dict_2_we1 { O 1 bit } dict_2_d1 { O 408 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'dict_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 29 \
    name dict_1 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename dict_1 \
    op interface \
    ports { dict_1_address0 { O 8 vector } dict_1_ce0 { O 1 bit } dict_1_q0 { I 408 vector } dict_1_address1 { O 8 vector } dict_1_ce1 { O 1 bit } dict_1_we1 { O 1 bit } dict_1_d1 { O 408 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'dict_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 30 \
    name dict \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename dict \
    op interface \
    ports { dict_address0 { O 8 vector } dict_ce0 { O 1 bit } dict_q0 { I 408 vector } dict_address1 { O 8 vector } dict_ce1 { O 1 bit } dict_we1 { O 1 bit } dict_d1 { O 408 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'dict'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20 \
    name arrayidx48_promoted187_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_arrayidx48_promoted187_reload \
    op interface \
    ports { arrayidx48_promoted187_reload { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 21 \
    name arrayidx42_3_promoted185_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_arrayidx42_3_promoted185_reload \
    op interface \
    ports { arrayidx42_3_promoted185_reload { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 22 \
    name arrayidx71_promoted183_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_arrayidx71_promoted183_reload \
    op interface \
    ports { arrayidx71_promoted183_reload { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 23 \
    name arrayidx61_promoted181_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_arrayidx61_promoted181_reload \
    op interface \
    ports { arrayidx61_promoted181_reload { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 24 \
    name arrayidx54_promoted179_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_arrayidx54_promoted179_reload \
    op interface \
    ports { arrayidx54_promoted179_reload { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 25 \
    name sub27 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_sub27 \
    op interface \
    ports { sub27 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 26 \
    name compressdStream \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_compressdStream \
    op interface \
    ports { compressdStream_din { O 32 vector } compressdStream_full_n { I 1 bit } compressdStream_write { O 1 bit } compressdStream_num_data_valid { I 4 vector } compressdStream_fifo_cap { I 4 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 31 \
    name inStream \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_inStream \
    op interface \
    ports { inStream_dout { I 8 vector } inStream_empty_n { I 1 bit } inStream_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 32 \
    name present_window_15_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_present_window_15_out \
    op interface \
    ports { present_window_15_out { O 8 vector } present_window_15_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 33 \
    name present_window_14_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_present_window_14_out \
    op interface \
    ports { present_window_14_out { O 8 vector } present_window_14_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 34 \
    name present_window_13_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_present_window_13_out \
    op interface \
    ports { present_window_13_out { O 8 vector } present_window_13_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 35 \
    name present_window_12_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_present_window_12_out \
    op interface \
    ports { present_window_12_out { O 8 vector } present_window_12_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 36 \
    name present_window_11_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_present_window_11_out \
    op interface \
    ports { present_window_11_out { O 8 vector } present_window_11_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -1 \
    name ap_ctrl \
    type ap_ctrl \
    reset_level 1 \
    sync_rst true \
    corename ap_ctrl \
    op interface \
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -2 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_clk \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-113\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}


# Adapter definition:
set PortName ap_rst
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -3 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_rst \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-114\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


# flow_control definition:
set InstName lz4CompressEngineRun_flow_control_loop_pipe_sequential_init_U
set CompName lz4CompressEngineRun_flow_control_loop_pipe_sequential_init
set name flow_control_loop_pipe_sequential_init
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control] == "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control"} {
eval "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control { \
    name ${name} \
    prefix lz4CompressEngineRun_ \
}"
} else {
puts "@W \[IMPL-107\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $CompName BINDTYPE interface TYPE internal_upc_flow_control INSTNAME $InstName
}


