# This script segment is generated automatically by AutoPilot

if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler lz4CompressEngineRun_fifo_w8_d65536_B BINDTYPE {storage} TYPE {fifo} IMPL {bram} ALLOW_PRAGMA 1 INSTNAME {lit_outStream_U}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler lz4CompressEngineRun_fifo_w64_d512_B BINDTYPE {storage} TYPE {fifo} IMPL {bram} ALLOW_PRAGMA 1 INSTNAME {lenOffset_Stream_U}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler lz4CompressEngineRun_fifo_w32_d2_S BINDTYPE {storage} TYPE {fifo} IMPL {srl} ALLOW_PRAGMA 1 INSTNAME {input_size_c_U}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler lz4CompressEngineRun_start_for_lz4CompressPart2_U0 BINDTYPE {storage} TYPE {fifo} IMPL {srl} ALLOW_PRAGMA 1 INSTNAME {start_for_lz4CompressPart2_U0_U}
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
    id 119 \
    name max_lit_limit \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename max_lit_limit \
    op interface \
    ports { max_lit_limit_address0 { O 3 vector } max_lit_limit_ce0 { O 1 bit } max_lit_limit_d0 { O 32 vector } max_lit_limit_q0 { I 32 vector } max_lit_limit_we0 { O 1 bit } max_lit_limit_address1 { O 3 vector } max_lit_limit_ce1 { O 1 bit } max_lit_limit_d1 { O 32 vector } max_lit_limit_q1 { I 32 vector } max_lit_limit_we1 { O 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'max_lit_limit'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 117 \
    name boosterStream \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_boosterStream \
    op interface \
    ports { boosterStream_dout { I 32 vector } boosterStream_empty_n { I 1 bit } boosterStream_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 118 \
    name lz4Out \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_lz4Out \
    op interface \
    ports { lz4Out_din { O 8 vector } lz4Out_full_n { I 1 bit } lz4Out_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 120 \
    name input_size \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_size \
    op interface \
    ports { input_size_dout { I 32 vector } input_size_empty_n { I 1 bit } input_size_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 121 \
    name lz4Out_eos \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_lz4Out_eos \
    op interface \
    ports { lz4Out_eos_din { O 1 vector } lz4Out_eos_full_n { I 1 bit } lz4Out_eos_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 122 \
    name lz4OutSize \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_lz4OutSize \
    op interface \
    ports { lz4OutSize_din { O 32 vector } lz4OutSize_full_n { I 1 bit } lz4OutSize_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 123 \
    name index \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_index \
    op interface \
    ports { index_dout { I 32 vector } index_empty_n { I 1 bit } index_read { O 1 bit } } \
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
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } ap_continue { I 1 bit } } \
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


