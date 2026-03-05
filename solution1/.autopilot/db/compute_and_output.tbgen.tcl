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
	{ x_local_0_V int 8 regular {array 49 { 1 3 } 1 1 }  }
	{ x_local_1_V int 8 regular {array 49 { 1 3 } 1 1 }  }
	{ x_local_2_V int 8 regular {array 49 { 1 3 } 1 1 }  }
	{ x_local_3_V int 8 regular {array 49 { 1 3 } 1 1 }  }
	{ x_local_4_V int 8 regular {array 49 { 1 3 } 1 1 }  }
	{ x_local_5_V int 8 regular {array 49 { 1 3 } 1 1 }  }
	{ x_local_6_V int 8 regular {array 49 { 1 3 } 1 1 }  }
	{ x_local_7_V int 8 regular {array 49 { 1 3 } 1 1 }  }
	{ x_local_8_V int 8 regular {array 49 { 1 3 } 1 1 }  }
	{ x_local_9_V int 8 regular {array 49 { 1 3 } 1 1 }  }
	{ x_local_10_V int 8 regular {array 49 { 1 3 } 1 1 }  }
	{ x_local_11_V int 8 regular {array 49 { 1 3 } 1 1 }  }
	{ x_local_12_V int 8 regular {array 49 { 1 3 } 1 1 }  }
	{ x_local_13_V int 8 regular {array 49 { 1 3 } 1 1 }  }
	{ x_local_14_V int 8 regular {array 49 { 1 3 } 1 1 }  }
	{ x_local_15_V int 8 regular {array 49 { 1 3 } 1 1 }  }
	{ p_read int 24 regular  }
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
 	{ "Name" : "out_stream_V_data_V", "interface" : "axis", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "out_stream_V_keep_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "out_stream_V_strb_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "out_stream_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "n", "interface" : "fifo", "bitwidth" : 31, "direction" : "READONLY"} , 
 	{ "Name" : "num_images", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 68
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
	{ out_stream_TDATA sc_out sc_lv 32 signal 17 } 
	{ out_stream_TVALID sc_out sc_logic 1 outvld 20 } 
	{ out_stream_TREADY sc_in sc_logic 1 outacc 20 } 
	{ out_stream_TKEEP sc_out sc_lv 1 signal 18 } 
	{ out_stream_TSTRB sc_out sc_lv 1 signal 19 } 
	{ out_stream_TLAST sc_out sc_lv 1 signal 20 } 
	{ n_dout sc_in sc_lv 31 signal 21 } 
	{ n_empty_n sc_in sc_logic 1 signal 21 } 
	{ n_read sc_out sc_logic 1 signal 21 } 
	{ num_images_dout sc_in sc_lv 32 signal 22 } 
	{ num_images_empty_n sc_in sc_logic 1 signal 22 } 
	{ num_images_read sc_out sc_logic 1 signal 22 } 
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
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "55", "56", "57", "58", "59", "60", "61", "62", "63", "64", "65", "66", "67", "68", "69", "70", "71", "72", "73", "74", "75", "76", "77", "78", "79", "80", "81", "82", "83", "84", "85", "86", "87", "88", "89", "90", "91", "92", "93", "94", "95", "96", "97", "98", "99", "100", "101", "102", "103", "104", "105", "106", "107", "108", "109", "110", "111", "112", "113", "114", "115", "116", "117", "118", "119", "120", "121", "122", "123", "124", "125", "126", "127", "128", "129", "130", "131", "132", "133", "134", "135", "136", "137", "138", "139", "140", "141", "142", "143", "144"],
		"CDFG" : "compute_and_output",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "406", "EstimateLatencyMax" : "406",
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
			{"Name" : "sv_norms_0_V_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sv_norms_0_V_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sv_norms_0_V_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sv_norms_0_V_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sv_norms_0_V_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sv_norms_0_V_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sv_norms_0_V_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sv_norms_0_V_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sv_norms_0_V_8", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sv_norms_0_V_9", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sv_norms_0_V_10", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sv_norms_0_V_11", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sv_norms_0_V_12", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sv_norms_0_V_13", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sv_norms_0_V_14", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sv_norms_0_V_15", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "alphas_0_V_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "alphas_0_V_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "alphas_0_V_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "alphas_0_V_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "alphas_0_V_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "alphas_0_V_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "alphas_0_V_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "alphas_0_V_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "alphas_0_V_8", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "alphas_0_V_9", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "alphas_0_V_10", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "alphas_0_V_11", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "alphas_0_V_12", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "alphas_0_V_13", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "alphas_0_V_14", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "alphas_0_V_15", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sv_norms_1_V_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sv_norms_1_V_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sv_norms_1_V_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sv_norms_1_V_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sv_norms_1_V_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sv_norms_1_V_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sv_norms_1_V_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sv_norms_1_V_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sv_norms_1_V_8", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sv_norms_1_V_9", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sv_norms_1_V_10", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sv_norms_1_V_11", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sv_norms_1_V_12", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sv_norms_1_V_13", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sv_norms_1_V_14", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sv_norms_1_V_15", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "alphas_1_V_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "alphas_1_V_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "alphas_1_V_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "alphas_1_V_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "alphas_1_V_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "alphas_1_V_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "alphas_1_V_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "alphas_1_V_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "alphas_1_V_8", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "alphas_1_V_9", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "alphas_1_V_10", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "alphas_1_V_11", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "alphas_1_V_12", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "alphas_1_V_13", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "alphas_1_V_14", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "alphas_1_V_15", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "svs_0_V_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "svs_0_V_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "svs_0_V_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "svs_0_V_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "svs_0_V_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "svs_0_V_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "svs_0_V_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "svs_0_V_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "svs_0_V_8", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "svs_0_V_9", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "svs_0_V_10", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "svs_0_V_11", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "svs_0_V_12", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "svs_0_V_13", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "svs_0_V_14", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "svs_0_V_15", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "svs_1_V_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "svs_1_V_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "svs_1_V_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "svs_1_V_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "svs_1_V_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "svs_1_V_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "svs_1_V_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "svs_1_V_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "svs_1_V_8", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "svs_1_V_9", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "svs_1_V_10", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "svs_1_V_11", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "svs_1_V_12", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "svs_1_V_13", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "svs_1_V_14", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "svs_1_V_15", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "EXP_LUT_V", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sv_norms_0_V_0_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sv_norms_0_V_1_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sv_norms_0_V_2_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sv_norms_0_V_3_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sv_norms_0_V_4_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sv_norms_0_V_5_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sv_norms_0_V_6_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sv_norms_0_V_7_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sv_norms_0_V_8_U", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sv_norms_0_V_9_U", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sv_norms_0_V_10_U", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sv_norms_0_V_11_U", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sv_norms_0_V_12_U", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sv_norms_0_V_13_U", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sv_norms_0_V_14_U", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sv_norms_0_V_15_U", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.alphas_0_V_0_U", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.alphas_0_V_1_U", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.alphas_0_V_2_U", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.alphas_0_V_3_U", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.alphas_0_V_4_U", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.alphas_0_V_5_U", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.alphas_0_V_6_U", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.alphas_0_V_7_U", "Parent" : "0"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.alphas_0_V_8_U", "Parent" : "0"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.alphas_0_V_9_U", "Parent" : "0"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.alphas_0_V_10_U", "Parent" : "0"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.alphas_0_V_11_U", "Parent" : "0"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.alphas_0_V_12_U", "Parent" : "0"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.alphas_0_V_13_U", "Parent" : "0"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.alphas_0_V_14_U", "Parent" : "0"},
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.alphas_0_V_15_U", "Parent" : "0"},
	{"ID" : "33", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sv_norms_1_V_0_U", "Parent" : "0"},
	{"ID" : "34", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sv_norms_1_V_1_U", "Parent" : "0"},
	{"ID" : "35", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sv_norms_1_V_2_U", "Parent" : "0"},
	{"ID" : "36", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sv_norms_1_V_3_U", "Parent" : "0"},
	{"ID" : "37", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sv_norms_1_V_4_U", "Parent" : "0"},
	{"ID" : "38", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sv_norms_1_V_5_U", "Parent" : "0"},
	{"ID" : "39", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sv_norms_1_V_6_U", "Parent" : "0"},
	{"ID" : "40", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sv_norms_1_V_7_U", "Parent" : "0"},
	{"ID" : "41", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sv_norms_1_V_8_U", "Parent" : "0"},
	{"ID" : "42", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sv_norms_1_V_9_U", "Parent" : "0"},
	{"ID" : "43", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sv_norms_1_V_10_U", "Parent" : "0"},
	{"ID" : "44", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sv_norms_1_V_11_U", "Parent" : "0"},
	{"ID" : "45", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sv_norms_1_V_12_U", "Parent" : "0"},
	{"ID" : "46", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sv_norms_1_V_13_U", "Parent" : "0"},
	{"ID" : "47", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sv_norms_1_V_14_U", "Parent" : "0"},
	{"ID" : "48", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sv_norms_1_V_15_U", "Parent" : "0"},
	{"ID" : "49", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.alphas_1_V_0_U", "Parent" : "0"},
	{"ID" : "50", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.alphas_1_V_1_U", "Parent" : "0"},
	{"ID" : "51", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.alphas_1_V_2_U", "Parent" : "0"},
	{"ID" : "52", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.alphas_1_V_3_U", "Parent" : "0"},
	{"ID" : "53", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.alphas_1_V_4_U", "Parent" : "0"},
	{"ID" : "54", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.alphas_1_V_5_U", "Parent" : "0"},
	{"ID" : "55", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.alphas_1_V_6_U", "Parent" : "0"},
	{"ID" : "56", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.alphas_1_V_7_U", "Parent" : "0"},
	{"ID" : "57", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.alphas_1_V_8_U", "Parent" : "0"},
	{"ID" : "58", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.alphas_1_V_9_U", "Parent" : "0"},
	{"ID" : "59", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.alphas_1_V_10_U", "Parent" : "0"},
	{"ID" : "60", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.alphas_1_V_11_U", "Parent" : "0"},
	{"ID" : "61", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.alphas_1_V_12_U", "Parent" : "0"},
	{"ID" : "62", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.alphas_1_V_13_U", "Parent" : "0"},
	{"ID" : "63", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.alphas_1_V_14_U", "Parent" : "0"},
	{"ID" : "64", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.alphas_1_V_15_U", "Parent" : "0"},
	{"ID" : "65", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.svs_0_V_0_U", "Parent" : "0"},
	{"ID" : "66", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.svs_0_V_1_U", "Parent" : "0"},
	{"ID" : "67", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.svs_0_V_2_U", "Parent" : "0"},
	{"ID" : "68", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.svs_0_V_3_U", "Parent" : "0"},
	{"ID" : "69", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.svs_0_V_4_U", "Parent" : "0"},
	{"ID" : "70", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.svs_0_V_5_U", "Parent" : "0"},
	{"ID" : "71", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.svs_0_V_6_U", "Parent" : "0"},
	{"ID" : "72", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.svs_0_V_7_U", "Parent" : "0"},
	{"ID" : "73", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.svs_0_V_8_U", "Parent" : "0"},
	{"ID" : "74", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.svs_0_V_9_U", "Parent" : "0"},
	{"ID" : "75", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.svs_0_V_10_U", "Parent" : "0"},
	{"ID" : "76", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.svs_0_V_11_U", "Parent" : "0"},
	{"ID" : "77", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.svs_0_V_12_U", "Parent" : "0"},
	{"ID" : "78", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.svs_0_V_13_U", "Parent" : "0"},
	{"ID" : "79", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.svs_0_V_14_U", "Parent" : "0"},
	{"ID" : "80", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.svs_0_V_15_U", "Parent" : "0"},
	{"ID" : "81", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.svs_1_V_0_U", "Parent" : "0"},
	{"ID" : "82", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.svs_1_V_1_U", "Parent" : "0"},
	{"ID" : "83", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.svs_1_V_2_U", "Parent" : "0"},
	{"ID" : "84", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.svs_1_V_3_U", "Parent" : "0"},
	{"ID" : "85", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.svs_1_V_4_U", "Parent" : "0"},
	{"ID" : "86", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.svs_1_V_5_U", "Parent" : "0"},
	{"ID" : "87", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.svs_1_V_6_U", "Parent" : "0"},
	{"ID" : "88", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.svs_1_V_7_U", "Parent" : "0"},
	{"ID" : "89", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.svs_1_V_8_U", "Parent" : "0"},
	{"ID" : "90", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.svs_1_V_9_U", "Parent" : "0"},
	{"ID" : "91", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.svs_1_V_10_U", "Parent" : "0"},
	{"ID" : "92", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.svs_1_V_11_U", "Parent" : "0"},
	{"ID" : "93", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.svs_1_V_12_U", "Parent" : "0"},
	{"ID" : "94", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.svs_1_V_13_U", "Parent" : "0"},
	{"ID" : "95", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.svs_1_V_14_U", "Parent" : "0"},
	{"ID" : "96", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.svs_1_V_15_U", "Parent" : "0"},
	{"ID" : "97", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.EXP_LUT_V_U", "Parent" : "0"},
	{"ID" : "98", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.classify_mux_1632bKp_U28", "Parent" : "0"},
	{"ID" : "99", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.classify_mux_1632bLp_U29", "Parent" : "0"},
	{"ID" : "100", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.classify_mux_164_bMq_U30", "Parent" : "0"},
	{"ID" : "101", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.classify_mux_1632bKp_U31", "Parent" : "0"},
	{"ID" : "102", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.classify_mux_1632bLp_U32", "Parent" : "0"},
	{"ID" : "103", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.classify_mux_164_bMq_U33", "Parent" : "0"},
	{"ID" : "104", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.classify_mux_1632bKp_U34", "Parent" : "0"},
	{"ID" : "105", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.classify_mux_1632bLp_U35", "Parent" : "0"},
	{"ID" : "106", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.classify_mux_164_bMq_U36", "Parent" : "0"},
	{"ID" : "107", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.classify_mux_164_bMq_U37", "Parent" : "0"},
	{"ID" : "108", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.classify_mux_1632bKp_U38", "Parent" : "0"},
	{"ID" : "109", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.classify_mux_1632bLp_U39", "Parent" : "0"},
	{"ID" : "110", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.classify_mux_164_bMq_U40", "Parent" : "0"},
	{"ID" : "111", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.classify_mux_1632bKp_U41", "Parent" : "0"},
	{"ID" : "112", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.classify_mux_1632bLp_U42", "Parent" : "0"},
	{"ID" : "113", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.classify_mux_164_bMq_U43", "Parent" : "0"},
	{"ID" : "114", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.classify_mux_1632bKp_U44", "Parent" : "0"},
	{"ID" : "115", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.classify_mux_1632bLp_U45", "Parent" : "0"},
	{"ID" : "116", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.classify_mux_164_bMq_U46", "Parent" : "0"},
	{"ID" : "117", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.classify_mux_1632bKp_U47", "Parent" : "0"},
	{"ID" : "118", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.classify_mux_1632bLp_U48", "Parent" : "0"},
	{"ID" : "119", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.classify_mux_1632bKp_U49", "Parent" : "0"},
	{"ID" : "120", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.classify_mux_1632bLp_U50", "Parent" : "0"},
	{"ID" : "121", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.classify_mux_164_bMq_U51", "Parent" : "0"},
	{"ID" : "122", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.classify_mux_164_bMq_U52", "Parent" : "0"},
	{"ID" : "123", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.classify_mux_164_bMq_U53", "Parent" : "0"},
	{"ID" : "124", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.classify_mux_164_bMq_U54", "Parent" : "0"},
	{"ID" : "125", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.classify_mux_164_bMq_U55", "Parent" : "0"},
	{"ID" : "126", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.classify_mux_164_bMq_U56", "Parent" : "0"},
	{"ID" : "127", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.classify_mux_164_bMq_U57", "Parent" : "0"},
	{"ID" : "128", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.classify_mux_164_bMq_U58", "Parent" : "0"},
	{"ID" : "129", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.classify_mul_mul_bNq_U59", "Parent" : "0"},
	{"ID" : "130", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.classify_mul_mul_bNq_U60", "Parent" : "0"},
	{"ID" : "131", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.classify_mul_mul_bNq_U61", "Parent" : "0"},
	{"ID" : "132", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.classify_mul_mul_bNq_U62", "Parent" : "0"},
	{"ID" : "133", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.classify_mul_mul_bNq_U63", "Parent" : "0"},
	{"ID" : "134", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.classify_mul_mul_bNq_U64", "Parent" : "0"},
	{"ID" : "135", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.classify_mul_mul_bNq_U65", "Parent" : "0"},
	{"ID" : "136", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.classify_mac_mulabOq_U66", "Parent" : "0"},
	{"ID" : "137", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.classify_mac_mulabOq_U67", "Parent" : "0"},
	{"ID" : "138", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.classify_mac_mulabOq_U68", "Parent" : "0"},
	{"ID" : "139", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.classify_mul_mul_bNq_U69", "Parent" : "0"},
	{"ID" : "140", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.classify_mac_mulabOq_U70", "Parent" : "0"},
	{"ID" : "141", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.classify_mac_mulabOq_U71", "Parent" : "0"},
	{"ID" : "142", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.classify_mac_mulabOq_U72", "Parent" : "0"},
	{"ID" : "143", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.classify_mac_mulabOq_U73", "Parent" : "0"},
	{"ID" : "144", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.classify_mac_mulabOq_U74", "Parent" : "0"}]}


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
		out_stream_V_data_V {Type O LastRead -1 FirstWrite 3}
		out_stream_V_keep_V {Type O LastRead -1 FirstWrite 3}
		out_stream_V_strb_V {Type O LastRead -1 FirstWrite 3}
		out_stream_V_last_V {Type O LastRead -1 FirstWrite 3}
		n {Type I LastRead 0 FirstWrite -1}
		num_images {Type I LastRead 0 FirstWrite -1}
		sv_norms_0_V_0 {Type I LastRead -1 FirstWrite -1}
		sv_norms_0_V_1 {Type I LastRead -1 FirstWrite -1}
		sv_norms_0_V_2 {Type I LastRead -1 FirstWrite -1}
		sv_norms_0_V_3 {Type I LastRead -1 FirstWrite -1}
		sv_norms_0_V_4 {Type I LastRead -1 FirstWrite -1}
		sv_norms_0_V_5 {Type I LastRead -1 FirstWrite -1}
		sv_norms_0_V_6 {Type I LastRead -1 FirstWrite -1}
		sv_norms_0_V_7 {Type I LastRead -1 FirstWrite -1}
		sv_norms_0_V_8 {Type I LastRead -1 FirstWrite -1}
		sv_norms_0_V_9 {Type I LastRead -1 FirstWrite -1}
		sv_norms_0_V_10 {Type I LastRead -1 FirstWrite -1}
		sv_norms_0_V_11 {Type I LastRead -1 FirstWrite -1}
		sv_norms_0_V_12 {Type I LastRead -1 FirstWrite -1}
		sv_norms_0_V_13 {Type I LastRead -1 FirstWrite -1}
		sv_norms_0_V_14 {Type I LastRead -1 FirstWrite -1}
		sv_norms_0_V_15 {Type I LastRead -1 FirstWrite -1}
		alphas_0_V_0 {Type I LastRead -1 FirstWrite -1}
		alphas_0_V_1 {Type I LastRead -1 FirstWrite -1}
		alphas_0_V_2 {Type I LastRead -1 FirstWrite -1}
		alphas_0_V_3 {Type I LastRead -1 FirstWrite -1}
		alphas_0_V_4 {Type I LastRead -1 FirstWrite -1}
		alphas_0_V_5 {Type I LastRead -1 FirstWrite -1}
		alphas_0_V_6 {Type I LastRead -1 FirstWrite -1}
		alphas_0_V_7 {Type I LastRead -1 FirstWrite -1}
		alphas_0_V_8 {Type I LastRead -1 FirstWrite -1}
		alphas_0_V_9 {Type I LastRead -1 FirstWrite -1}
		alphas_0_V_10 {Type I LastRead -1 FirstWrite -1}
		alphas_0_V_11 {Type I LastRead -1 FirstWrite -1}
		alphas_0_V_12 {Type I LastRead -1 FirstWrite -1}
		alphas_0_V_13 {Type I LastRead -1 FirstWrite -1}
		alphas_0_V_14 {Type I LastRead -1 FirstWrite -1}
		alphas_0_V_15 {Type I LastRead -1 FirstWrite -1}
		sv_norms_1_V_0 {Type I LastRead -1 FirstWrite -1}
		sv_norms_1_V_1 {Type I LastRead -1 FirstWrite -1}
		sv_norms_1_V_2 {Type I LastRead -1 FirstWrite -1}
		sv_norms_1_V_3 {Type I LastRead -1 FirstWrite -1}
		sv_norms_1_V_4 {Type I LastRead -1 FirstWrite -1}
		sv_norms_1_V_5 {Type I LastRead -1 FirstWrite -1}
		sv_norms_1_V_6 {Type I LastRead -1 FirstWrite -1}
		sv_norms_1_V_7 {Type I LastRead -1 FirstWrite -1}
		sv_norms_1_V_8 {Type I LastRead -1 FirstWrite -1}
		sv_norms_1_V_9 {Type I LastRead -1 FirstWrite -1}
		sv_norms_1_V_10 {Type I LastRead -1 FirstWrite -1}
		sv_norms_1_V_11 {Type I LastRead -1 FirstWrite -1}
		sv_norms_1_V_12 {Type I LastRead -1 FirstWrite -1}
		sv_norms_1_V_13 {Type I LastRead -1 FirstWrite -1}
		sv_norms_1_V_14 {Type I LastRead -1 FirstWrite -1}
		sv_norms_1_V_15 {Type I LastRead -1 FirstWrite -1}
		alphas_1_V_0 {Type I LastRead -1 FirstWrite -1}
		alphas_1_V_1 {Type I LastRead -1 FirstWrite -1}
		alphas_1_V_2 {Type I LastRead -1 FirstWrite -1}
		alphas_1_V_3 {Type I LastRead -1 FirstWrite -1}
		alphas_1_V_4 {Type I LastRead -1 FirstWrite -1}
		alphas_1_V_5 {Type I LastRead -1 FirstWrite -1}
		alphas_1_V_6 {Type I LastRead -1 FirstWrite -1}
		alphas_1_V_7 {Type I LastRead -1 FirstWrite -1}
		alphas_1_V_8 {Type I LastRead -1 FirstWrite -1}
		alphas_1_V_9 {Type I LastRead -1 FirstWrite -1}
		alphas_1_V_10 {Type I LastRead -1 FirstWrite -1}
		alphas_1_V_11 {Type I LastRead -1 FirstWrite -1}
		alphas_1_V_12 {Type I LastRead -1 FirstWrite -1}
		alphas_1_V_13 {Type I LastRead -1 FirstWrite -1}
		alphas_1_V_14 {Type I LastRead -1 FirstWrite -1}
		alphas_1_V_15 {Type I LastRead -1 FirstWrite -1}
		svs_0_V_0 {Type I LastRead -1 FirstWrite -1}
		svs_0_V_1 {Type I LastRead -1 FirstWrite -1}
		svs_0_V_2 {Type I LastRead -1 FirstWrite -1}
		svs_0_V_3 {Type I LastRead -1 FirstWrite -1}
		svs_0_V_4 {Type I LastRead -1 FirstWrite -1}
		svs_0_V_5 {Type I LastRead -1 FirstWrite -1}
		svs_0_V_6 {Type I LastRead -1 FirstWrite -1}
		svs_0_V_7 {Type I LastRead -1 FirstWrite -1}
		svs_0_V_8 {Type I LastRead -1 FirstWrite -1}
		svs_0_V_9 {Type I LastRead -1 FirstWrite -1}
		svs_0_V_10 {Type I LastRead -1 FirstWrite -1}
		svs_0_V_11 {Type I LastRead -1 FirstWrite -1}
		svs_0_V_12 {Type I LastRead -1 FirstWrite -1}
		svs_0_V_13 {Type I LastRead -1 FirstWrite -1}
		svs_0_V_14 {Type I LastRead -1 FirstWrite -1}
		svs_0_V_15 {Type I LastRead -1 FirstWrite -1}
		svs_1_V_0 {Type I LastRead -1 FirstWrite -1}
		svs_1_V_1 {Type I LastRead -1 FirstWrite -1}
		svs_1_V_2 {Type I LastRead -1 FirstWrite -1}
		svs_1_V_3 {Type I LastRead -1 FirstWrite -1}
		svs_1_V_4 {Type I LastRead -1 FirstWrite -1}
		svs_1_V_5 {Type I LastRead -1 FirstWrite -1}
		svs_1_V_6 {Type I LastRead -1 FirstWrite -1}
		svs_1_V_7 {Type I LastRead -1 FirstWrite -1}
		svs_1_V_8 {Type I LastRead -1 FirstWrite -1}
		svs_1_V_9 {Type I LastRead -1 FirstWrite -1}
		svs_1_V_10 {Type I LastRead -1 FirstWrite -1}
		svs_1_V_11 {Type I LastRead -1 FirstWrite -1}
		svs_1_V_12 {Type I LastRead -1 FirstWrite -1}
		svs_1_V_13 {Type I LastRead -1 FirstWrite -1}
		svs_1_V_14 {Type I LastRead -1 FirstWrite -1}
		svs_1_V_15 {Type I LastRead -1 FirstWrite -1}
		EXP_LUT_V {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "406", "Max" : "406"}
	, {"Name" : "Interval", "Min" : "406", "Max" : "406"}
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
	out_stream_V_data_V { axis {  { out_stream_TDATA out_data 1 32 } } }
	out_stream_V_keep_V { axis {  { out_stream_TKEEP out_data 1 1 } } }
	out_stream_V_strb_V { axis {  { out_stream_TSTRB out_data 1 1 } } }
	out_stream_V_last_V { axis {  { out_stream_TVALID out_vld 1 1 }  { out_stream_TREADY out_acc 0 1 }  { out_stream_TLAST out_data 1 1 } } }
	n { ap_fifo {  { n_dout fifo_data 0 31 }  { n_empty_n fifo_status 0 1 }  { n_read fifo_update 1 1 } } }
	num_images { ap_fifo {  { num_images_dout fifo_data 0 32 }  { num_images_empty_n fifo_status 0 1 }  { num_images_read fifo_update 1 1 } } }
}
