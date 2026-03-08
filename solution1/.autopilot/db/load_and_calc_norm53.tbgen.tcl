set moduleName load_and_calc_norm53
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
set C_modelName {load_and_calc_norm53}
set C_modelType { int 324 }
set C_modelArgList {
	{ in_stream_V_data_V int 64 regular {axi_s 0 volatile  { in_stream Data } }  }
	{ in_stream_V_keep_V int 8 regular {axi_s 0 volatile  { in_stream Keep } }  }
	{ in_stream_V_strb_V int 8 regular {axi_s 0 volatile  { in_stream Strb } }  }
	{ in_stream_V_user_V int 1 regular {axi_s 0 volatile  { in_stream User } }  }
	{ in_stream_V_last_V int 1 regular {axi_s 0 volatile  { in_stream Last } }  }
	{ in_stream_V_id_V int 1 regular {axi_s 0 volatile  { in_stream ID } }  }
	{ in_stream_V_dest_V int 1 regular {axi_s 0 volatile  { in_stream Dest } }  }
	{ x_local_0_V int 8 regular {array 50 { 0 3 } 0 1 }  }
	{ x_local_1_V int 8 regular {array 50 { 0 3 } 0 1 }  }
	{ x_local_2_V int 8 regular {array 50 { 0 3 } 0 1 }  }
	{ x_local_3_V int 8 regular {array 50 { 0 3 } 0 1 }  }
	{ x_local_4_V int 8 regular {array 50 { 0 3 } 0 1 }  }
	{ x_local_5_V int 8 regular {array 50 { 0 3 } 0 1 }  }
	{ x_local_6_V int 8 regular {array 50 { 0 3 } 0 1 }  }
	{ x_local_7_V int 8 regular {array 50 { 0 3 } 0 1 }  }
	{ x_local_8_V int 8 regular {array 50 { 0 3 } 0 1 }  }
	{ x_local_9_V int 8 regular {array 50 { 0 3 } 0 1 }  }
	{ x_local_10_V int 8 regular {array 50 { 0 3 } 0 1 }  }
	{ x_local_11_V int 8 regular {array 50 { 0 3 } 0 1 }  }
	{ x_local_12_V int 8 regular {array 50 { 0 3 } 0 1 }  }
	{ x_local_13_V int 8 regular {array 50 { 0 3 } 0 1 }  }
	{ x_local_14_V int 8 regular {array 50 { 0 3 } 0 1 }  }
	{ x_local_15_V int 8 regular {array 50 { 0 3 } 0 1 }  }
	{ n int 31 regular  }
	{ num_images int 32 regular  }
	{ n_out int 31 regular {fifo 1}  }
	{ num_images_out int 32 regular {fifo 1}  }
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
 	{ "Name" : "n", "interface" : "wire", "bitwidth" : 31, "direction" : "READONLY"} , 
 	{ "Name" : "num_images", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "n_out", "interface" : "fifo", "bitwidth" : 31, "direction" : "WRITEONLY"} , 
 	{ "Name" : "num_images_out", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 324} ]}
# RTL Port declarations: 
set portNum 139
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
	{ n sc_in sc_lv 31 signal 23 } 
	{ num_images sc_in sc_lv 32 signal 24 } 
	{ n_out_din sc_out sc_lv 31 signal 25 } 
	{ n_out_full_n sc_in sc_logic 1 signal 25 } 
	{ n_out_write sc_out sc_logic 1 signal 25 } 
	{ num_images_out_din sc_out sc_lv 32 signal 26 } 
	{ num_images_out_full_n sc_in sc_logic 1 signal 26 } 
	{ num_images_out_write sc_out sc_logic 1 signal 26 } 
	{ ap_return_0 sc_out sc_lv 24 signal -1 } 
	{ ap_return_1 sc_out sc_lv 6 signal -1 } 
	{ ap_return_2 sc_out sc_lv 6 signal -1 } 
	{ ap_return_3 sc_out sc_lv 6 signal -1 } 
	{ ap_return_4 sc_out sc_lv 6 signal -1 } 
	{ ap_return_5 sc_out sc_lv 6 signal -1 } 
	{ ap_return_6 sc_out sc_lv 6 signal -1 } 
	{ ap_return_7 sc_out sc_lv 6 signal -1 } 
	{ ap_return_8 sc_out sc_lv 6 signal -1 } 
	{ ap_return_9 sc_out sc_lv 6 signal -1 } 
	{ ap_return_10 sc_out sc_lv 6 signal -1 } 
	{ ap_return_11 sc_out sc_lv 6 signal -1 } 
	{ ap_return_12 sc_out sc_lv 6 signal -1 } 
	{ ap_return_13 sc_out sc_lv 6 signal -1 } 
	{ ap_return_14 sc_out sc_lv 6 signal -1 } 
	{ ap_return_15 sc_out sc_lv 6 signal -1 } 
	{ ap_return_16 sc_out sc_lv 6 signal -1 } 
	{ ap_return_17 sc_out sc_lv 6 signal -1 } 
	{ ap_return_18 sc_out sc_lv 6 signal -1 } 
	{ ap_return_19 sc_out sc_lv 6 signal -1 } 
	{ ap_return_20 sc_out sc_lv 6 signal -1 } 
	{ ap_return_21 sc_out sc_lv 6 signal -1 } 
	{ ap_return_22 sc_out sc_lv 6 signal -1 } 
	{ ap_return_23 sc_out sc_lv 6 signal -1 } 
	{ ap_return_24 sc_out sc_lv 6 signal -1 } 
	{ ap_return_25 sc_out sc_lv 6 signal -1 } 
	{ ap_return_26 sc_out sc_lv 6 signal -1 } 
	{ ap_return_27 sc_out sc_lv 6 signal -1 } 
	{ ap_return_28 sc_out sc_lv 6 signal -1 } 
	{ ap_return_29 sc_out sc_lv 6 signal -1 } 
	{ ap_return_30 sc_out sc_lv 6 signal -1 } 
	{ ap_return_31 sc_out sc_lv 6 signal -1 } 
	{ ap_return_32 sc_out sc_lv 6 signal -1 } 
	{ ap_return_33 sc_out sc_lv 6 signal -1 } 
	{ ap_return_34 sc_out sc_lv 6 signal -1 } 
	{ ap_return_35 sc_out sc_lv 6 signal -1 } 
	{ ap_return_36 sc_out sc_lv 6 signal -1 } 
	{ ap_return_37 sc_out sc_lv 6 signal -1 } 
	{ ap_return_38 sc_out sc_lv 6 signal -1 } 
	{ ap_return_39 sc_out sc_lv 6 signal -1 } 
	{ ap_return_40 sc_out sc_lv 6 signal -1 } 
	{ ap_return_41 sc_out sc_lv 6 signal -1 } 
	{ ap_return_42 sc_out sc_lv 6 signal -1 } 
	{ ap_return_43 sc_out sc_lv 6 signal -1 } 
	{ ap_return_44 sc_out sc_lv 6 signal -1 } 
	{ ap_return_45 sc_out sc_lv 6 signal -1 } 
	{ ap_return_46 sc_out sc_lv 6 signal -1 } 
	{ ap_return_47 sc_out sc_lv 6 signal -1 } 
	{ ap_return_48 sc_out sc_lv 6 signal -1 } 
	{ ap_return_49 sc_out sc_lv 6 signal -1 } 
	{ ap_return_50 sc_out sc_lv 6 signal -1 } 
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
 	{ "name": "n", "direction": "in", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "n", "role": "default" }} , 
 	{ "name": "num_images", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "num_images", "role": "default" }} , 
 	{ "name": "n_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "n_out", "role": "din" }} , 
 	{ "name": "n_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "n_out", "role": "full_n" }} , 
 	{ "name": "n_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "n_out", "role": "write" }} , 
 	{ "name": "num_images_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "num_images_out", "role": "din" }} , 
 	{ "name": "num_images_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "num_images_out", "role": "full_n" }} , 
 	{ "name": "num_images_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "num_images_out", "role": "write" }} , 
 	{ "name": "ap_return_0", "direction": "out", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "ap_return_0", "role": "default" }} , 
 	{ "name": "ap_return_1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "ap_return_1", "role": "default" }} , 
 	{ "name": "ap_return_2", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "ap_return_2", "role": "default" }} , 
 	{ "name": "ap_return_3", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "ap_return_3", "role": "default" }} , 
 	{ "name": "ap_return_4", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "ap_return_4", "role": "default" }} , 
 	{ "name": "ap_return_5", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "ap_return_5", "role": "default" }} , 
 	{ "name": "ap_return_6", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "ap_return_6", "role": "default" }} , 
 	{ "name": "ap_return_7", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "ap_return_7", "role": "default" }} , 
 	{ "name": "ap_return_8", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "ap_return_8", "role": "default" }} , 
 	{ "name": "ap_return_9", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "ap_return_9", "role": "default" }} , 
 	{ "name": "ap_return_10", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "ap_return_10", "role": "default" }} , 
 	{ "name": "ap_return_11", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "ap_return_11", "role": "default" }} , 
 	{ "name": "ap_return_12", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "ap_return_12", "role": "default" }} , 
 	{ "name": "ap_return_13", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "ap_return_13", "role": "default" }} , 
 	{ "name": "ap_return_14", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "ap_return_14", "role": "default" }} , 
 	{ "name": "ap_return_15", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "ap_return_15", "role": "default" }} , 
 	{ "name": "ap_return_16", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "ap_return_16", "role": "default" }} , 
 	{ "name": "ap_return_17", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "ap_return_17", "role": "default" }} , 
 	{ "name": "ap_return_18", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "ap_return_18", "role": "default" }} , 
 	{ "name": "ap_return_19", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "ap_return_19", "role": "default" }} , 
 	{ "name": "ap_return_20", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "ap_return_20", "role": "default" }} , 
 	{ "name": "ap_return_21", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "ap_return_21", "role": "default" }} , 
 	{ "name": "ap_return_22", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "ap_return_22", "role": "default" }} , 
 	{ "name": "ap_return_23", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "ap_return_23", "role": "default" }} , 
 	{ "name": "ap_return_24", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "ap_return_24", "role": "default" }} , 
 	{ "name": "ap_return_25", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "ap_return_25", "role": "default" }} , 
 	{ "name": "ap_return_26", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "ap_return_26", "role": "default" }} , 
 	{ "name": "ap_return_27", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "ap_return_27", "role": "default" }} , 
 	{ "name": "ap_return_28", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "ap_return_28", "role": "default" }} , 
 	{ "name": "ap_return_29", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "ap_return_29", "role": "default" }} , 
 	{ "name": "ap_return_30", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "ap_return_30", "role": "default" }} , 
 	{ "name": "ap_return_31", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "ap_return_31", "role": "default" }} , 
 	{ "name": "ap_return_32", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "ap_return_32", "role": "default" }} , 
 	{ "name": "ap_return_33", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "ap_return_33", "role": "default" }} , 
 	{ "name": "ap_return_34", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "ap_return_34", "role": "default" }} , 
 	{ "name": "ap_return_35", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "ap_return_35", "role": "default" }} , 
 	{ "name": "ap_return_36", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "ap_return_36", "role": "default" }} , 
 	{ "name": "ap_return_37", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "ap_return_37", "role": "default" }} , 
 	{ "name": "ap_return_38", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "ap_return_38", "role": "default" }} , 
 	{ "name": "ap_return_39", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "ap_return_39", "role": "default" }} , 
 	{ "name": "ap_return_40", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "ap_return_40", "role": "default" }} , 
 	{ "name": "ap_return_41", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "ap_return_41", "role": "default" }} , 
 	{ "name": "ap_return_42", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "ap_return_42", "role": "default" }} , 
 	{ "name": "ap_return_43", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "ap_return_43", "role": "default" }} , 
 	{ "name": "ap_return_44", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "ap_return_44", "role": "default" }} , 
 	{ "name": "ap_return_45", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "ap_return_45", "role": "default" }} , 
 	{ "name": "ap_return_46", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "ap_return_46", "role": "default" }} , 
 	{ "name": "ap_return_47", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "ap_return_47", "role": "default" }} , 
 	{ "name": "ap_return_48", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "ap_return_48", "role": "default" }} , 
 	{ "name": "ap_return_49", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "ap_return_49", "role": "default" }} , 
 	{ "name": "ap_return_50", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "ap_return_50", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "55", "56", "57", "58", "59", "60", "61", "62", "63", "64", "65", "66", "67", "68", "69", "70", "71", "72", "73", "74", "75", "76", "77", "78", "79", "80", "81", "82", "83", "84", "85", "86", "87", "88", "89", "90", "91", "92", "93", "94", "95", "96", "97", "98"],
		"CDFG" : "load_and_calc_norm53",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "101", "EstimateLatencyMax" : "101",
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
			{"Name" : "n", "Type" : "None", "Direction" : "I"},
			{"Name" : "num_images", "Type" : "None", "Direction" : "I"},
			{"Name" : "n_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "n_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "num_images_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "num_images_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.classify_mux_646_bkb_U1", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.classify_mux_646_bkb_U2", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.classify_mux_646_cud_U3", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.classify_mux_646_cud_U4", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.classify_mux_646_bkb_U5", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.classify_mux_646_bkb_U6", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.classify_mux_646_cud_U7", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.classify_mux_646_bkb_U8", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.classify_mux_646_cud_U9", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.classify_mux_646_cud_U10", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.classify_mux_646_bkb_U11", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.classify_mux_646_bkb_U12", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.classify_mux_646_cud_U13", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.classify_mux_646_bkb_U14", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.classify_mux_646_cud_U15", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.classify_mux_646_cud_U16", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.classify_mux_646_bkb_U17", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.classify_mux_646_bkb_U18", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.classify_mux_646_cud_U19", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.classify_mux_646_bkb_U20", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.classify_mux_646_cud_U21", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.classify_mux_646_cud_U22", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.classify_mux_646_bkb_U23", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.classify_mux_646_bkb_U24", "Parent" : "0"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.classify_mux_646_cud_U25", "Parent" : "0"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.classify_mux_646_bkb_U26", "Parent" : "0"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.classify_mux_646_cud_U27", "Parent" : "0"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.classify_mux_646_cud_U28", "Parent" : "0"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.classify_mux_646_bkb_U29", "Parent" : "0"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.classify_mux_646_bkb_U30", "Parent" : "0"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.classify_mux_646_cud_U31", "Parent" : "0"},
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.classify_mux_646_bkb_U32", "Parent" : "0"},
	{"ID" : "33", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.classify_mux_646_cud_U33", "Parent" : "0"},
	{"ID" : "34", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.classify_mux_646_cud_U34", "Parent" : "0"},
	{"ID" : "35", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.classify_mux_646_bkb_U35", "Parent" : "0"},
	{"ID" : "36", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.classify_mux_646_bkb_U36", "Parent" : "0"},
	{"ID" : "37", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.classify_mux_646_cud_U37", "Parent" : "0"},
	{"ID" : "38", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.classify_mux_646_bkb_U38", "Parent" : "0"},
	{"ID" : "39", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.classify_mux_646_cud_U39", "Parent" : "0"},
	{"ID" : "40", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.classify_mux_646_cud_U40", "Parent" : "0"},
	{"ID" : "41", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.classify_mux_646_bkb_U41", "Parent" : "0"},
	{"ID" : "42", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.classify_mux_646_bkb_U42", "Parent" : "0"},
	{"ID" : "43", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.classify_mux_646_cud_U43", "Parent" : "0"},
	{"ID" : "44", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.classify_mux_646_bkb_U44", "Parent" : "0"},
	{"ID" : "45", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.classify_mux_646_cud_U45", "Parent" : "0"},
	{"ID" : "46", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.classify_mux_646_cud_U46", "Parent" : "0"},
	{"ID" : "47", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.classify_mux_646_bkb_U47", "Parent" : "0"},
	{"ID" : "48", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.classify_mux_646_bkb_U48", "Parent" : "0"},
	{"ID" : "49", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.classify_mux_646_cud_U49", "Parent" : "0"},
	{"ID" : "50", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.classify_mux_646_bkb_U50", "Parent" : "0"},
	{"ID" : "51", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.classify_mux_646_cud_U51", "Parent" : "0"},
	{"ID" : "52", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.classify_mux_646_cud_U52", "Parent" : "0"},
	{"ID" : "53", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.classify_mux_646_bkb_U53", "Parent" : "0"},
	{"ID" : "54", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.classify_mux_646_bkb_U54", "Parent" : "0"},
	{"ID" : "55", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.classify_mux_646_cud_U55", "Parent" : "0"},
	{"ID" : "56", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.classify_mux_646_bkb_U56", "Parent" : "0"},
	{"ID" : "57", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.classify_mux_646_cud_U57", "Parent" : "0"},
	{"ID" : "58", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.classify_mux_646_cud_U58", "Parent" : "0"},
	{"ID" : "59", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.classify_mux_646_bkb_U59", "Parent" : "0"},
	{"ID" : "60", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.classify_mux_646_bkb_U60", "Parent" : "0"},
	{"ID" : "61", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.classify_mux_646_cud_U61", "Parent" : "0"},
	{"ID" : "62", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.classify_mux_646_bkb_U62", "Parent" : "0"},
	{"ID" : "63", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.classify_mux_646_cud_U63", "Parent" : "0"},
	{"ID" : "64", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.classify_mux_646_cud_U64", "Parent" : "0"},
	{"ID" : "65", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.classify_mux_646_bkb_U65", "Parent" : "0"},
	{"ID" : "66", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.classify_mux_646_cud_U66", "Parent" : "0"},
	{"ID" : "67", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.classify_mux_646_bkb_U67", "Parent" : "0"},
	{"ID" : "68", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.classify_mux_646_cud_U68", "Parent" : "0"},
	{"ID" : "69", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.classify_mux_646_bkb_U69", "Parent" : "0"},
	{"ID" : "70", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.classify_mux_646_cud_U70", "Parent" : "0"},
	{"ID" : "71", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.classify_mux_646_cud_U71", "Parent" : "0"},
	{"ID" : "72", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.classify_mux_646_bkb_U72", "Parent" : "0"},
	{"ID" : "73", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.classify_mux_646_bkb_U73", "Parent" : "0"},
	{"ID" : "74", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.classify_mux_646_cud_U74", "Parent" : "0"},
	{"ID" : "75", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.classify_mux_646_bkb_U75", "Parent" : "0"},
	{"ID" : "76", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.classify_mux_646_cud_U76", "Parent" : "0"},
	{"ID" : "77", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.classify_mux_646_cud_U77", "Parent" : "0"},
	{"ID" : "78", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.classify_mux_646_bkb_U78", "Parent" : "0"},
	{"ID" : "79", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.classify_mux_646_bkb_U79", "Parent" : "0"},
	{"ID" : "80", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.classify_mux_646_cud_U80", "Parent" : "0"},
	{"ID" : "81", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.classify_mux_646_bkb_U81", "Parent" : "0"},
	{"ID" : "82", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.classify_mux_646_cud_U82", "Parent" : "0"},
	{"ID" : "83", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.classify_mux_646_cud_U83", "Parent" : "0"},
	{"ID" : "84", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.classify_mux_646_bkb_U84", "Parent" : "0"},
	{"ID" : "85", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.classify_mux_646_bkb_U85", "Parent" : "0"},
	{"ID" : "86", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.classify_mux_646_cud_U86", "Parent" : "0"},
	{"ID" : "87", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.classify_mux_646_bkb_U87", "Parent" : "0"},
	{"ID" : "88", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.classify_mux_646_cud_U88", "Parent" : "0"},
	{"ID" : "89", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.classify_mux_646_cud_U89", "Parent" : "0"},
	{"ID" : "90", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.classify_mux_646_bkb_U90", "Parent" : "0"},
	{"ID" : "91", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.classify_mux_646_bkb_U91", "Parent" : "0"},
	{"ID" : "92", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.classify_mux_646_cud_U92", "Parent" : "0"},
	{"ID" : "93", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.classify_mux_646_bkb_U93", "Parent" : "0"},
	{"ID" : "94", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.classify_mux_646_cud_U94", "Parent" : "0"},
	{"ID" : "95", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.classify_mux_646_cud_U95", "Parent" : "0"},
	{"ID" : "96", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.classify_mux_646_bkb_U96", "Parent" : "0"},
	{"ID" : "97", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.classify_mux_646_bkb_U97", "Parent" : "0"},
	{"ID" : "98", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.classify_mux_646_cud_U98", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	load_and_calc_norm53 {
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
		n {Type I LastRead 0 FirstWrite -1}
		num_images {Type I LastRead 0 FirstWrite -1}
		n_out {Type O LastRead -1 FirstWrite 0}
		num_images_out {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "101", "Max" : "101"}
	, {"Name" : "Interval", "Min" : "101", "Max" : "101"}
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
	n { ap_none {  { n in_data 0 31 } } }
	num_images { ap_none {  { num_images in_data 0 32 } } }
	n_out { ap_fifo {  { n_out_din fifo_data 1 31 }  { n_out_full_n fifo_status 0 1 }  { n_out_write fifo_update 1 1 } } }
	num_images_out { ap_fifo {  { num_images_out_din fifo_data 1 32 }  { num_images_out_full_n fifo_status 0 1 }  { num_images_out_write fifo_update 1 1 } } }
}
