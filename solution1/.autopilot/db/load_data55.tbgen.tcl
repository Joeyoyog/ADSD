set moduleName load_data55
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
set C_modelName {load_data55}
set C_modelType { void 0 }
set C_modelArgList {
	{ in_stream_V_data_V int 64 regular {axi_s 0 volatile  { in_stream Data } }  }
	{ in_stream_V_keep_V int 8 regular {axi_s 0 volatile  { in_stream Keep } }  }
	{ in_stream_V_strb_V int 8 regular {axi_s 0 volatile  { in_stream Strb } }  }
	{ in_stream_V_user_V int 1 regular {axi_s 0 volatile  { in_stream User } }  }
	{ in_stream_V_last_V int 1 regular {axi_s 0 volatile  { in_stream Last } }  }
	{ in_stream_V_id_V int 1 regular {axi_s 0 volatile  { in_stream ID } }  }
	{ in_stream_V_dest_V int 1 regular {axi_s 0 volatile  { in_stream Dest } }  }
	{ x_local_0_V int 8 regular {array 49 { 0 3 } 0 1 }  }
	{ x_local_1_V int 8 regular {array 49 { 0 3 } 0 1 }  }
	{ x_local_2_V int 8 regular {array 49 { 0 3 } 0 1 }  }
	{ x_local_3_V int 8 regular {array 49 { 0 3 } 0 1 }  }
	{ x_local_4_V int 8 regular {array 49 { 0 3 } 0 1 }  }
	{ x_local_5_V int 8 regular {array 49 { 0 3 } 0 1 }  }
	{ x_local_6_V int 8 regular {array 49 { 0 3 } 0 1 }  }
	{ x_local_7_V int 8 regular {array 49 { 0 3 } 0 1 }  }
	{ x_local_8_V int 8 regular {array 49 { 0 3 } 0 1 }  }
	{ x_local_9_V int 8 regular {array 49 { 0 3 } 0 1 }  }
	{ x_local_10_V int 8 regular {array 49 { 0 3 } 0 1 }  }
	{ x_local_11_V int 8 regular {array 49 { 0 3 } 0 1 }  }
	{ x_local_12_V int 8 regular {array 49 { 0 3 } 0 1 }  }
	{ x_local_13_V int 8 regular {array 49 { 0 3 } 0 1 }  }
	{ x_local_14_V int 8 regular {array 49 { 0 3 } 0 1 }  }
	{ x_local_15_V int 8 regular {array 49 { 0 3 } 0 1 }  }
	{ x_norm_in_V int 24 regular  }
	{ x_norm_in_V_out int 24 regular {fifo 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "in_stream_V_data_V", "interface" : "axis", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "in_stream_V_keep_V", "interface" : "axis", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "in_stream_V_strb_V", "interface" : "axis", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "in_stream_V_user_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "in_stream_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "in_stream_V_id_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "in_stream_V_dest_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "x_local_0_V", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "x_local_1_V", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "x_local_2_V", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "x_local_3_V", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "x_local_4_V", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "x_local_5_V", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "x_local_6_V", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "x_local_7_V", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "x_local_8_V", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "x_local_9_V", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "x_local_10_V", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "x_local_11_V", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "x_local_12_V", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "x_local_13_V", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "x_local_14_V", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "x_local_15_V", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "x_norm_in_V", "interface" : "wire", "bitwidth" : 24, "direction" : "READONLY"} , 
 	{ "Name" : "x_norm_in_V_out", "interface" : "fifo", "bitwidth" : 24, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 84
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ in_stream_TDATA sc_in sc_lv 64 signal 0 } 
	{ in_stream_TVALID sc_in sc_logic 1 invld 6 } 
	{ in_stream_TREADY sc_out sc_logic 1 inacc 6 } 
	{ in_stream_TKEEP sc_in sc_lv 8 signal 1 } 
	{ in_stream_TSTRB sc_in sc_lv 8 signal 2 } 
	{ in_stream_TUSER sc_in sc_lv 1 signal 3 } 
	{ in_stream_TLAST sc_in sc_lv 1 signal 4 } 
	{ in_stream_TID sc_in sc_lv 1 signal 5 } 
	{ in_stream_TDEST sc_in sc_lv 1 signal 6 } 
	{ x_local_0_V_address0 sc_out sc_lv 6 signal 7 } 
	{ x_local_0_V_ce0 sc_out sc_logic 1 signal 7 } 
	{ x_local_0_V_we0 sc_out sc_logic 1 signal 7 } 
	{ x_local_0_V_d0 sc_out sc_lv 8 signal 7 } 
	{ x_local_1_V_address0 sc_out sc_lv 6 signal 8 } 
	{ x_local_1_V_ce0 sc_out sc_logic 1 signal 8 } 
	{ x_local_1_V_we0 sc_out sc_logic 1 signal 8 } 
	{ x_local_1_V_d0 sc_out sc_lv 8 signal 8 } 
	{ x_local_2_V_address0 sc_out sc_lv 6 signal 9 } 
	{ x_local_2_V_ce0 sc_out sc_logic 1 signal 9 } 
	{ x_local_2_V_we0 sc_out sc_logic 1 signal 9 } 
	{ x_local_2_V_d0 sc_out sc_lv 8 signal 9 } 
	{ x_local_3_V_address0 sc_out sc_lv 6 signal 10 } 
	{ x_local_3_V_ce0 sc_out sc_logic 1 signal 10 } 
	{ x_local_3_V_we0 sc_out sc_logic 1 signal 10 } 
	{ x_local_3_V_d0 sc_out sc_lv 8 signal 10 } 
	{ x_local_4_V_address0 sc_out sc_lv 6 signal 11 } 
	{ x_local_4_V_ce0 sc_out sc_logic 1 signal 11 } 
	{ x_local_4_V_we0 sc_out sc_logic 1 signal 11 } 
	{ x_local_4_V_d0 sc_out sc_lv 8 signal 11 } 
	{ x_local_5_V_address0 sc_out sc_lv 6 signal 12 } 
	{ x_local_5_V_ce0 sc_out sc_logic 1 signal 12 } 
	{ x_local_5_V_we0 sc_out sc_logic 1 signal 12 } 
	{ x_local_5_V_d0 sc_out sc_lv 8 signal 12 } 
	{ x_local_6_V_address0 sc_out sc_lv 6 signal 13 } 
	{ x_local_6_V_ce0 sc_out sc_logic 1 signal 13 } 
	{ x_local_6_V_we0 sc_out sc_logic 1 signal 13 } 
	{ x_local_6_V_d0 sc_out sc_lv 8 signal 13 } 
	{ x_local_7_V_address0 sc_out sc_lv 6 signal 14 } 
	{ x_local_7_V_ce0 sc_out sc_logic 1 signal 14 } 
	{ x_local_7_V_we0 sc_out sc_logic 1 signal 14 } 
	{ x_local_7_V_d0 sc_out sc_lv 8 signal 14 } 
	{ x_local_8_V_address0 sc_out sc_lv 6 signal 15 } 
	{ x_local_8_V_ce0 sc_out sc_logic 1 signal 15 } 
	{ x_local_8_V_we0 sc_out sc_logic 1 signal 15 } 
	{ x_local_8_V_d0 sc_out sc_lv 8 signal 15 } 
	{ x_local_9_V_address0 sc_out sc_lv 6 signal 16 } 
	{ x_local_9_V_ce0 sc_out sc_logic 1 signal 16 } 
	{ x_local_9_V_we0 sc_out sc_logic 1 signal 16 } 
	{ x_local_9_V_d0 sc_out sc_lv 8 signal 16 } 
	{ x_local_10_V_address0 sc_out sc_lv 6 signal 17 } 
	{ x_local_10_V_ce0 sc_out sc_logic 1 signal 17 } 
	{ x_local_10_V_we0 sc_out sc_logic 1 signal 17 } 
	{ x_local_10_V_d0 sc_out sc_lv 8 signal 17 } 
	{ x_local_11_V_address0 sc_out sc_lv 6 signal 18 } 
	{ x_local_11_V_ce0 sc_out sc_logic 1 signal 18 } 
	{ x_local_11_V_we0 sc_out sc_logic 1 signal 18 } 
	{ x_local_11_V_d0 sc_out sc_lv 8 signal 18 } 
	{ x_local_12_V_address0 sc_out sc_lv 6 signal 19 } 
	{ x_local_12_V_ce0 sc_out sc_logic 1 signal 19 } 
	{ x_local_12_V_we0 sc_out sc_logic 1 signal 19 } 
	{ x_local_12_V_d0 sc_out sc_lv 8 signal 19 } 
	{ x_local_13_V_address0 sc_out sc_lv 6 signal 20 } 
	{ x_local_13_V_ce0 sc_out sc_logic 1 signal 20 } 
	{ x_local_13_V_we0 sc_out sc_logic 1 signal 20 } 
	{ x_local_13_V_d0 sc_out sc_lv 8 signal 20 } 
	{ x_local_14_V_address0 sc_out sc_lv 6 signal 21 } 
	{ x_local_14_V_ce0 sc_out sc_logic 1 signal 21 } 
	{ x_local_14_V_we0 sc_out sc_logic 1 signal 21 } 
	{ x_local_14_V_d0 sc_out sc_lv 8 signal 21 } 
	{ x_local_15_V_address0 sc_out sc_lv 6 signal 22 } 
	{ x_local_15_V_ce0 sc_out sc_logic 1 signal 22 } 
	{ x_local_15_V_we0 sc_out sc_logic 1 signal 22 } 
	{ x_local_15_V_d0 sc_out sc_lv 8 signal 22 } 
	{ x_norm_in_V sc_in sc_lv 24 signal 23 } 
	{ x_norm_in_V_out_din sc_out sc_lv 24 signal 24 } 
	{ x_norm_in_V_out_full_n sc_in sc_logic 1 signal 24 } 
	{ x_norm_in_V_out_write sc_out sc_logic 1 signal 24 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "in_stream_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "in_stream_V_data_V", "role": "default" }} , 
 	{ "name": "in_stream_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "in_stream_V_dest_V", "role": "default" }} , 
 	{ "name": "in_stream_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "in_stream_V_dest_V", "role": "default" }} , 
 	{ "name": "in_stream_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "in_stream_V_keep_V", "role": "default" }} , 
 	{ "name": "in_stream_TSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "in_stream_V_strb_V", "role": "default" }} , 
 	{ "name": "in_stream_TUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "in_stream_V_user_V", "role": "default" }} , 
 	{ "name": "in_stream_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "in_stream_V_last_V", "role": "default" }} , 
 	{ "name": "in_stream_TID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "in_stream_V_id_V", "role": "default" }} , 
 	{ "name": "in_stream_TDEST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "in_stream_V_dest_V", "role": "default" }} , 
 	{ "name": "x_local_0_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "x_local_0_V", "role": "address0" }} , 
 	{ "name": "x_local_0_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_local_0_V", "role": "ce0" }} , 
 	{ "name": "x_local_0_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_local_0_V", "role": "we0" }} , 
 	{ "name": "x_local_0_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "x_local_0_V", "role": "d0" }} , 
 	{ "name": "x_local_1_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "x_local_1_V", "role": "address0" }} , 
 	{ "name": "x_local_1_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_local_1_V", "role": "ce0" }} , 
 	{ "name": "x_local_1_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_local_1_V", "role": "we0" }} , 
 	{ "name": "x_local_1_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "x_local_1_V", "role": "d0" }} , 
 	{ "name": "x_local_2_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "x_local_2_V", "role": "address0" }} , 
 	{ "name": "x_local_2_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_local_2_V", "role": "ce0" }} , 
 	{ "name": "x_local_2_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_local_2_V", "role": "we0" }} , 
 	{ "name": "x_local_2_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "x_local_2_V", "role": "d0" }} , 
 	{ "name": "x_local_3_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "x_local_3_V", "role": "address0" }} , 
 	{ "name": "x_local_3_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_local_3_V", "role": "ce0" }} , 
 	{ "name": "x_local_3_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_local_3_V", "role": "we0" }} , 
 	{ "name": "x_local_3_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "x_local_3_V", "role": "d0" }} , 
 	{ "name": "x_local_4_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "x_local_4_V", "role": "address0" }} , 
 	{ "name": "x_local_4_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_local_4_V", "role": "ce0" }} , 
 	{ "name": "x_local_4_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_local_4_V", "role": "we0" }} , 
 	{ "name": "x_local_4_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "x_local_4_V", "role": "d0" }} , 
 	{ "name": "x_local_5_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "x_local_5_V", "role": "address0" }} , 
 	{ "name": "x_local_5_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_local_5_V", "role": "ce0" }} , 
 	{ "name": "x_local_5_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_local_5_V", "role": "we0" }} , 
 	{ "name": "x_local_5_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "x_local_5_V", "role": "d0" }} , 
 	{ "name": "x_local_6_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "x_local_6_V", "role": "address0" }} , 
 	{ "name": "x_local_6_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_local_6_V", "role": "ce0" }} , 
 	{ "name": "x_local_6_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_local_6_V", "role": "we0" }} , 
 	{ "name": "x_local_6_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "x_local_6_V", "role": "d0" }} , 
 	{ "name": "x_local_7_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "x_local_7_V", "role": "address0" }} , 
 	{ "name": "x_local_7_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_local_7_V", "role": "ce0" }} , 
 	{ "name": "x_local_7_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_local_7_V", "role": "we0" }} , 
 	{ "name": "x_local_7_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "x_local_7_V", "role": "d0" }} , 
 	{ "name": "x_local_8_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "x_local_8_V", "role": "address0" }} , 
 	{ "name": "x_local_8_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_local_8_V", "role": "ce0" }} , 
 	{ "name": "x_local_8_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_local_8_V", "role": "we0" }} , 
 	{ "name": "x_local_8_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "x_local_8_V", "role": "d0" }} , 
 	{ "name": "x_local_9_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "x_local_9_V", "role": "address0" }} , 
 	{ "name": "x_local_9_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_local_9_V", "role": "ce0" }} , 
 	{ "name": "x_local_9_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_local_9_V", "role": "we0" }} , 
 	{ "name": "x_local_9_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "x_local_9_V", "role": "d0" }} , 
 	{ "name": "x_local_10_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "x_local_10_V", "role": "address0" }} , 
 	{ "name": "x_local_10_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_local_10_V", "role": "ce0" }} , 
 	{ "name": "x_local_10_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_local_10_V", "role": "we0" }} , 
 	{ "name": "x_local_10_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "x_local_10_V", "role": "d0" }} , 
 	{ "name": "x_local_11_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "x_local_11_V", "role": "address0" }} , 
 	{ "name": "x_local_11_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_local_11_V", "role": "ce0" }} , 
 	{ "name": "x_local_11_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_local_11_V", "role": "we0" }} , 
 	{ "name": "x_local_11_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "x_local_11_V", "role": "d0" }} , 
 	{ "name": "x_local_12_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "x_local_12_V", "role": "address0" }} , 
 	{ "name": "x_local_12_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_local_12_V", "role": "ce0" }} , 
 	{ "name": "x_local_12_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_local_12_V", "role": "we0" }} , 
 	{ "name": "x_local_12_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "x_local_12_V", "role": "d0" }} , 
 	{ "name": "x_local_13_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "x_local_13_V", "role": "address0" }} , 
 	{ "name": "x_local_13_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_local_13_V", "role": "ce0" }} , 
 	{ "name": "x_local_13_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_local_13_V", "role": "we0" }} , 
 	{ "name": "x_local_13_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "x_local_13_V", "role": "d0" }} , 
 	{ "name": "x_local_14_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "x_local_14_V", "role": "address0" }} , 
 	{ "name": "x_local_14_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_local_14_V", "role": "ce0" }} , 
 	{ "name": "x_local_14_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_local_14_V", "role": "we0" }} , 
 	{ "name": "x_local_14_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "x_local_14_V", "role": "d0" }} , 
 	{ "name": "x_local_15_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "x_local_15_V", "role": "address0" }} , 
 	{ "name": "x_local_15_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_local_15_V", "role": "ce0" }} , 
 	{ "name": "x_local_15_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_local_15_V", "role": "we0" }} , 
 	{ "name": "x_local_15_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "x_local_15_V", "role": "d0" }} , 
 	{ "name": "x_norm_in_V", "direction": "in", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "x_norm_in_V", "role": "default" }} , 
 	{ "name": "x_norm_in_V_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "x_norm_in_V_out", "role": "din" }} , 
 	{ "name": "x_norm_in_V_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_norm_in_V_out", "role": "full_n" }} , 
 	{ "name": "x_norm_in_V_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_norm_in_V_out", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "load_data55",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "100", "EstimateLatencyMax" : "100",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "in_stream_V_data_V", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "in_stream_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "in_stream_V_keep_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "in_stream_V_strb_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "in_stream_V_user_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "in_stream_V_last_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "in_stream_V_id_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "in_stream_V_dest_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "x_local_0_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "x_local_1_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "x_local_2_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "x_local_3_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "x_local_4_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "x_local_5_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "x_local_6_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "x_local_7_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "x_local_8_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "x_local_9_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "x_local_10_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "x_local_11_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "x_local_12_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "x_local_13_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "x_local_14_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "x_local_15_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "x_norm_in_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_norm_in_V_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "x_norm_in_V_out_blk_n", "Type" : "RtlSignal"}]}]}]}


set ArgLastReadFirstWriteLatency {
	load_data55 {
		in_stream_V_data_V {Type I LastRead 1 FirstWrite -1}
		in_stream_V_keep_V {Type I LastRead 1 FirstWrite -1}
		in_stream_V_strb_V {Type I LastRead 1 FirstWrite -1}
		in_stream_V_user_V {Type I LastRead 1 FirstWrite -1}
		in_stream_V_last_V {Type I LastRead 1 FirstWrite -1}
		in_stream_V_id_V {Type I LastRead 1 FirstWrite -1}
		in_stream_V_dest_V {Type I LastRead 1 FirstWrite -1}
		x_local_0_V {Type O LastRead -1 FirstWrite 2}
		x_local_1_V {Type O LastRead -1 FirstWrite 2}
		x_local_2_V {Type O LastRead -1 FirstWrite 2}
		x_local_3_V {Type O LastRead -1 FirstWrite 2}
		x_local_4_V {Type O LastRead -1 FirstWrite 2}
		x_local_5_V {Type O LastRead -1 FirstWrite 2}
		x_local_6_V {Type O LastRead -1 FirstWrite 2}
		x_local_7_V {Type O LastRead -1 FirstWrite 2}
		x_local_8_V {Type O LastRead -1 FirstWrite 2}
		x_local_9_V {Type O LastRead -1 FirstWrite 2}
		x_local_10_V {Type O LastRead -1 FirstWrite 2}
		x_local_11_V {Type O LastRead -1 FirstWrite 2}
		x_local_12_V {Type O LastRead -1 FirstWrite 2}
		x_local_13_V {Type O LastRead -1 FirstWrite 2}
		x_local_14_V {Type O LastRead -1 FirstWrite 2}
		x_local_15_V {Type O LastRead -1 FirstWrite 2}
		x_norm_in_V {Type I LastRead 0 FirstWrite -1}
		x_norm_in_V_out {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "100", "Max" : "100"}
	, {"Name" : "Interval", "Min" : "100", "Max" : "100"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	in_stream_V_data_V { axis {  { in_stream_TDATA in_data 0 64 } } }
	in_stream_V_keep_V { axis {  { in_stream_TKEEP in_data 0 8 } } }
	in_stream_V_strb_V { axis {  { in_stream_TSTRB in_data 0 8 } } }
	in_stream_V_user_V { axis {  { in_stream_TUSER in_data 0 1 } } }
	in_stream_V_last_V { axis {  { in_stream_TLAST in_data 0 1 } } }
	in_stream_V_id_V { axis {  { in_stream_TID in_data 0 1 } } }
	in_stream_V_dest_V { axis {  { in_stream_TVALID in_vld 0 1 }  { in_stream_TREADY in_acc 1 1 }  { in_stream_TDEST in_data 0 1 } } }
	x_local_0_V { ap_memory {  { x_local_0_V_address0 mem_address 1 6 }  { x_local_0_V_ce0 mem_ce 1 1 }  { x_local_0_V_we0 mem_we 1 1 }  { x_local_0_V_d0 mem_din 1 8 } } }
	x_local_1_V { ap_memory {  { x_local_1_V_address0 mem_address 1 6 }  { x_local_1_V_ce0 mem_ce 1 1 }  { x_local_1_V_we0 mem_we 1 1 }  { x_local_1_V_d0 mem_din 1 8 } } }
	x_local_2_V { ap_memory {  { x_local_2_V_address0 mem_address 1 6 }  { x_local_2_V_ce0 mem_ce 1 1 }  { x_local_2_V_we0 mem_we 1 1 }  { x_local_2_V_d0 mem_din 1 8 } } }
	x_local_3_V { ap_memory {  { x_local_3_V_address0 mem_address 1 6 }  { x_local_3_V_ce0 mem_ce 1 1 }  { x_local_3_V_we0 mem_we 1 1 }  { x_local_3_V_d0 mem_din 1 8 } } }
	x_local_4_V { ap_memory {  { x_local_4_V_address0 mem_address 1 6 }  { x_local_4_V_ce0 mem_ce 1 1 }  { x_local_4_V_we0 mem_we 1 1 }  { x_local_4_V_d0 mem_din 1 8 } } }
	x_local_5_V { ap_memory {  { x_local_5_V_address0 mem_address 1 6 }  { x_local_5_V_ce0 mem_ce 1 1 }  { x_local_5_V_we0 mem_we 1 1 }  { x_local_5_V_d0 mem_din 1 8 } } }
	x_local_6_V { ap_memory {  { x_local_6_V_address0 mem_address 1 6 }  { x_local_6_V_ce0 mem_ce 1 1 }  { x_local_6_V_we0 mem_we 1 1 }  { x_local_6_V_d0 mem_din 1 8 } } }
	x_local_7_V { ap_memory {  { x_local_7_V_address0 mem_address 1 6 }  { x_local_7_V_ce0 mem_ce 1 1 }  { x_local_7_V_we0 mem_we 1 1 }  { x_local_7_V_d0 mem_din 1 8 } } }
	x_local_8_V { ap_memory {  { x_local_8_V_address0 mem_address 1 6 }  { x_local_8_V_ce0 mem_ce 1 1 }  { x_local_8_V_we0 mem_we 1 1 }  { x_local_8_V_d0 mem_din 1 8 } } }
	x_local_9_V { ap_memory {  { x_local_9_V_address0 mem_address 1 6 }  { x_local_9_V_ce0 mem_ce 1 1 }  { x_local_9_V_we0 mem_we 1 1 }  { x_local_9_V_d0 mem_din 1 8 } } }
	x_local_10_V { ap_memory {  { x_local_10_V_address0 mem_address 1 6 }  { x_local_10_V_ce0 mem_ce 1 1 }  { x_local_10_V_we0 mem_we 1 1 }  { x_local_10_V_d0 mem_din 1 8 } } }
	x_local_11_V { ap_memory {  { x_local_11_V_address0 mem_address 1 6 }  { x_local_11_V_ce0 mem_ce 1 1 }  { x_local_11_V_we0 mem_we 1 1 }  { x_local_11_V_d0 mem_din 1 8 } } }
	x_local_12_V { ap_memory {  { x_local_12_V_address0 mem_address 1 6 }  { x_local_12_V_ce0 mem_ce 1 1 }  { x_local_12_V_we0 mem_we 1 1 }  { x_local_12_V_d0 mem_din 1 8 } } }
	x_local_13_V { ap_memory {  { x_local_13_V_address0 mem_address 1 6 }  { x_local_13_V_ce0 mem_ce 1 1 }  { x_local_13_V_we0 mem_we 1 1 }  { x_local_13_V_d0 mem_din 1 8 } } }
	x_local_14_V { ap_memory {  { x_local_14_V_address0 mem_address 1 6 }  { x_local_14_V_ce0 mem_ce 1 1 }  { x_local_14_V_we0 mem_we 1 1 }  { x_local_14_V_d0 mem_din 1 8 } } }
	x_local_15_V { ap_memory {  { x_local_15_V_address0 mem_address 1 6 }  { x_local_15_V_ce0 mem_ce 1 1 }  { x_local_15_V_we0 mem_we 1 1 }  { x_local_15_V_d0 mem_din 1 8 } } }
	x_norm_in_V { ap_none {  { x_norm_in_V in_data 0 24 } } }
	x_norm_in_V_out { ap_fifo {  { x_norm_in_V_out_din fifo_data 1 24 }  { x_norm_in_V_out_full_n fifo_status 0 1 }  { x_norm_in_V_out_write fifo_update 1 1 } } }
}
