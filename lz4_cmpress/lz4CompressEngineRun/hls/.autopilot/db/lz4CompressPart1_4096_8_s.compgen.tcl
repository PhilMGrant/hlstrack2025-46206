# This script segment is generated automatically by AutoPilot

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
    id 98 \
    name max_lit_limit \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename max_lit_limit \
    op interface \
    ports { max_lit_limit_address0 { O 3 vector } max_lit_limit_ce0 { O 1 bit } max_lit_limit_we0 { O 1 bit } max_lit_limit_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'max_lit_limit'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 94 \
    name boosterStream \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_boosterStream \
    op interface \
    ports { boosterStream_dout { I 32 vector } boosterStream_empty_n { I 1 bit } boosterStream_read { O 1 bit } boosterStream_num_data_valid { I 4 vector } boosterStream_fifo_cap { I 4 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 95 \
    name lit_outStream \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_lit_outStream \
    op interface \
    ports { lit_outStream_din { O 8 vector } lit_outStream_full_n { I 1 bit } lit_outStream_write { O 1 bit } lit_outStream_num_data_valid { I 17 vector } lit_outStream_fifo_cap { I 17 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 96 \
    name lenOffset_Stream \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_lenOffset_Stream \
    op interface \
    ports { lenOffset_Stream_din { O 64 vector } lenOffset_Stream_full_n { I 1 bit } lenOffset_Stream_write { O 1 bit } lenOffset_Stream_num_data_valid { I 10 vector } lenOffset_Stream_fifo_cap { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 97 \
    name input_size \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_size \
    op interface \
    ports { input_size_dout { I 32 vector } input_size_empty_n { I 1 bit } input_size_read { O 1 bit } input_size_num_data_valid { I 3 vector } input_size_fifo_cap { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 99 \
    name index \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_index \
    op interface \
    ports { index_dout { I 32 vector } index_empty_n { I 1 bit } index_read { O 1 bit } index_num_data_valid { I 4 vector } index_fifo_cap { I 4 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 100 \
    name input_size_c \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_input_size_c \
    op interface \
    ports { input_size_c_din { O 32 vector } input_size_c_full_n { I 1 bit } input_size_c_write { O 1 bit } input_size_c_num_data_valid { I 3 vector } input_size_c_fifo_cap { I 3 vector } } \
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


