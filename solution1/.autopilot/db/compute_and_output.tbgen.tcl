set moduleName compute_and_output
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {compute_and_output}
set C_modelType { void 0 }
set C_modelArgList {
	{ x_local_0_V int 8 regular {array 50 { 1 3 } 1 1 }  }
	{ x_local_1_V int 8 regular {array 50 { 1 3 } 1 1 }  }
	{ x_local_2_V int 8 regular {array 50 { 1 3 } 1 1 }  }
	{ x_local_3_V int 8 regular {array 50 { 1 3 } 1 1 }  }
	{ x_local_4_V int 8 regular {array 50 { 1 3 } 1 1 }  }
	{ x_local_5_V int 8 regular {array 50 { 1 3 } 1 1 }  }
	{ x_local_6_V int 8 regular {array 50 { 1 3 } 1 1 }  }
	{ x_local_7_V int 8 regular {array 50 { 1 3 } 1 1 }  }
	{ x_local_8_V int 8 regular {array 50 { 1 3 } 1 1 }  }
	{ x_local_9_V int 8 regular {array 50 { 1 3 } 1 1 }  }
	{ x_local_10_V int 8 regular {array 50 { 1 3 } 1 1 }  }
	{ x_local_11_V int 8 regular {array 50 { 1 3 } 1 1 }  }
	{ x_local_12_V int 8 regular {array 50 { 1 3 } 1 1 }  }
	{ x_local_13_V int 8 regular {array 50 { 1 3 } 1 1 }  }
	{ x_local_14_V int 8 regular {array 50 { 1 3 } 1 1 }  }
	{ x_local_15_V int 8 regular {array 50 { 1 3 } 1 1 }  }
	{ p_read int 24 regular  }
	{ active_groups_0_V_r int 6 regular  }
	{ active_groups_1_V_r int 6 regular  }
	{ active_groups_2_V_r int 6 regular  }
	{ active_groups_3_V_r int 6 regular  }
	{ active_groups_4_V_r int 6 regular  }
	{ active_groups_5_V_r int 6 regular  }
	{ active_groups_6_V_r int 6 regular  }
	{ active_groups_7_V_r int 6 regular  }
	{ active_groups_8_V_r int 6 regular  }
	{ active_groups_9_V_r int 6 regular  }
	{ active_groups_10_V_s int 6 regular  }
	{ active_groups_11_V_s int 6 regular  }
	{ active_groups_12_V_s int 6 regular  }
	{ active_groups_13_V_s int 6 regular  }
	{ active_groups_14_V_s int 6 regular  }
	{ active_groups_15_V_s int 6 regular  }
	{ active_groups_16_V_s int 6 regular  }
	{ active_groups_17_V_s int 6 regular  }
	{ active_groups_18_V_s int 6 regular  }
	{ active_groups_19_V_s int 6 regular  }
	{ active_groups_20_V_s int 6 regular  }
	{ active_groups_21_V_s int 6 regular  }
	{ active_groups_22_V_s int 6 regular  }
	{ active_groups_23_V_s int 6 regular  }
	{ active_groups_24_V_s int 6 regular  }
	{ active_groups_25_V_s int 6 regular  }
	{ active_groups_26_V_s int 6 regular  }
	{ active_groups_27_V_s int 6 regular  }
	{ active_groups_28_V_s int 6 regular  }
	{ active_groups_29_V_s int 6 regular  }
	{ active_groups_30_V_s int 6 regular  }
	{ active_groups_31_V_s int 6 regular  }
	{ active_groups_32_V_s int 6 regular  }
	{ active_groups_33_V_s int 6 regular  }
	{ active_groups_34_V_s int 6 regular  }
	{ active_groups_35_V_s int 6 regular  }
	{ active_groups_36_V_s int 6 regular  }
	{ active_groups_37_V_s int 6 regular  }
	{ active_groups_38_V_s int 6 regular  }
	{ active_groups_39_V_s int 6 regular  }
	{ active_groups_40_V_s int 6 regular  }
	{ active_groups_41_V_s int 6 regular  }
	{ active_groups_42_V_s int 6 regular  }
	{ active_groups_43_V_s int 6 regular  }
	{ active_groups_44_V_s int 6 regular  }
	{ active_groups_45_V_s int 6 regular  }
	{ active_groups_46_V_s int 6 regular  }
	{ active_groups_47_V_s int 6 regular  }
	{ active_groups_48_V_s int 6 regular  }
	{ p_read50 int 6 regular  }
	{ out_stream_V_data_V int 32 regular {axi_s 1 volatile  { out_stream Data } }  }
	{ out_stream_V_keep_V int 1 regular {axi_s 1 volatile  { out_stream Keep } }  }
	{ out_stream_V_strb_V int 1 regular {axi_s 1 volatile  { out_stream Strb } }  }
	{ out_stream_V_last_V int 1 regular {axi_s 1 volatile  { out_stream Last } }  }
	{ n int 31 regular {fifo 0}  }
	{ num_images int 32 regular {fifo 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "x_local_0_V", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "x_local_1_V", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "x_local_2_V", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "x_local_3_V", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "x_local_4_V", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "x_local_5_V", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "x_local_6_V", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "x_local_7_V", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "x_local_8_V", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "x_local_9_V", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "x_local_10_V", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "x_local_11_V", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "x_local_12_V", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "x_local_13_V", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "x_local_14_V", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "x_local_15_V", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "p_read", "interface" : "wire", "bitwidth" : 24, "direction" : "READONLY"} , 
 	{ "Name" : "active_groups_0_V_r", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "active_groups_1_V_r", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "active_groups_2_V_r", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "active_groups_3_V_r", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "active_groups_4_V_r", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "active_groups_5_V_r", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "active_groups_6_V_r", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "active_groups_7_V_r", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "active_groups_8_V_r", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "active_groups_9_V_r", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "active_groups_10_V_s", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "active_groups_11_V_s", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "active_groups_12_V_s", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "active_groups_13_V_s", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "active_groups_14_V_s", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "active_groups_15_V_s", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "active_groups_16_V_s", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "active_groups_17_V_s", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "active_groups_18_V_s", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "active_groups_19_V_s", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "active_groups_20_V_s", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "active_groups_21_V_s", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "active_groups_22_V_s", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "active_groups_23_V_s", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "active_groups_24_V_s", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "active_groups_25_V_s", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "active_groups_26_V_s", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "active_groups_27_V_s", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "active_groups_28_V_s", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "active_groups_29_V_s", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "active_groups_30_V_s", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "active_groups_31_V_s", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "active_groups_32_V_s", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "active_groups_33_V_s", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "active_groups_34_V_s", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "active_groups_35_V_s", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "active_groups_36_V_s", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "active_groups_37_V_s", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "active_groups_38_V_s", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "active_groups_39_V_s", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "active_groups_40_V_s", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "active_groups_41_V_s", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "active_groups_42_V_s", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "active_groups_43_V_s", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "active_groups_44_V_s", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "active_groups_45_V_s", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "active_groups_46_V_s", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "active_groups_47_V_s", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "active_groups_48_V_s", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "p_read50", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "out_stream_V_data_V", "interface" : "axis", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "out_stream_V_keep_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "out_stream_V_strb_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "out_stream_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "n", "interface" : "fifo", "bitwidth" : 31, "direction" : "READONLY"} , 
 	{ "Name" : "num_images", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 118
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ x_local_0_V_address0 sc_out sc_lv 6 signal 0 } 
	{ x_local_0_V_ce0 sc_out sc_logic 1 signal 0 } 
	{ x_local_0_V_q0 sc_in sc_lv 8 signal 0 } 
	{ x_local_1_V_address0 sc_out sc_lv 6 signal 1 } 
	{ x_local_1_V_ce0 sc_out sc_logic 1 signal 1 } 
	{ x_local_1_V_q0 sc_in sc_lv 8 signal 1 } 
	{ x_local_2_V_address0 sc_out sc_lv 6 signal 2 } 
	{ x_local_2_V_ce0 sc_out sc_logic 1 signal 2 } 
	{ x_local_2_V_q0 sc_in sc_lv 8 signal 2 } 
	{ x_local_3_V_address0 sc_out sc_lv 6 signal 3 } 
	{ x_local_3_V_ce0 sc_out sc_logic 1 signal 3 } 
	{ x_local_3_V_q0 sc_in sc_lv 8 signal 3 } 
	{ x_local_4_V_address0 sc_out sc_lv 6 signal 4 } 
	{ x_local_4_V_ce0 sc_out sc_logic 1 signal 4 } 
	{ x_local_4_V_q0 sc_in sc_lv 8 signal 4 } 
	{ x_local_5_V_address0 sc_out sc_lv 6 signal 5 } 
	{ x_local_5_V_ce0 sc_out sc_logic 1 signal 5 } 
	{ x_local_5_V_q0 sc_in sc_lv 8 signal 5 } 
	{ x_local_6_V_address0 sc_out sc_lv 6 signal 6 } 
	{ x_local_6_V_ce0 sc_out sc_logic 1 signal 6 } 
	{ x_local_6_V_q0 sc_in sc_lv 8 signal 6 } 
	{ x_local_7_V_address0 sc_out sc_lv 6 signal 7 } 
	{ x_local_7_V_ce0 sc_out sc_logic 1 signal 7 } 
	{ x_local_7_V_q0 sc_in sc_lv 8 signal 7 } 
	{ x_local_8_V_address0 sc_out sc_lv 6 signal 8 } 
	{ x_local_8_V_ce0 sc_out sc_logic 1 signal 8 } 
	{ x_local_8_V_q0 sc_in sc_lv 8 signal 8 } 
	{ x_local_9_V_address0 sc_out sc_lv 6 signal 9 } 
	{ x_local_9_V_ce0 sc_out sc_logic 1 signal 9 } 
	{ x_local_9_V_q0 sc_in sc_lv 8 signal 9 } 
	{ x_local_10_V_address0 sc_out sc_lv 6 signal 10 } 
	{ x_local_10_V_ce0 sc_out sc_logic 1 signal 10 } 
	{ x_local_10_V_q0 sc_in sc_lv 8 signal 10 } 
	{ x_local_11_V_address0 sc_out sc_lv 6 signal 11 } 
	{ x_local_11_V_ce0 sc_out sc_logic 1 signal 11 } 
	{ x_local_11_V_q0 sc_in sc_lv 8 signal 11 } 
	{ x_local_12_V_address0 sc_out sc_lv 6 signal 12 } 
	{ x_local_12_V_ce0 sc_out sc_logic 1 signal 12 } 
	{ x_local_12_V_q0 sc_in sc_lv 8 signal 12 } 
	{ x_local_13_V_address0 sc_out sc_lv 6 signal 13 } 
	{ x_local_13_V_ce0 sc_out sc_logic 1 signal 13 } 
	{ x_local_13_V_q0 sc_in sc_lv 8 signal 13 } 
	{ x_local_14_V_address0 sc_out sc_lv 6 signal 14 } 
	{ x_local_14_V_ce0 sc_out sc_logic 1 signal 14 } 
	{ x_local_14_V_q0 sc_in sc_lv 8 signal 14 } 
	{ x_local_15_V_address0 sc_out sc_lv 6 signal 15 } 
	{ x_local_15_V_ce0 sc_out sc_logic 1 signal 15 } 
	{ x_local_15_V_q0 sc_in sc_lv 8 signal 15 } 
	{ p_read sc_in sc_lv 24 signal 16 } 
	{ active_groups_0_V_r sc_in sc_lv 6 signal 17 } 
	{ active_groups_1_V_r sc_in sc_lv 6 signal 18 } 
	{ active_groups_2_V_r sc_in sc_lv 6 signal 19 } 
	{ active_groups_3_V_r sc_in sc_lv 6 signal 20 } 
	{ active_groups_4_V_r sc_in sc_lv 6 signal 21 } 
	{ active_groups_5_V_r sc_in sc_lv 6 signal 22 } 
	{ active_groups_6_V_r sc_in sc_lv 6 signal 23 } 
	{ active_groups_7_V_r sc_in sc_lv 6 signal 24 } 
	{ active_groups_8_V_r sc_in sc_lv 6 signal 25 } 
	{ active_groups_9_V_r sc_in sc_lv 6 signal 26 } 
	{ active_groups_10_V_s sc_in sc_lv 6 signal 27 } 
	{ active_groups_11_V_s sc_in sc_lv 6 signal 28 } 
	{ active_groups_12_V_s sc_in sc_lv 6 signal 29 } 
	{ active_groups_13_V_s sc_in sc_lv 6 signal 30 } 
	{ active_groups_14_V_s sc_in sc_lv 6 signal 31 } 
	{ active_groups_15_V_s sc_in sc_lv 6 signal 32 } 
	{ active_groups_16_V_s sc_in sc_lv 6 signal 33 } 
	{ active_groups_17_V_s sc_in sc_lv 6 signal 34 } 
	{ active_groups_18_V_s sc_in sc_lv 6 signal 35 } 
	{ active_groups_19_V_s sc_in sc_lv 6 signal 36 } 
	{ active_groups_20_V_s sc_in sc_lv 6 signal 37 } 
	{ active_groups_21_V_s sc_in sc_lv 6 signal 38 } 
	{ active_groups_22_V_s sc_in sc_lv 6 signal 39 } 
	{ active_groups_23_V_s sc_in sc_lv 6 signal 40 } 
	{ active_groups_24_V_s sc_in sc_lv 6 signal 41 } 
	{ active_groups_25_V_s sc_in sc_lv 6 signal 42 } 
	{ active_groups_26_V_s sc_in sc_lv 6 signal 43 } 
	{ active_groups_27_V_s sc_in sc_lv 6 signal 44 } 
	{ active_groups_28_V_s sc_in sc_lv 6 signal 45 } 
	{ active_groups_29_V_s sc_in sc_lv 6 signal 46 } 
	{ active_groups_30_V_s sc_in sc_lv 6 signal 47 } 
	{ active_groups_31_V_s sc_in sc_lv 6 signal 48 } 
	{ active_groups_32_V_s sc_in sc_lv 6 signal 49 } 
	{ active_groups_33_V_s sc_in sc_lv 6 signal 50 } 
	{ active_groups_34_V_s sc_in sc_lv 6 signal 51 } 
	{ active_groups_35_V_s sc_in sc_lv 6 signal 52 } 
	{ active_groups_36_V_s sc_in sc_lv 6 signal 53 } 
	{ active_groups_37_V_s sc_in sc_lv 6 signal 54 } 
	{ active_groups_38_V_s sc_in sc_lv 6 signal 55 } 
	{ active_groups_39_V_s sc_in sc_lv 6 signal 56 } 
	{ active_groups_40_V_s sc_in sc_lv 6 signal 57 } 
	{ active_groups_41_V_s sc_in sc_lv 6 signal 58 } 
	{ active_groups_42_V_s sc_in sc_lv 6 signal 59 } 
	{ active_groups_43_V_s sc_in sc_lv 6 signal 60 } 
	{ active_groups_44_V_s sc_in sc_lv 6 signal 61 } 
	{ active_groups_45_V_s sc_in sc_lv 6 signal 62 } 
	{ active_groups_46_V_s sc_in sc_lv 6 signal 63 } 
	{ active_groups_47_V_s sc_in sc_lv 6 signal 64 } 
	{ active_groups_48_V_s sc_in sc_lv 6 signal 65 } 
	{ p_read50 sc_in sc_lv 6 signal 66 } 
	{ out_stream_TDATA sc_out sc_lv 32 signal 67 } 
	{ out_stream_TVALID sc_out sc_logic 1 outvld 70 } 
	{ out_stream_TREADY sc_in sc_logic 1 outacc 70 } 
	{ out_stream_TKEEP sc_out sc_lv 1 signal 68 } 
	{ out_stream_TSTRB sc_out sc_lv 1 signal 69 } 
	{ out_stream_TLAST sc_out sc_lv 1 signal 70 } 
	{ n_dout sc_in sc_lv 31 signal 71 } 
	{ n_empty_n sc_in sc_logic 1 signal 71 } 
	{ n_read sc_out sc_logic 1 signal 71 } 
	{ num_images_dout sc_in sc_lv 32 signal 72 } 
	{ num_images_empty_n sc_in sc_logic 1 signal 72 } 
	{ num_images_read sc_out sc_logic 1 signal 72 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "x_local_0_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "x_local_0_V", "role": "address0" }} , 
 	{ "name": "x_local_0_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_local_0_V", "role": "ce0" }} , 
 	{ "name": "x_local_0_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "x_local_0_V", "role": "q0" }} , 
 	{ "name": "x_local_1_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "x_local_1_V", "role": "address0" }} , 
 	{ "name": "x_local_1_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_local_1_V", "role": "ce0" }} , 
 	{ "name": "x_local_1_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "x_local_1_V", "role": "q0" }} , 
 	{ "name": "x_local_2_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "x_local_2_V", "role": "address0" }} , 
 	{ "name": "x_local_2_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_local_2_V", "role": "ce0" }} , 
 	{ "name": "x_local_2_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "x_local_2_V", "role": "q0" }} , 
 	{ "name": "x_local_3_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "x_local_3_V", "role": "address0" }} , 
 	{ "name": "x_local_3_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_local_3_V", "role": "ce0" }} , 
 	{ "name": "x_local_3_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "x_local_3_V", "role": "q0" }} , 
 	{ "name": "x_local_4_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "x_local_4_V", "role": "address0" }} , 
 	{ "name": "x_local_4_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_local_4_V", "role": "ce0" }} , 
 	{ "name": "x_local_4_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "x_local_4_V", "role": "q0" }} , 
 	{ "name": "x_local_5_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "x_local_5_V", "role": "address0" }} , 
 	{ "name": "x_local_5_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_local_5_V", "role": "ce0" }} , 
 	{ "name": "x_local_5_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "x_local_5_V", "role": "q0" }} , 
 	{ "name": "x_local_6_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "x_local_6_V", "role": "address0" }} , 
 	{ "name": "x_local_6_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_local_6_V", "role": "ce0" }} , 
 	{ "name": "x_local_6_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "x_local_6_V", "role": "q0" }} , 
 	{ "name": "x_local_7_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "x_local_7_V", "role": "address0" }} , 
 	{ "name": "x_local_7_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_local_7_V", "role": "ce0" }} , 
 	{ "name": "x_local_7_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "x_local_7_V", "role": "q0" }} , 
 	{ "name": "x_local_8_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "x_local_8_V", "role": "address0" }} , 
 	{ "name": "x_local_8_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_local_8_V", "role": "ce0" }} , 
 	{ "name": "x_local_8_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "x_local_8_V", "role": "q0" }} , 
 	{ "name": "x_local_9_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "x_local_9_V", "role": "address0" }} , 
 	{ "name": "x_local_9_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_local_9_V", "role": "ce0" }} , 
 	{ "name": "x_local_9_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "x_local_9_V", "role": "q0" }} , 
 	{ "name": "x_local_10_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "x_local_10_V", "role": "address0" }} , 
 	{ "name": "x_local_10_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_local_10_V", "role": "ce0" }} , 
 	{ "name": "x_local_10_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "x_local_10_V", "role": "q0" }} , 
 	{ "name": "x_local_11_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "x_local_11_V", "role": "address0" }} , 
 	{ "name": "x_local_11_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_local_11_V", "role": "ce0" }} , 
 	{ "name": "x_local_11_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "x_local_11_V", "role": "q0" }} , 
 	{ "name": "x_local_12_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "x_local_12_V", "role": "address0" }} , 
 	{ "name": "x_local_12_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_local_12_V", "role": "ce0" }} , 
 	{ "name": "x_local_12_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "x_local_12_V", "role": "q0" }} , 
 	{ "name": "x_local_13_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "x_local_13_V", "role": "address0" }} , 
 	{ "name": "x_local_13_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_local_13_V", "role": "ce0" }} , 
 	{ "name": "x_local_13_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "x_local_13_V", "role": "q0" }} , 
 	{ "name": "x_local_14_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "x_local_14_V", "role": "address0" }} , 
 	{ "name": "x_local_14_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_local_14_V", "role": "ce0" }} , 
 	{ "name": "x_local_14_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "x_local_14_V", "role": "q0" }} , 
 	{ "name": "x_local_15_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "x_local_15_V", "role": "address0" }} , 
 	{ "name": "x_local_15_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_local_15_V", "role": "ce0" }} , 
 	{ "name": "x_local_15_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "x_local_15_V", "role": "q0" }} , 
 	{ "name": "p_read", "direction": "in", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "p_read", "role": "default" }} , 
 	{ "name": "active_groups_0_V_r", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "active_groups_0_V_r", "role": "default" }} , 
 	{ "name": "active_groups_1_V_r", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "active_groups_1_V_r", "role": "default" }} , 
 	{ "name": "active_groups_2_V_r", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "active_groups_2_V_r", "role": "default" }} , 
 	{ "name": "active_groups_3_V_r", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "active_groups_3_V_r", "role": "default" }} , 
 	{ "name": "active_groups_4_V_r", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "active_groups_4_V_r", "role": "default" }} , 
 	{ "name": "active_groups_5_V_r", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "active_groups_5_V_r", "role": "default" }} , 
 	{ "name": "active_groups_6_V_r", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "active_groups_6_V_r", "role": "default" }} , 
 	{ "name": "active_groups_7_V_r", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "active_groups_7_V_r", "role": "default" }} , 
 	{ "name": "active_groups_8_V_r", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "active_groups_8_V_r", "role": "default" }} , 
 	{ "name": "active_groups_9_V_r", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "active_groups_9_V_r", "role": "default" }} , 
 	{ "name": "active_groups_10_V_s", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "active_groups_10_V_s", "role": "default" }} , 
 	{ "name": "active_groups_11_V_s", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "active_groups_11_V_s", "role": "default" }} , 
 	{ "name": "active_groups_12_V_s", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "active_groups_12_V_s", "role": "default" }} , 
 	{ "name": "active_groups_13_V_s", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "active_groups_13_V_s", "role": "default" }} , 
 	{ "name": "active_groups_14_V_s", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "active_groups_14_V_s", "role": "default" }} , 
 	{ "name": "active_groups_15_V_s", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "active_groups_15_V_s", "role": "default" }} , 
 	{ "name": "active_groups_16_V_s", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "active_groups_16_V_s", "role": "default" }} , 
 	{ "name": "active_groups_17_V_s", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "active_groups_17_V_s", "role": "default" }} , 
 	{ "name": "active_groups_18_V_s", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "active_groups_18_V_s", "role": "default" }} , 
 	{ "name": "active_groups_19_V_s", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "active_groups_19_V_s", "role": "default" }} , 
 	{ "name": "active_groups_20_V_s", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "active_groups_20_V_s", "role": "default" }} , 
 	{ "name": "active_groups_21_V_s", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "active_groups_21_V_s", "role": "default" }} , 
 	{ "name": "active_groups_22_V_s", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "active_groups_22_V_s", "role": "default" }} , 
 	{ "name": "active_groups_23_V_s", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "active_groups_23_V_s", "role": "default" }} , 
 	{ "name": "active_groups_24_V_s", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "active_groups_24_V_s", "role": "default" }} , 
 	{ "name": "active_groups_25_V_s", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "active_groups_25_V_s", "role": "default" }} , 
 	{ "name": "active_groups_26_V_s", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "active_groups_26_V_s", "role": "default" }} , 
 	{ "name": "active_groups_27_V_s", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "active_groups_27_V_s", "role": "default" }} , 
 	{ "name": "active_groups_28_V_s", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "active_groups_28_V_s", "role": "default" }} , 
 	{ "name": "active_groups_29_V_s", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "active_groups_29_V_s", "role": "default" }} , 
 	{ "name": "active_groups_30_V_s", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "active_groups_30_V_s", "role": "default" }} , 
 	{ "name": "active_groups_31_V_s", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "active_groups_31_V_s", "role": "default" }} , 
 	{ "name": "active_groups_32_V_s", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "active_groups_32_V_s", "role": "default" }} , 
 	{ "name": "active_groups_33_V_s", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "active_groups_33_V_s", "role": "default" }} , 
 	{ "name": "active_groups_34_V_s", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "active_groups_34_V_s", "role": "default" }} , 
 	{ "name": "active_groups_35_V_s", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "active_groups_35_V_s", "role": "default" }} , 
 	{ "name": "active_groups_36_V_s", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "active_groups_36_V_s", "role": "default" }} , 
 	{ "name": "active_groups_37_V_s", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "active_groups_37_V_s", "role": "default" }} , 
 	{ "name": "active_groups_38_V_s", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "active_groups_38_V_s", "role": "default" }} , 
 	{ "name": "active_groups_39_V_s", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "active_groups_39_V_s", "role": "default" }} , 
 	{ "name": "active_groups_40_V_s", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "active_groups_40_V_s", "role": "default" }} , 
 	{ "name": "active_groups_41_V_s", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "active_groups_41_V_s", "role": "default" }} , 
 	{ "name": "active_groups_42_V_s", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "active_groups_42_V_s", "role": "default" }} , 
 	{ "name": "active_groups_43_V_s", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "active_groups_43_V_s", "role": "default" }} , 
 	{ "name": "active_groups_44_V_s", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "active_groups_44_V_s", "role": "default" }} , 
 	{ "name": "active_groups_45_V_s", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "active_groups_45_V_s", "role": "default" }} , 
 	{ "name": "active_groups_46_V_s", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "active_groups_46_V_s", "role": "default" }} , 
 	{ "name": "active_groups_47_V_s", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "active_groups_47_V_s", "role": "default" }} , 
 	{ "name": "active_groups_48_V_s", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "active_groups_48_V_s", "role": "default" }} , 
 	{ "name": "p_read50", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "p_read50", "role": "default" }} , 
 	{ "name": "out_stream_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "out_stream_V_data_V", "role": "default" }} , 
 	{ "name": "out_stream_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "out_stream_V_last_V", "role": "default" }} , 
 	{ "name": "out_stream_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "out_stream_V_last_V", "role": "default" }} , 
 	{ "name": "out_stream_TKEEP", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "out_stream_V_keep_V", "role": "default" }} , 
 	{ "name": "out_stream_TSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "out_stream_V_strb_V", "role": "default" }} , 
 	{ "name": "out_stream_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "out_stream_V_last_V", "role": "default" }} , 
 	{ "name": "n_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "n", "role": "dout" }} , 
 	{ "name": "n_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "n", "role": "empty_n" }} , 
 	{ "name": "n_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "n", "role": "read" }} , 
 	{ "name": "num_images_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "num_images", "role": "dout" }} , 
 	{ "name": "num_images_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "num_images", "role": "empty_n" }} , 
 	{ "name": "num_images_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "num_images", "role": "read" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "55", "56", "57", "58", "59", "60", "61", "62", "63", "64", "65", "66", "67", "68", "69", "70", "71", "72", "73", "74", "75", "76", "77", "78", "79", "80", "81", "82", "83", "84", "85", "86", "87", "88", "89", "90", "91", "92", "93", "94", "95", "96", "97", "98", "99", "100", "101", "102", "103", "104", "105", "106", "107", "108", "109", "110", "111", "112", "113", "114", "115", "116", "117", "118", "119", "120", "121", "122", "123", "124", "125", "126", "127", "128", "129", "130", "131", "132", "133", "134", "135", "136", "137", "138", "139", "140", "141", "142", "143", "144", "145"],
		"CDFG" : "compute_and_output",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "118", "EstimateLatencyMax" : "406",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "x_local_0_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "x_local_1_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "x_local_2_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "x_local_3_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "x_local_4_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "x_local_5_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "x_local_6_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "x_local_7_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "x_local_8_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "x_local_9_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "x_local_10_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "x_local_11_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "x_local_12_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "x_local_13_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "x_local_14_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "x_local_15_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "active_groups_0_V_r", "Type" : "None", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "active_groups_1_V_r", "Type" : "None", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "active_groups_2_V_r", "Type" : "None", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "active_groups_3_V_r", "Type" : "None", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "active_groups_4_V_r", "Type" : "None", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "active_groups_5_V_r", "Type" : "None", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "active_groups_6_V_r", "Type" : "None", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "active_groups_7_V_r", "Type" : "None", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "active_groups_8_V_r", "Type" : "None", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "active_groups_9_V_r", "Type" : "None", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "active_groups_10_V_s", "Type" : "None", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "active_groups_11_V_s", "Type" : "None", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "active_groups_12_V_s", "Type" : "None", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "active_groups_13_V_s", "Type" : "None", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "active_groups_14_V_s", "Type" : "None", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "active_groups_15_V_s", "Type" : "None", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "active_groups_16_V_s", "Type" : "None", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "active_groups_17_V_s", "Type" : "None", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "active_groups_18_V_s", "Type" : "None", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "active_groups_19_V_s", "Type" : "None", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "active_groups_20_V_s", "Type" : "None", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "active_groups_21_V_s", "Type" : "None", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "active_groups_22_V_s", "Type" : "None", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "active_groups_23_V_s", "Type" : "None", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "active_groups_24_V_s", "Type" : "None", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "active_groups_25_V_s", "Type" : "None", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "active_groups_26_V_s", "Type" : "None", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "active_groups_27_V_s", "Type" : "None", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "active_groups_28_V_s", "Type" : "None", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "active_groups_29_V_s", "Type" : "None", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "active_groups_30_V_s", "Type" : "None", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "active_groups_31_V_s", "Type" : "None", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "active_groups_32_V_s", "Type" : "None", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "active_groups_33_V_s", "Type" : "None", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "active_groups_34_V_s", "Type" : "None", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "active_groups_35_V_s", "Type" : "None", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "active_groups_36_V_s", "Type" : "None", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "active_groups_37_V_s", "Type" : "None", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "active_groups_38_V_s", "Type" : "None", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "active_groups_39_V_s", "Type" : "None", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "active_groups_40_V_s", "Type" : "None", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "active_groups_41_V_s", "Type" : "None", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "active_groups_42_V_s", "Type" : "None", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "active_groups_43_V_s", "Type" : "None", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "active_groups_44_V_s", "Type" : "None", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "active_groups_45_V_s", "Type" : "None", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "active_groups_46_V_s", "Type" : "None", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "active_groups_47_V_s", "Type" : "None", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "active_groups_48_V_s", "Type" : "None", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "p_read50", "Type" : "None", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "out_stream_V_data_V", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "out_stream_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "out_stream_V_keep_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "out_stream_V_strb_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "out_stream_V_last_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "n", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "n_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "num_images", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "num_images_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "sv_norms_0_padded_V_s", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sv_norms_0_padded_V_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sv_norms_0_padded_V_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sv_norms_0_padded_V_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sv_norms_0_padded_V_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sv_norms_0_padded_V_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sv_norms_0_padded_V_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sv_norms_0_padded_V_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sv_norms_0_padded_V_8", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sv_norms_0_padded_V_9", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sv_norms_0_padded_V_10", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sv_norms_0_padded_V_11", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sv_norms_0_padded_V_12", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sv_norms_0_padded_V_13", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sv_norms_0_padded_V_14", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sv_norms_0_padded_V_15", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "alphas_0_padded_V_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "alphas_0_padded_V_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "alphas_0_padded_V_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "alphas_0_padded_V_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "alphas_0_padded_V_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "alphas_0_padded_V_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "alphas_0_padded_V_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "alphas_0_padded_V_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "alphas_0_padded_V_8", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "alphas_0_padded_V_9", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "alphas_0_padded_V_10", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "alphas_0_padded_V_11", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "alphas_0_padded_V_12", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "alphas_0_padded_V_13", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "alphas_0_padded_V_14", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "alphas_0_padded_V_15", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sv_norms_1_padded_V_s", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sv_norms_1_padded_V_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sv_norms_1_padded_V_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sv_norms_1_padded_V_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sv_norms_1_padded_V_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sv_norms_1_padded_V_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sv_norms_1_padded_V_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sv_norms_1_padded_V_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sv_norms_1_padded_V_8", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sv_norms_1_padded_V_9", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sv_norms_1_padded_V_10", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sv_norms_1_padded_V_11", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sv_norms_1_padded_V_12", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sv_norms_1_padded_V_13", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sv_norms_1_padded_V_14", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sv_norms_1_padded_V_15", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "alphas_1_padded_V_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "alphas_1_padded_V_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "alphas_1_padded_V_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "alphas_1_padded_V_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "alphas_1_padded_V_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "alphas_1_padded_V_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "alphas_1_padded_V_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "alphas_1_padded_V_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "alphas_1_padded_V_8", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "alphas_1_padded_V_9", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "alphas_1_padded_V_10", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "alphas_1_padded_V_11", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "alphas_1_padded_V_12", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "alphas_1_padded_V_13", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "alphas_1_padded_V_14", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "alphas_1_padded_V_15", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "svs_0_p800_V_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "svs_0_p800_V_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "svs_0_p800_V_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "svs_0_p800_V_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "svs_0_p800_V_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "svs_0_p800_V_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "svs_0_p800_V_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "svs_0_p800_V_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "svs_0_p800_V_8", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "svs_0_p800_V_9", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "svs_0_p800_V_10", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "svs_0_p800_V_11", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "svs_0_p800_V_12", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "svs_0_p800_V_13", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "svs_0_p800_V_14", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "svs_0_p800_V_15", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "svs_1_p800_V_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "svs_1_p800_V_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "svs_1_p800_V_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "svs_1_p800_V_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "svs_1_p800_V_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "svs_1_p800_V_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "svs_1_p800_V_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "svs_1_p800_V_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "svs_1_p800_V_8", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "svs_1_p800_V_9", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "svs_1_p800_V_10", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "svs_1_p800_V_11", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "svs_1_p800_V_12", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "svs_1_p800_V_13", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "svs_1_p800_V_14", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "svs_1_p800_V_15", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "EXP_LUT_V", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sv_norms_0_padded_V_s_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sv_norms_0_padded_V_1_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sv_norms_0_padded_V_2_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sv_norms_0_padded_V_3_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sv_norms_0_padded_V_4_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sv_norms_0_padded_V_5_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sv_norms_0_padded_V_6_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sv_norms_0_padded_V_7_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sv_norms_0_padded_V_8_U", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sv_norms_0_padded_V_9_U", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sv_norms_0_padded_V_10_U", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sv_norms_0_padded_V_11_U", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sv_norms_0_padded_V_12_U", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sv_norms_0_padded_V_13_U", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sv_norms_0_padded_V_14_U", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sv_norms_0_padded_V_15_U", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.alphas_0_padded_V_0_U", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.alphas_0_padded_V_1_U", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.alphas_0_padded_V_2_U", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.alphas_0_padded_V_3_U", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.alphas_0_padded_V_4_U", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.alphas_0_padded_V_5_U", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.alphas_0_padded_V_6_U", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.alphas_0_padded_V_7_U", "Parent" : "0"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.alphas_0_padded_V_8_U", "Parent" : "0"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.alphas_0_padded_V_9_U", "Parent" : "0"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.alphas_0_padded_V_10_U", "Parent" : "0"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.alphas_0_padded_V_11_U", "Parent" : "0"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.alphas_0_padded_V_12_U", "Parent" : "0"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.alphas_0_padded_V_13_U", "Parent" : "0"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.alphas_0_padded_V_14_U", "Parent" : "0"},
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.alphas_0_padded_V_15_U", "Parent" : "0"},
	{"ID" : "33", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sv_norms_1_padded_V_s_U", "Parent" : "0"},
	{"ID" : "34", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sv_norms_1_padded_V_1_U", "Parent" : "0"},
	{"ID" : "35", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sv_norms_1_padded_V_2_U", "Parent" : "0"},
	{"ID" : "36", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sv_norms_1_padded_V_3_U", "Parent" : "0"},
	{"ID" : "37", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sv_norms_1_padded_V_4_U", "Parent" : "0"},
	{"ID" : "38", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sv_norms_1_padded_V_5_U", "Parent" : "0"},
	{"ID" : "39", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sv_norms_1_padded_V_6_U", "Parent" : "0"},
	{"ID" : "40", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sv_norms_1_padded_V_7_U", "Parent" : "0"},
	{"ID" : "41", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sv_norms_1_padded_V_8_U", "Parent" : "0"},
	{"ID" : "42", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sv_norms_1_padded_V_9_U", "Parent" : "0"},
	{"ID" : "43", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sv_norms_1_padded_V_10_U", "Parent" : "0"},
	{"ID" : "44", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sv_norms_1_padded_V_11_U", "Parent" : "0"},
	{"ID" : "45", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sv_norms_1_padded_V_12_U", "Parent" : "0"},
	{"ID" : "46", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sv_norms_1_padded_V_13_U", "Parent" : "0"},
	{"ID" : "47", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sv_norms_1_padded_V_14_U", "Parent" : "0"},
	{"ID" : "48", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sv_norms_1_padded_V_15_U", "Parent" : "0"},
	{"ID" : "49", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.alphas_1_padded_V_0_U", "Parent" : "0"},
	{"ID" : "50", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.alphas_1_padded_V_1_U", "Parent" : "0"},
	{"ID" : "51", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.alphas_1_padded_V_2_U", "Parent" : "0"},
	{"ID" : "52", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.alphas_1_padded_V_3_U", "Parent" : "0"},
	{"ID" : "53", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.alphas_1_padded_V_4_U", "Parent" : "0"},
	{"ID" : "54", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.alphas_1_padded_V_5_U", "Parent" : "0"},
	{"ID" : "55", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.alphas_1_padded_V_6_U", "Parent" : "0"},
	{"ID" : "56", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.alphas_1_padded_V_7_U", "Parent" : "0"},
	{"ID" : "57", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.alphas_1_padded_V_8_U", "Parent" : "0"},
	{"ID" : "58", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.alphas_1_padded_V_9_U", "Parent" : "0"},
	{"ID" : "59", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.alphas_1_padded_V_10_U", "Parent" : "0"},
	{"ID" : "60", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.alphas_1_padded_V_11_U", "Parent" : "0"},
	{"ID" : "61", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.alphas_1_padded_V_12_U", "Parent" : "0"},
	{"ID" : "62", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.alphas_1_padded_V_13_U", "Parent" : "0"},
	{"ID" : "63", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.alphas_1_padded_V_14_U", "Parent" : "0"},
	{"ID" : "64", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.alphas_1_padded_V_15_U", "Parent" : "0"},
	{"ID" : "65", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.svs_0_p800_V_0_U", "Parent" : "0"},
	{"ID" : "66", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.svs_0_p800_V_1_U", "Parent" : "0"},
	{"ID" : "67", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.svs_0_p800_V_2_U", "Parent" : "0"},
	{"ID" : "68", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.svs_0_p800_V_3_U", "Parent" : "0"},
	{"ID" : "69", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.svs_0_p800_V_4_U", "Parent" : "0"},
	{"ID" : "70", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.svs_0_p800_V_5_U", "Parent" : "0"},
	{"ID" : "71", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.svs_0_p800_V_6_U", "Parent" : "0"},
	{"ID" : "72", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.svs_0_p800_V_7_U", "Parent" : "0"},
	{"ID" : "73", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.svs_0_p800_V_8_U", "Parent" : "0"},
	{"ID" : "74", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.svs_0_p800_V_9_U", "Parent" : "0"},
	{"ID" : "75", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.svs_0_p800_V_10_U", "Parent" : "0"},
	{"ID" : "76", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.svs_0_p800_V_11_U", "Parent" : "0"},
	{"ID" : "77", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.svs_0_p800_V_12_U", "Parent" : "0"},
	{"ID" : "78", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.svs_0_p800_V_13_U", "Parent" : "0"},
	{"ID" : "79", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.svs_0_p800_V_14_U", "Parent" : "0"},
	{"ID" : "80", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.svs_0_p800_V_15_U", "Parent" : "0"},
	{"ID" : "81", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.svs_1_p800_V_0_U", "Parent" : "0"},
	{"ID" : "82", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.svs_1_p800_V_1_U", "Parent" : "0"},
	{"ID" : "83", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.svs_1_p800_V_2_U", "Parent" : "0"},
	{"ID" : "84", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.svs_1_p800_V_3_U", "Parent" : "0"},
	{"ID" : "85", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.svs_1_p800_V_4_U", "Parent" : "0"},
	{"ID" : "86", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.svs_1_p800_V_5_U", "Parent" : "0"},
	{"ID" : "87", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.svs_1_p800_V_6_U", "Parent" : "0"},
	{"ID" : "88", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.svs_1_p800_V_7_U", "Parent" : "0"},
	{"ID" : "89", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.svs_1_p800_V_8_U", "Parent" : "0"},
	{"ID" : "90", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.svs_1_p800_V_9_U", "Parent" : "0"},
	{"ID" : "91", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.svs_1_p800_V_10_U", "Parent" : "0"},
	{"ID" : "92", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.svs_1_p800_V_11_U", "Parent" : "0"},
	{"ID" : "93", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.svs_1_p800_V_12_U", "Parent" : "0"},
	{"ID" : "94", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.svs_1_p800_V_13_U", "Parent" : "0"},
	{"ID" : "95", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.svs_1_p800_V_14_U", "Parent" : "0"},
	{"ID" : "96", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.svs_1_p800_V_15_U", "Parent" : "0"},
	{"ID" : "97", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.EXP_LUT_V_U", "Parent" : "0"},
	{"ID" : "98", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.classify_mux_496_bMq_U176", "Parent" : "0"},
	{"ID" : "99", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.classify_mux_1632bNq_U177", "Parent" : "0"},
	{"ID" : "100", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.classify_mux_1632bOq_U178", "Parent" : "0"},
	{"ID" : "101", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.classify_mux_164_bPq_U179", "Parent" : "0"},
	{"ID" : "102", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.classify_mux_1632bNq_U180", "Parent" : "0"},
	{"ID" : "103", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.classify_mux_1632bOq_U181", "Parent" : "0"},
	{"ID" : "104", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.classify_mux_164_bPq_U182", "Parent" : "0"},
	{"ID" : "105", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.classify_mux_1632bNq_U183", "Parent" : "0"},
	{"ID" : "106", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.classify_mux_1632bOq_U184", "Parent" : "0"},
	{"ID" : "107", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.classify_mux_164_bPq_U185", "Parent" : "0"},
	{"ID" : "108", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.classify_mux_164_bPq_U186", "Parent" : "0"},
	{"ID" : "109", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.classify_mux_1632bNq_U187", "Parent" : "0"},
	{"ID" : "110", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.classify_mux_1632bOq_U188", "Parent" : "0"},
	{"ID" : "111", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.classify_mux_164_bPq_U189", "Parent" : "0"},
	{"ID" : "112", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.classify_mux_1632bNq_U190", "Parent" : "0"},
	{"ID" : "113", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.classify_mux_1632bOq_U191", "Parent" : "0"},
	{"ID" : "114", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.classify_mux_164_bPq_U192", "Parent" : "0"},
	{"ID" : "115", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.classify_mux_1632bNq_U193", "Parent" : "0"},
	{"ID" : "116", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.classify_mux_1632bOq_U194", "Parent" : "0"},
	{"ID" : "117", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.classify_mux_164_bPq_U195", "Parent" : "0"},
	{"ID" : "118", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.classify_mux_1632bNq_U196", "Parent" : "0"},
	{"ID" : "119", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.classify_mux_1632bOq_U197", "Parent" : "0"},
	{"ID" : "120", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.classify_mux_1632bNq_U198", "Parent" : "0"},
	{"ID" : "121", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.classify_mux_1632bOq_U199", "Parent" : "0"},
	{"ID" : "122", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.classify_mux_164_bPq_U200", "Parent" : "0"},
	{"ID" : "123", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.classify_mux_164_bPq_U201", "Parent" : "0"},
	{"ID" : "124", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.classify_mux_164_bPq_U202", "Parent" : "0"},
	{"ID" : "125", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.classify_mux_164_bPq_U203", "Parent" : "0"},
	{"ID" : "126", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.classify_mux_164_bPq_U204", "Parent" : "0"},
	{"ID" : "127", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.classify_mux_164_bPq_U205", "Parent" : "0"},
	{"ID" : "128", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.classify_mux_164_bPq_U206", "Parent" : "0"},
	{"ID" : "129", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.classify_mux_164_bPq_U207", "Parent" : "0"},
	{"ID" : "130", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.classify_mul_mul_bQq_U208", "Parent" : "0"},
	{"ID" : "131", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.classify_mul_mul_bQq_U209", "Parent" : "0"},
	{"ID" : "132", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.classify_mul_mul_bQq_U210", "Parent" : "0"},
	{"ID" : "133", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.classify_mul_mul_bQq_U211", "Parent" : "0"},
	{"ID" : "134", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.classify_mul_mul_bQq_U212", "Parent" : "0"},
	{"ID" : "135", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.classify_mul_mul_bQq_U213", "Parent" : "0"},
	{"ID" : "136", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.classify_mul_mul_bQq_U214", "Parent" : "0"},
	{"ID" : "137", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.classify_mac_mulabRq_U215", "Parent" : "0"},
	{"ID" : "138", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.classify_mac_mulabRq_U216", "Parent" : "0"},
	{"ID" : "139", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.classify_mac_mulabRq_U217", "Parent" : "0"},
	{"ID" : "140", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.classify_mul_mul_bQq_U218", "Parent" : "0"},
	{"ID" : "141", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.classify_mac_mulabRq_U219", "Parent" : "0"},
	{"ID" : "142", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.classify_mac_mulabRq_U220", "Parent" : "0"},
	{"ID" : "143", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.classify_mac_mulabRq_U221", "Parent" : "0"},
	{"ID" : "144", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.classify_mac_mulabRq_U222", "Parent" : "0"},
	{"ID" : "145", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.classify_mac_mulabRq_U223", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	compute_and_output {
		x_local_0_V {Type I LastRead 2 FirstWrite -1}
		x_local_1_V {Type I LastRead 2 FirstWrite -1}
		x_local_2_V {Type I LastRead 2 FirstWrite -1}
		x_local_3_V {Type I LastRead 2 FirstWrite -1}
		x_local_4_V {Type I LastRead 2 FirstWrite -1}
		x_local_5_V {Type I LastRead 2 FirstWrite -1}
		x_local_6_V {Type I LastRead 2 FirstWrite -1}
		x_local_7_V {Type I LastRead 2 FirstWrite -1}
		x_local_8_V {Type I LastRead 2 FirstWrite -1}
		x_local_9_V {Type I LastRead 2 FirstWrite -1}
		x_local_10_V {Type I LastRead 2 FirstWrite -1}
		x_local_11_V {Type I LastRead 2 FirstWrite -1}
		x_local_12_V {Type I LastRead 2 FirstWrite -1}
		x_local_13_V {Type I LastRead 2 FirstWrite -1}
		x_local_14_V {Type I LastRead 2 FirstWrite -1}
		x_local_15_V {Type I LastRead 2 FirstWrite -1}
		p_read {Type I LastRead 0 FirstWrite -1}
		active_groups_0_V_r {Type I LastRead 0 FirstWrite -1}
		active_groups_1_V_r {Type I LastRead 0 FirstWrite -1}
		active_groups_2_V_r {Type I LastRead 0 FirstWrite -1}
		active_groups_3_V_r {Type I LastRead 0 FirstWrite -1}
		active_groups_4_V_r {Type I LastRead 0 FirstWrite -1}
		active_groups_5_V_r {Type I LastRead 0 FirstWrite -1}
		active_groups_6_V_r {Type I LastRead 0 FirstWrite -1}
		active_groups_7_V_r {Type I LastRead 0 FirstWrite -1}
		active_groups_8_V_r {Type I LastRead 0 FirstWrite -1}
		active_groups_9_V_r {Type I LastRead 0 FirstWrite -1}
		active_groups_10_V_s {Type I LastRead 0 FirstWrite -1}
		active_groups_11_V_s {Type I LastRead 0 FirstWrite -1}
		active_groups_12_V_s {Type I LastRead 0 FirstWrite -1}
		active_groups_13_V_s {Type I LastRead 0 FirstWrite -1}
		active_groups_14_V_s {Type I LastRead 0 FirstWrite -1}
		active_groups_15_V_s {Type I LastRead 0 FirstWrite -1}
		active_groups_16_V_s {Type I LastRead 0 FirstWrite -1}
		active_groups_17_V_s {Type I LastRead 0 FirstWrite -1}
		active_groups_18_V_s {Type I LastRead 0 FirstWrite -1}
		active_groups_19_V_s {Type I LastRead 0 FirstWrite -1}
		active_groups_20_V_s {Type I LastRead 0 FirstWrite -1}
		active_groups_21_V_s {Type I LastRead 0 FirstWrite -1}
		active_groups_22_V_s {Type I LastRead 0 FirstWrite -1}
		active_groups_23_V_s {Type I LastRead 0 FirstWrite -1}
		active_groups_24_V_s {Type I LastRead 0 FirstWrite -1}
		active_groups_25_V_s {Type I LastRead 0 FirstWrite -1}
		active_groups_26_V_s {Type I LastRead 0 FirstWrite -1}
		active_groups_27_V_s {Type I LastRead 0 FirstWrite -1}
		active_groups_28_V_s {Type I LastRead 0 FirstWrite -1}
		active_groups_29_V_s {Type I LastRead 0 FirstWrite -1}
		active_groups_30_V_s {Type I LastRead 0 FirstWrite -1}
		active_groups_31_V_s {Type I LastRead 0 FirstWrite -1}
		active_groups_32_V_s {Type I LastRead 0 FirstWrite -1}
		active_groups_33_V_s {Type I LastRead 0 FirstWrite -1}
		active_groups_34_V_s {Type I LastRead 0 FirstWrite -1}
		active_groups_35_V_s {Type I LastRead 0 FirstWrite -1}
		active_groups_36_V_s {Type I LastRead 0 FirstWrite -1}
		active_groups_37_V_s {Type I LastRead 0 FirstWrite -1}
		active_groups_38_V_s {Type I LastRead 0 FirstWrite -1}
		active_groups_39_V_s {Type I LastRead 0 FirstWrite -1}
		active_groups_40_V_s {Type I LastRead 0 FirstWrite -1}
		active_groups_41_V_s {Type I LastRead 0 FirstWrite -1}
		active_groups_42_V_s {Type I LastRead 0 FirstWrite -1}
		active_groups_43_V_s {Type I LastRead 0 FirstWrite -1}
		active_groups_44_V_s {Type I LastRead 0 FirstWrite -1}
		active_groups_45_V_s {Type I LastRead 0 FirstWrite -1}
		active_groups_46_V_s {Type I LastRead 0 FirstWrite -1}
		active_groups_47_V_s {Type I LastRead 0 FirstWrite -1}
		active_groups_48_V_s {Type I LastRead 0 FirstWrite -1}
		p_read50 {Type I LastRead 0 FirstWrite -1}
		out_stream_V_data_V {Type O LastRead -1 FirstWrite 3}
		out_stream_V_keep_V {Type O LastRead -1 FirstWrite 3}
		out_stream_V_strb_V {Type O LastRead -1 FirstWrite 3}
		out_stream_V_last_V {Type O LastRead -1 FirstWrite 3}
		n {Type I LastRead 0 FirstWrite -1}
		num_images {Type I LastRead 0 FirstWrite -1}
		sv_norms_0_padded_V_s {Type I LastRead -1 FirstWrite -1}
		sv_norms_0_padded_V_1 {Type I LastRead -1 FirstWrite -1}
		sv_norms_0_padded_V_2 {Type I LastRead -1 FirstWrite -1}
		sv_norms_0_padded_V_3 {Type I LastRead -1 FirstWrite -1}
		sv_norms_0_padded_V_4 {Type I LastRead -1 FirstWrite -1}
		sv_norms_0_padded_V_5 {Type I LastRead -1 FirstWrite -1}
		sv_norms_0_padded_V_6 {Type I LastRead -1 FirstWrite -1}
		sv_norms_0_padded_V_7 {Type I LastRead -1 FirstWrite -1}
		sv_norms_0_padded_V_8 {Type I LastRead -1 FirstWrite -1}
		sv_norms_0_padded_V_9 {Type I LastRead -1 FirstWrite -1}
		sv_norms_0_padded_V_10 {Type I LastRead -1 FirstWrite -1}
		sv_norms_0_padded_V_11 {Type I LastRead -1 FirstWrite -1}
		sv_norms_0_padded_V_12 {Type I LastRead -1 FirstWrite -1}
		sv_norms_0_padded_V_13 {Type I LastRead -1 FirstWrite -1}
		sv_norms_0_padded_V_14 {Type I LastRead -1 FirstWrite -1}
		sv_norms_0_padded_V_15 {Type I LastRead -1 FirstWrite -1}
		alphas_0_padded_V_0 {Type I LastRead -1 FirstWrite -1}
		alphas_0_padded_V_1 {Type I LastRead -1 FirstWrite -1}
		alphas_0_padded_V_2 {Type I LastRead -1 FirstWrite -1}
		alphas_0_padded_V_3 {Type I LastRead -1 FirstWrite -1}
		alphas_0_padded_V_4 {Type I LastRead -1 FirstWrite -1}
		alphas_0_padded_V_5 {Type I LastRead -1 FirstWrite -1}
		alphas_0_padded_V_6 {Type I LastRead -1 FirstWrite -1}
		alphas_0_padded_V_7 {Type I LastRead -1 FirstWrite -1}
		alphas_0_padded_V_8 {Type I LastRead -1 FirstWrite -1}
		alphas_0_padded_V_9 {Type I LastRead -1 FirstWrite -1}
		alphas_0_padded_V_10 {Type I LastRead -1 FirstWrite -1}
		alphas_0_padded_V_11 {Type I LastRead -1 FirstWrite -1}
		alphas_0_padded_V_12 {Type I LastRead -1 FirstWrite -1}
		alphas_0_padded_V_13 {Type I LastRead -1 FirstWrite -1}
		alphas_0_padded_V_14 {Type I LastRead -1 FirstWrite -1}
		alphas_0_padded_V_15 {Type I LastRead -1 FirstWrite -1}
		sv_norms_1_padded_V_s {Type I LastRead -1 FirstWrite -1}
		sv_norms_1_padded_V_1 {Type I LastRead -1 FirstWrite -1}
		sv_norms_1_padded_V_2 {Type I LastRead -1 FirstWrite -1}
		sv_norms_1_padded_V_3 {Type I LastRead -1 FirstWrite -1}
		sv_norms_1_padded_V_4 {Type I LastRead -1 FirstWrite -1}
		sv_norms_1_padded_V_5 {Type I LastRead -1 FirstWrite -1}
		sv_norms_1_padded_V_6 {Type I LastRead -1 FirstWrite -1}
		sv_norms_1_padded_V_7 {Type I LastRead -1 FirstWrite -1}
		sv_norms_1_padded_V_8 {Type I LastRead -1 FirstWrite -1}
		sv_norms_1_padded_V_9 {Type I LastRead -1 FirstWrite -1}
		sv_norms_1_padded_V_10 {Type I LastRead -1 FirstWrite -1}
		sv_norms_1_padded_V_11 {Type I LastRead -1 FirstWrite -1}
		sv_norms_1_padded_V_12 {Type I LastRead -1 FirstWrite -1}
		sv_norms_1_padded_V_13 {Type I LastRead -1 FirstWrite -1}
		sv_norms_1_padded_V_14 {Type I LastRead -1 FirstWrite -1}
		sv_norms_1_padded_V_15 {Type I LastRead -1 FirstWrite -1}
		alphas_1_padded_V_0 {Type I LastRead -1 FirstWrite -1}
		alphas_1_padded_V_1 {Type I LastRead -1 FirstWrite -1}
		alphas_1_padded_V_2 {Type I LastRead -1 FirstWrite -1}
		alphas_1_padded_V_3 {Type I LastRead -1 FirstWrite -1}
		alphas_1_padded_V_4 {Type I LastRead -1 FirstWrite -1}
		alphas_1_padded_V_5 {Type I LastRead -1 FirstWrite -1}
		alphas_1_padded_V_6 {Type I LastRead -1 FirstWrite -1}
		alphas_1_padded_V_7 {Type I LastRead -1 FirstWrite -1}
		alphas_1_padded_V_8 {Type I LastRead -1 FirstWrite -1}
		alphas_1_padded_V_9 {Type I LastRead -1 FirstWrite -1}
		alphas_1_padded_V_10 {Type I LastRead -1 FirstWrite -1}
		alphas_1_padded_V_11 {Type I LastRead -1 FirstWrite -1}
		alphas_1_padded_V_12 {Type I LastRead -1 FirstWrite -1}
		alphas_1_padded_V_13 {Type I LastRead -1 FirstWrite -1}
		alphas_1_padded_V_14 {Type I LastRead -1 FirstWrite -1}
		alphas_1_padded_V_15 {Type I LastRead -1 FirstWrite -1}
		svs_0_p800_V_0 {Type I LastRead -1 FirstWrite -1}
		svs_0_p800_V_1 {Type I LastRead -1 FirstWrite -1}
		svs_0_p800_V_2 {Type I LastRead -1 FirstWrite -1}
		svs_0_p800_V_3 {Type I LastRead -1 FirstWrite -1}
		svs_0_p800_V_4 {Type I LastRead -1 FirstWrite -1}
		svs_0_p800_V_5 {Type I LastRead -1 FirstWrite -1}
		svs_0_p800_V_6 {Type I LastRead -1 FirstWrite -1}
		svs_0_p800_V_7 {Type I LastRead -1 FirstWrite -1}
		svs_0_p800_V_8 {Type I LastRead -1 FirstWrite -1}
		svs_0_p800_V_9 {Type I LastRead -1 FirstWrite -1}
		svs_0_p800_V_10 {Type I LastRead -1 FirstWrite -1}
		svs_0_p800_V_11 {Type I LastRead -1 FirstWrite -1}
		svs_0_p800_V_12 {Type I LastRead -1 FirstWrite -1}
		svs_0_p800_V_13 {Type I LastRead -1 FirstWrite -1}
		svs_0_p800_V_14 {Type I LastRead -1 FirstWrite -1}
		svs_0_p800_V_15 {Type I LastRead -1 FirstWrite -1}
		svs_1_p800_V_0 {Type I LastRead -1 FirstWrite -1}
		svs_1_p800_V_1 {Type I LastRead -1 FirstWrite -1}
		svs_1_p800_V_2 {Type I LastRead -1 FirstWrite -1}
		svs_1_p800_V_3 {Type I LastRead -1 FirstWrite -1}
		svs_1_p800_V_4 {Type I LastRead -1 FirstWrite -1}
		svs_1_p800_V_5 {Type I LastRead -1 FirstWrite -1}
		svs_1_p800_V_6 {Type I LastRead -1 FirstWrite -1}
		svs_1_p800_V_7 {Type I LastRead -1 FirstWrite -1}
		svs_1_p800_V_8 {Type I LastRead -1 FirstWrite -1}
		svs_1_p800_V_9 {Type I LastRead -1 FirstWrite -1}
		svs_1_p800_V_10 {Type I LastRead -1 FirstWrite -1}
		svs_1_p800_V_11 {Type I LastRead -1 FirstWrite -1}
		svs_1_p800_V_12 {Type I LastRead -1 FirstWrite -1}
		svs_1_p800_V_13 {Type I LastRead -1 FirstWrite -1}
		svs_1_p800_V_14 {Type I LastRead -1 FirstWrite -1}
		svs_1_p800_V_15 {Type I LastRead -1 FirstWrite -1}
		EXP_LUT_V {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "118", "Max" : "406"}
	, {"Name" : "Interval", "Min" : "118", "Max" : "406"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
	{"Pipeline" : "1", "EnableSignal" : "ap_enable_pp1"}
]}

set Spec2ImplPortList { 
	x_local_0_V { ap_memory {  { x_local_0_V_address0 mem_address 1 6 }  { x_local_0_V_ce0 mem_ce 1 1 }  { x_local_0_V_q0 mem_dout 0 8 } } }
	x_local_1_V { ap_memory {  { x_local_1_V_address0 mem_address 1 6 }  { x_local_1_V_ce0 mem_ce 1 1 }  { x_local_1_V_q0 mem_dout 0 8 } } }
	x_local_2_V { ap_memory {  { x_local_2_V_address0 mem_address 1 6 }  { x_local_2_V_ce0 mem_ce 1 1 }  { x_local_2_V_q0 mem_dout 0 8 } } }
	x_local_3_V { ap_memory {  { x_local_3_V_address0 mem_address 1 6 }  { x_local_3_V_ce0 mem_ce 1 1 }  { x_local_3_V_q0 mem_dout 0 8 } } }
	x_local_4_V { ap_memory {  { x_local_4_V_address0 mem_address 1 6 }  { x_local_4_V_ce0 mem_ce 1 1 }  { x_local_4_V_q0 mem_dout 0 8 } } }
	x_local_5_V { ap_memory {  { x_local_5_V_address0 mem_address 1 6 }  { x_local_5_V_ce0 mem_ce 1 1 }  { x_local_5_V_q0 mem_dout 0 8 } } }
	x_local_6_V { ap_memory {  { x_local_6_V_address0 mem_address 1 6 }  { x_local_6_V_ce0 mem_ce 1 1 }  { x_local_6_V_q0 mem_dout 0 8 } } }
	x_local_7_V { ap_memory {  { x_local_7_V_address0 mem_address 1 6 }  { x_local_7_V_ce0 mem_ce 1 1 }  { x_local_7_V_q0 mem_dout 0 8 } } }
	x_local_8_V { ap_memory {  { x_local_8_V_address0 mem_address 1 6 }  { x_local_8_V_ce0 mem_ce 1 1 }  { x_local_8_V_q0 mem_dout 0 8 } } }
	x_local_9_V { ap_memory {  { x_local_9_V_address0 mem_address 1 6 }  { x_local_9_V_ce0 mem_ce 1 1 }  { x_local_9_V_q0 mem_dout 0 8 } } }
	x_local_10_V { ap_memory {  { x_local_10_V_address0 mem_address 1 6 }  { x_local_10_V_ce0 mem_ce 1 1 }  { x_local_10_V_q0 mem_dout 0 8 } } }
	x_local_11_V { ap_memory {  { x_local_11_V_address0 mem_address 1 6 }  { x_local_11_V_ce0 mem_ce 1 1 }  { x_local_11_V_q0 mem_dout 0 8 } } }
	x_local_12_V { ap_memory {  { x_local_12_V_address0 mem_address 1 6 }  { x_local_12_V_ce0 mem_ce 1 1 }  { x_local_12_V_q0 mem_dout 0 8 } } }
	x_local_13_V { ap_memory {  { x_local_13_V_address0 mem_address 1 6 }  { x_local_13_V_ce0 mem_ce 1 1 }  { x_local_13_V_q0 mem_dout 0 8 } } }
	x_local_14_V { ap_memory {  { x_local_14_V_address0 mem_address 1 6 }  { x_local_14_V_ce0 mem_ce 1 1 }  { x_local_14_V_q0 mem_dout 0 8 } } }
	x_local_15_V { ap_memory {  { x_local_15_V_address0 mem_address 1 6 }  { x_local_15_V_ce0 mem_ce 1 1 }  { x_local_15_V_q0 mem_dout 0 8 } } }
	p_read { ap_none {  { p_read in_data 0 24 } } }
	active_groups_0_V_r { ap_none {  { active_groups_0_V_r in_data 0 6 } } }
	active_groups_1_V_r { ap_none {  { active_groups_1_V_r in_data 0 6 } } }
	active_groups_2_V_r { ap_none {  { active_groups_2_V_r in_data 0 6 } } }
	active_groups_3_V_r { ap_none {  { active_groups_3_V_r in_data 0 6 } } }
	active_groups_4_V_r { ap_none {  { active_groups_4_V_r in_data 0 6 } } }
	active_groups_5_V_r { ap_none {  { active_groups_5_V_r in_data 0 6 } } }
	active_groups_6_V_r { ap_none {  { active_groups_6_V_r in_data 0 6 } } }
	active_groups_7_V_r { ap_none {  { active_groups_7_V_r in_data 0 6 } } }
	active_groups_8_V_r { ap_none {  { active_groups_8_V_r in_data 0 6 } } }
	active_groups_9_V_r { ap_none {  { active_groups_9_V_r in_data 0 6 } } }
	active_groups_10_V_s { ap_none {  { active_groups_10_V_s in_data 0 6 } } }
	active_groups_11_V_s { ap_none {  { active_groups_11_V_s in_data 0 6 } } }
	active_groups_12_V_s { ap_none {  { active_groups_12_V_s in_data 0 6 } } }
	active_groups_13_V_s { ap_none {  { active_groups_13_V_s in_data 0 6 } } }
	active_groups_14_V_s { ap_none {  { active_groups_14_V_s in_data 0 6 } } }
	active_groups_15_V_s { ap_none {  { active_groups_15_V_s in_data 0 6 } } }
	active_groups_16_V_s { ap_none {  { active_groups_16_V_s in_data 0 6 } } }
	active_groups_17_V_s { ap_none {  { active_groups_17_V_s in_data 0 6 } } }
	active_groups_18_V_s { ap_none {  { active_groups_18_V_s in_data 0 6 } } }
	active_groups_19_V_s { ap_none {  { active_groups_19_V_s in_data 0 6 } } }
	active_groups_20_V_s { ap_none {  { active_groups_20_V_s in_data 0 6 } } }
	active_groups_21_V_s { ap_none {  { active_groups_21_V_s in_data 0 6 } } }
	active_groups_22_V_s { ap_none {  { active_groups_22_V_s in_data 0 6 } } }
	active_groups_23_V_s { ap_none {  { active_groups_23_V_s in_data 0 6 } } }
	active_groups_24_V_s { ap_none {  { active_groups_24_V_s in_data 0 6 } } }
	active_groups_25_V_s { ap_none {  { active_groups_25_V_s in_data 0 6 } } }
	active_groups_26_V_s { ap_none {  { active_groups_26_V_s in_data 0 6 } } }
	active_groups_27_V_s { ap_none {  { active_groups_27_V_s in_data 0 6 } } }
	active_groups_28_V_s { ap_none {  { active_groups_28_V_s in_data 0 6 } } }
	active_groups_29_V_s { ap_none {  { active_groups_29_V_s in_data 0 6 } } }
	active_groups_30_V_s { ap_none {  { active_groups_30_V_s in_data 0 6 } } }
	active_groups_31_V_s { ap_none {  { active_groups_31_V_s in_data 0 6 } } }
	active_groups_32_V_s { ap_none {  { active_groups_32_V_s in_data 0 6 } } }
	active_groups_33_V_s { ap_none {  { active_groups_33_V_s in_data 0 6 } } }
	active_groups_34_V_s { ap_none {  { active_groups_34_V_s in_data 0 6 } } }
	active_groups_35_V_s { ap_none {  { active_groups_35_V_s in_data 0 6 } } }
	active_groups_36_V_s { ap_none {  { active_groups_36_V_s in_data 0 6 } } }
	active_groups_37_V_s { ap_none {  { active_groups_37_V_s in_data 0 6 } } }
	active_groups_38_V_s { ap_none {  { active_groups_38_V_s in_data 0 6 } } }
	active_groups_39_V_s { ap_none {  { active_groups_39_V_s in_data 0 6 } } }
	active_groups_40_V_s { ap_none {  { active_groups_40_V_s in_data 0 6 } } }
	active_groups_41_V_s { ap_none {  { active_groups_41_V_s in_data 0 6 } } }
	active_groups_42_V_s { ap_none {  { active_groups_42_V_s in_data 0 6 } } }
	active_groups_43_V_s { ap_none {  { active_groups_43_V_s in_data 0 6 } } }
	active_groups_44_V_s { ap_none {  { active_groups_44_V_s in_data 0 6 } } }
	active_groups_45_V_s { ap_none {  { active_groups_45_V_s in_data 0 6 } } }
	active_groups_46_V_s { ap_none {  { active_groups_46_V_s in_data 0 6 } } }
	active_groups_47_V_s { ap_none {  { active_groups_47_V_s in_data 0 6 } } }
	active_groups_48_V_s { ap_none {  { active_groups_48_V_s in_data 0 6 } } }
	p_read50 { ap_none {  { p_read50 in_data 0 6 } } }
	out_stream_V_data_V { axis {  { out_stream_TDATA out_data 1 32 } } }
	out_stream_V_keep_V { axis {  { out_stream_TKEEP out_data 1 1 } } }
	out_stream_V_strb_V { axis {  { out_stream_TSTRB out_data 1 1 } } }
	out_stream_V_last_V { axis {  { out_stream_TVALID out_vld 1 1 }  { out_stream_TREADY out_acc 0 1 }  { out_stream_TLAST out_data 1 1 } } }
	n { ap_fifo {  { n_dout fifo_data 0 31 }  { n_empty_n fifo_status 0 1 }  { n_read fifo_update 1 1 } } }
	num_images { ap_fifo {  { num_images_dout fifo_data 0 32 }  { num_images_empty_n fifo_status 0 1 }  { num_images_read fifo_update 1 1 } } }
}
