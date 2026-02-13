# This script segment is generated automatically by AutoPilot

# Memory (RAM/ROM)  definition:
set ID 100
set hasByteEnable 0
set MemName classify_x_local_0iy_memcore
set CoreName ap_simcore_mem
set PortList { 2 3 }
set DataWd 8
set AddrRange 49
set AddrWd 6
set impl_style block
set TrueReset 0
set HasInitializer 0
set IsROM 0
set ROMData {}
set NumOfStage 2
set MaxLatency -1
set DelayBudget 2.322
set ClkPeriod 10
set RegisteredInput 0
set memSimGenFunc ap_gen_simcore_mem
set memImplGenFunc ::AESL_LIB_VIRTEX::xil_gen_RAM
eval "set memGenArgs  { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 2 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    style ${impl_style} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "

set Depth 2
set FullThresh 0
set CoreName ap_simcore_mem_df_channel
set MemName classify_x_local_0iy
if {${::AESL::PGuard_autocg_gen} || ${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_mem_df_channel] == "ap_gen_simcore_mem_df_channel"} {
    eval "ap_gen_simcore_mem_df_channel { \
    id ${ID} \
    name ${MemName} \
    memcorename ${MemName}_memcore \
    corename ${CoreName} \
    op mem_df_channel \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage} \
    max_latency ${MaxLatency} \
    registered_input ${RegisteredInput} \
    port_num 2 \
    use_pre_full 1 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    true_reset ${TrueReset} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
    depth ${Depth} \
    full_thresh ${FullThresh} \
    memSimGenFunc $memSimGenFunc\
    memImplGenFunc $memImplGenFunc\
    memGenArgs \{$memGenArgs\} \
} "
} else {
puts "@W \[IMPL-105\] Cannot find ap_gen_simcore_mem_df_channel, check your platform lib"
}
}


# FIFO definition:
set ID 101
set FifoName fifo_w24_d2_A
set InstName x_norm_in_V_c_U
set CoreName ap_simcore_fifo
set NumOfStage 2
set RegisteredInput 0
set DualClock 0
set Depth 2
set DataWd 24
set AddrWd 1
set FullThresh 0
set impl_style auto
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_fifo] == "ap_gen_simcore_fifo"} {
eval "ap_gen_simcore_fifo { \
    id ${ID} \
    name ${FifoName} \
    instname ${InstName}    corename ${CoreName} \
    op fifo \
    stage_num ${NumOfStage} \
    registered_input ${RegisteredInput} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    reset_level 1 \
    sync_rst true \
    dual_clk 0\
    depth ${Depth} \
    full_thresh ${FullThresh} \
}"
} else {
puts "@W \[IMPL-106\] Cannot find ap_gen_simcore_fifo, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $FifoName
}


if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_FIFO] == "::AESL_LIB_VIRTEX::xil_gen_FIFO"} {
eval "::AESL_LIB_VIRTEX::xil_gen_FIFO { \
    id ${ID} \
    name ${FifoName} \
    instname ${InstName}
    corename FIFO \
    op fifo \
    stage_num ${NumOfStage} \
    registered_input ${RegisteredInput} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    reset_level 1 \
    sync_rst true \
    dual_clk 0 \
    depth ${Depth} \
    full_thresh ${FullThresh} \
    style ${impl_style} \
}"
} else {
puts "@W \[IMPL-107\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_FIFO, check your platform lib"
}
}


# FIFO definition:
set ID 102
set FifoName fifo_w32_d2_A
set InstName res_internal_V_U
set CoreName ap_simcore_fifo
set NumOfStage 2
set RegisteredInput 0
set DualClock 0
set Depth 2
set DataWd 32
set AddrWd 1
set FullThresh 0
set impl_style auto
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_fifo] == "ap_gen_simcore_fifo"} {
eval "ap_gen_simcore_fifo { \
    id ${ID} \
    name ${FifoName} \
    instname ${InstName}    corename ${CoreName} \
    op fifo \
    stage_num ${NumOfStage} \
    registered_input ${RegisteredInput} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    reset_level 1 \
    sync_rst true \
    dual_clk 0\
    depth ${Depth} \
    full_thresh ${FullThresh} \
}"
} else {
puts "@W \[IMPL-106\] Cannot find ap_gen_simcore_fifo, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $FifoName
}


if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_FIFO] == "::AESL_LIB_VIRTEX::xil_gen_FIFO"} {
eval "::AESL_LIB_VIRTEX::xil_gen_FIFO { \
    id ${ID} \
    name ${FifoName} \
    instname ${InstName}
    corename FIFO \
    op fifo \
    stage_num ${NumOfStage} \
    registered_input ${RegisteredInput} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    reset_level 1 \
    sync_rst true \
    dual_clk 0 \
    depth ${Depth} \
    full_thresh ${FullThresh} \
    style ${impl_style} \
}"
} else {
puts "@W \[IMPL-107\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_FIFO, check your platform lib"
}
}


# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

set port_control {
ap_start { }
ap_done { }
ap_ready { }
ap_idle { }
x_norm_in_V { 
	dir I
	width 24
	depth 1
	mode ap_none
	offset 16
	offset_end 23
}
result_out_V { 
	dir O
	width 32
	depth 1
	mode ap_vld
	offset 24
	offset_end 31
}
}


# Native S_AXILite:
if {${::AESL::PGuard_simmodel_gen}} {
	if {[info proc ::AESL_LIB_XILADAPTER::s_axilite_gen] == "::AESL_LIB_XILADAPTER::s_axilite_gen"} {
		eval "::AESL_LIB_XILADAPTER::s_axilite_gen { \
			id 103 \
			corename classify_control_axilite \
			name classify_control_s_axi \
			ports {$port_control} \
			op interface \
			is_flushable 0 \ 
		} "
	} else {
		puts "@W \[IMPL-110\] Cannot find AXI Lite interface model in the library. Ignored generation of AXI Lite  interface for 'control'"
	}
}

if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler classify_control_s_axi
}

# Native AXIS:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::native_axis_add] == "::AESL_LIB_XILADAPTER::native_axis_add"} {
eval "::AESL_LIB_XILADAPTER::native_axis_add { \
    id 104 \
    name in_stream_V_data_V \
    reset_level 0 \
    sync_rst true \
    corename {in_stream} \
    metadata {  } \
    op interface \
    ports { in_stream_TDATA { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'in_stream_V_data_V'"
}
}


# Native AXIS:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::native_axis_add] == "::AESL_LIB_XILADAPTER::native_axis_add"} {
eval "::AESL_LIB_XILADAPTER::native_axis_add { \
    id 105 \
    name in_stream_V_keep_V \
    reset_level 0 \
    sync_rst true \
    corename {in_stream} \
    metadata {  } \
    op interface \
    ports { in_stream_TKEEP { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'in_stream_V_keep_V'"
}
}


# Native AXIS:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::native_axis_add] == "::AESL_LIB_XILADAPTER::native_axis_add"} {
eval "::AESL_LIB_XILADAPTER::native_axis_add { \
    id 106 \
    name in_stream_V_strb_V \
    reset_level 0 \
    sync_rst true \
    corename {in_stream} \
    metadata {  } \
    op interface \
    ports { in_stream_TSTRB { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'in_stream_V_strb_V'"
}
}


# Native AXIS:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::native_axis_add] == "::AESL_LIB_XILADAPTER::native_axis_add"} {
eval "::AESL_LIB_XILADAPTER::native_axis_add { \
    id 107 \
    name in_stream_V_user_V \
    reset_level 0 \
    sync_rst true \
    corename {in_stream} \
    metadata {  } \
    op interface \
    ports { in_stream_TUSER { I 1 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'in_stream_V_user_V'"
}
}


# Native AXIS:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::native_axis_add] == "::AESL_LIB_XILADAPTER::native_axis_add"} {
eval "::AESL_LIB_XILADAPTER::native_axis_add { \
    id 108 \
    name in_stream_V_last_V \
    reset_level 0 \
    sync_rst true \
    corename {in_stream} \
    metadata {  } \
    op interface \
    ports { in_stream_TLAST { I 1 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'in_stream_V_last_V'"
}
}


# Native AXIS:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::native_axis_add] == "::AESL_LIB_XILADAPTER::native_axis_add"} {
eval "::AESL_LIB_XILADAPTER::native_axis_add { \
    id 109 \
    name in_stream_V_id_V \
    reset_level 0 \
    sync_rst true \
    corename {in_stream} \
    metadata {  } \
    op interface \
    ports { in_stream_TID { I 1 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'in_stream_V_id_V'"
}
}


# Native AXIS:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::native_axis_add] == "::AESL_LIB_XILADAPTER::native_axis_add"} {
eval "::AESL_LIB_XILADAPTER::native_axis_add { \
    id 110 \
    name in_stream_V_dest_V \
    reset_level 0 \
    sync_rst true \
    corename {in_stream} \
    metadata {  } \
    op interface \
    ports { in_stream_TDEST { I 1 vector } in_stream_TVALID { I 1 bit } in_stream_TREADY { O 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'in_stream_V_dest_V'"
}
}



# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -1 \
    name ${PortName} \
    reset_level 0 \
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
set PortName ap_rst_n
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -2 \
    name ${PortName} \
    reset_level 0 \
    sync_rst true \
    corename apif_ap_rst_n \
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


