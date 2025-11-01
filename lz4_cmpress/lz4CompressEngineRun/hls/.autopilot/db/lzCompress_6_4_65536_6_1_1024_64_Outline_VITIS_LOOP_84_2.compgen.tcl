# This script segment is generated automatically by AutoPilot

# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 7 \
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
    id 8 \
    name present_window_4_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_present_window_4_out \
    op interface \
    ports { present_window_4_out { O 8 vector } present_window_4_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 9 \
    name present_window_3_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_present_window_3_out \
    op interface \
    ports { present_window_3_out { O 8 vector } present_window_3_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 10 \
    name present_window_2_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_present_window_2_out \
    op interface \
    ports { present_window_2_out { O 8 vector } present_window_2_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 11 \
    name present_window_1_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_present_window_1_out \
    op interface \
    ports { present_window_1_out { O 8 vector } present_window_1_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12 \
    name present_window_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_present_window_out \
    op interface \
    ports { present_window_out { O 8 vector } present_window_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 13 \
    name arrayidx48_promoted187_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_arrayidx48_promoted187_out \
    op interface \
    ports { arrayidx48_promoted187_out { O 8 vector } arrayidx48_promoted187_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14 \
    name arrayidx42_3_promoted185_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_arrayidx42_3_promoted185_out \
    op interface \
    ports { arrayidx42_3_promoted185_out { O 8 vector } arrayidx42_3_promoted185_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 15 \
    name arrayidx71_promoted183_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_arrayidx71_promoted183_out \
    op interface \
    ports { arrayidx71_promoted183_out { O 8 vector } arrayidx71_promoted183_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 16 \
    name arrayidx61_promoted181_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_arrayidx61_promoted181_out \
    op interface \
    ports { arrayidx61_promoted181_out { O 8 vector } arrayidx61_promoted181_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 17 \
    name arrayidx54_promoted179_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_arrayidx54_promoted179_out \
    op interface \
    ports { arrayidx54_promoted179_out { O 8 vector } arrayidx54_promoted179_out_ap_vld { O 1 bit } } \
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


