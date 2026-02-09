set moduleName load_data51
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
set C_modelName {load_data51}
set C_modelType { void 0 }
set C_modelArgList {
	{ x_V int 64 regular {axi_master 0}  }
	{ x_V_offset int 32 regular  }
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
	{ "Name" : "x_V", "interface" : "axi_master", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "x_V_offset", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
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
set portNum 121
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ m_axi_x_V_AWVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_x_V_AWREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_x_V_AWADDR sc_out sc_lv 32 signal 0 } 
	{ m_axi_x_V_AWID sc_out sc_lv 1 signal 0 } 
	{ m_axi_x_V_AWLEN sc_out sc_lv 32 signal 0 } 
	{ m_axi_x_V_AWSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_x_V_AWBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_x_V_AWLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_x_V_AWCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_x_V_AWPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_x_V_AWQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_x_V_AWREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_x_V_AWUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_x_V_WVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_x_V_WREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_x_V_WDATA sc_out sc_lv 64 signal 0 } 
	{ m_axi_x_V_WSTRB sc_out sc_lv 8 signal 0 } 
	{ m_axi_x_V_WLAST sc_out sc_logic 1 signal 0 } 
	{ m_axi_x_V_WID sc_out sc_lv 1 signal 0 } 
	{ m_axi_x_V_WUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_x_V_ARVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_x_V_ARREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_x_V_ARADDR sc_out sc_lv 32 signal 0 } 
	{ m_axi_x_V_ARID sc_out sc_lv 1 signal 0 } 
	{ m_axi_x_V_ARLEN sc_out sc_lv 32 signal 0 } 
	{ m_axi_x_V_ARSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_x_V_ARBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_x_V_ARLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_x_V_ARCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_x_V_ARPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_x_V_ARQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_x_V_ARREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_x_V_ARUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_x_V_RVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_x_V_RREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_x_V_RDATA sc_in sc_lv 64 signal 0 } 
	{ m_axi_x_V_RLAST sc_in sc_logic 1 signal 0 } 
	{ m_axi_x_V_RID sc_in sc_lv 1 signal 0 } 
	{ m_axi_x_V_RUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_x_V_RRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_x_V_BVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_x_V_BREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_x_V_BRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_x_V_BID sc_in sc_lv 1 signal 0 } 
	{ m_axi_x_V_BUSER sc_in sc_lv 1 signal 0 } 
	{ x_V_offset sc_in sc_lv 32 signal 1 } 
	{ x_local_0_V_address0 sc_out sc_lv 6 signal 2 } 
	{ x_local_0_V_ce0 sc_out sc_logic 1 signal 2 } 
	{ x_local_0_V_we0 sc_out sc_logic 1 signal 2 } 
	{ x_local_0_V_d0 sc_out sc_lv 8 signal 2 } 
	{ x_local_1_V_address0 sc_out sc_lv 6 signal 3 } 
	{ x_local_1_V_ce0 sc_out sc_logic 1 signal 3 } 
	{ x_local_1_V_we0 sc_out sc_logic 1 signal 3 } 
	{ x_local_1_V_d0 sc_out sc_lv 8 signal 3 } 
	{ x_local_2_V_address0 sc_out sc_lv 6 signal 4 } 
	{ x_local_2_V_ce0 sc_out sc_logic 1 signal 4 } 
	{ x_local_2_V_we0 sc_out sc_logic 1 signal 4 } 
	{ x_local_2_V_d0 sc_out sc_lv 8 signal 4 } 
	{ x_local_3_V_address0 sc_out sc_lv 6 signal 5 } 
	{ x_local_3_V_ce0 sc_out sc_logic 1 signal 5 } 
	{ x_local_3_V_we0 sc_out sc_logic 1 signal 5 } 
	{ x_local_3_V_d0 sc_out sc_lv 8 signal 5 } 
	{ x_local_4_V_address0 sc_out sc_lv 6 signal 6 } 
	{ x_local_4_V_ce0 sc_out sc_logic 1 signal 6 } 
	{ x_local_4_V_we0 sc_out sc_logic 1 signal 6 } 
	{ x_local_4_V_d0 sc_out sc_lv 8 signal 6 } 
	{ x_local_5_V_address0 sc_out sc_lv 6 signal 7 } 
	{ x_local_5_V_ce0 sc_out sc_logic 1 signal 7 } 
	{ x_local_5_V_we0 sc_out sc_logic 1 signal 7 } 
	{ x_local_5_V_d0 sc_out sc_lv 8 signal 7 } 
	{ x_local_6_V_address0 sc_out sc_lv 6 signal 8 } 
	{ x_local_6_V_ce0 sc_out sc_logic 1 signal 8 } 
	{ x_local_6_V_we0 sc_out sc_logic 1 signal 8 } 
	{ x_local_6_V_d0 sc_out sc_lv 8 signal 8 } 
	{ x_local_7_V_address0 sc_out sc_lv 6 signal 9 } 
	{ x_local_7_V_ce0 sc_out sc_logic 1 signal 9 } 
	{ x_local_7_V_we0 sc_out sc_logic 1 signal 9 } 
	{ x_local_7_V_d0 sc_out sc_lv 8 signal 9 } 
	{ x_local_8_V_address0 sc_out sc_lv 6 signal 10 } 
	{ x_local_8_V_ce0 sc_out sc_logic 1 signal 10 } 
	{ x_local_8_V_we0 sc_out sc_logic 1 signal 10 } 
	{ x_local_8_V_d0 sc_out sc_lv 8 signal 10 } 
	{ x_local_9_V_address0 sc_out sc_lv 6 signal 11 } 
	{ x_local_9_V_ce0 sc_out sc_logic 1 signal 11 } 
	{ x_local_9_V_we0 sc_out sc_logic 1 signal 11 } 
	{ x_local_9_V_d0 sc_out sc_lv 8 signal 11 } 
	{ x_local_10_V_address0 sc_out sc_lv 6 signal 12 } 
	{ x_local_10_V_ce0 sc_out sc_logic 1 signal 12 } 
	{ x_local_10_V_we0 sc_out sc_logic 1 signal 12 } 
	{ x_local_10_V_d0 sc_out sc_lv 8 signal 12 } 
	{ x_local_11_V_address0 sc_out sc_lv 6 signal 13 } 
	{ x_local_11_V_ce0 sc_out sc_logic 1 signal 13 } 
	{ x_local_11_V_we0 sc_out sc_logic 1 signal 13 } 
	{ x_local_11_V_d0 sc_out sc_lv 8 signal 13 } 
	{ x_local_12_V_address0 sc_out sc_lv 6 signal 14 } 
	{ x_local_12_V_ce0 sc_out sc_logic 1 signal 14 } 
	{ x_local_12_V_we0 sc_out sc_logic 1 signal 14 } 
	{ x_local_12_V_d0 sc_out sc_lv 8 signal 14 } 
	{ x_local_13_V_address0 sc_out sc_lv 6 signal 15 } 
	{ x_local_13_V_ce0 sc_out sc_logic 1 signal 15 } 
	{ x_local_13_V_we0 sc_out sc_logic 1 signal 15 } 
	{ x_local_13_V_d0 sc_out sc_lv 8 signal 15 } 
	{ x_local_14_V_address0 sc_out sc_lv 6 signal 16 } 
	{ x_local_14_V_ce0 sc_out sc_logic 1 signal 16 } 
	{ x_local_14_V_we0 sc_out sc_logic 1 signal 16 } 
	{ x_local_14_V_d0 sc_out sc_lv 8 signal 16 } 
	{ x_local_15_V_address0 sc_out sc_lv 6 signal 17 } 
	{ x_local_15_V_ce0 sc_out sc_logic 1 signal 17 } 
	{ x_local_15_V_we0 sc_out sc_logic 1 signal 17 } 
	{ x_local_15_V_d0 sc_out sc_lv 8 signal 17 } 
	{ x_norm_in_V sc_in sc_lv 24 signal 18 } 
	{ x_norm_in_V_out_din sc_out sc_lv 24 signal 19 } 
	{ x_norm_in_V_out_full_n sc_in sc_logic 1 signal 19 } 
	{ x_norm_in_V_out_write sc_out sc_logic 1 signal 19 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "m_axi_x_V_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_V", "role": "AWVALID" }} , 
 	{ "name": "m_axi_x_V_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_V", "role": "AWREADY" }} , 
 	{ "name": "m_axi_x_V_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_V", "role": "AWADDR" }} , 
 	{ "name": "m_axi_x_V_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "x_V", "role": "AWID" }} , 
 	{ "name": "m_axi_x_V_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_V", "role": "AWLEN" }} , 
 	{ "name": "m_axi_x_V_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "x_V", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_x_V_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "x_V", "role": "AWBURST" }} , 
 	{ "name": "m_axi_x_V_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "x_V", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_x_V_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "x_V", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_x_V_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "x_V", "role": "AWPROT" }} , 
 	{ "name": "m_axi_x_V_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "x_V", "role": "AWQOS" }} , 
 	{ "name": "m_axi_x_V_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "x_V", "role": "AWREGION" }} , 
 	{ "name": "m_axi_x_V_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "x_V", "role": "AWUSER" }} , 
 	{ "name": "m_axi_x_V_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_V", "role": "WVALID" }} , 
 	{ "name": "m_axi_x_V_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_V", "role": "WREADY" }} , 
 	{ "name": "m_axi_x_V_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "x_V", "role": "WDATA" }} , 
 	{ "name": "m_axi_x_V_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "x_V", "role": "WSTRB" }} , 
 	{ "name": "m_axi_x_V_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_V", "role": "WLAST" }} , 
 	{ "name": "m_axi_x_V_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "x_V", "role": "WID" }} , 
 	{ "name": "m_axi_x_V_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "x_V", "role": "WUSER" }} , 
 	{ "name": "m_axi_x_V_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_V", "role": "ARVALID" }} , 
 	{ "name": "m_axi_x_V_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_V", "role": "ARREADY" }} , 
 	{ "name": "m_axi_x_V_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_V", "role": "ARADDR" }} , 
 	{ "name": "m_axi_x_V_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "x_V", "role": "ARID" }} , 
 	{ "name": "m_axi_x_V_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_V", "role": "ARLEN" }} , 
 	{ "name": "m_axi_x_V_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "x_V", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_x_V_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "x_V", "role": "ARBURST" }} , 
 	{ "name": "m_axi_x_V_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "x_V", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_x_V_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "x_V", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_x_V_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "x_V", "role": "ARPROT" }} , 
 	{ "name": "m_axi_x_V_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "x_V", "role": "ARQOS" }} , 
 	{ "name": "m_axi_x_V_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "x_V", "role": "ARREGION" }} , 
 	{ "name": "m_axi_x_V_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "x_V", "role": "ARUSER" }} , 
 	{ "name": "m_axi_x_V_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_V", "role": "RVALID" }} , 
 	{ "name": "m_axi_x_V_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_V", "role": "RREADY" }} , 
 	{ "name": "m_axi_x_V_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "x_V", "role": "RDATA" }} , 
 	{ "name": "m_axi_x_V_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_V", "role": "RLAST" }} , 
 	{ "name": "m_axi_x_V_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "x_V", "role": "RID" }} , 
 	{ "name": "m_axi_x_V_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "x_V", "role": "RUSER" }} , 
 	{ "name": "m_axi_x_V_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "x_V", "role": "RRESP" }} , 
 	{ "name": "m_axi_x_V_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_V", "role": "BVALID" }} , 
 	{ "name": "m_axi_x_V_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_V", "role": "BREADY" }} , 
 	{ "name": "m_axi_x_V_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "x_V", "role": "BRESP" }} , 
 	{ "name": "m_axi_x_V_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "x_V", "role": "BID" }} , 
 	{ "name": "m_axi_x_V_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "x_V", "role": "BUSER" }} , 
 	{ "name": "x_V_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_V_offset", "role": "default" }} , 
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
		"CDFG" : "load_data51",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "107", "EstimateLatencyMax" : "107",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "x_V", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "x_V_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "x_V_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "x_V_offset", "Type" : "None", "Direction" : "I"},
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
	load_data51 {
		x_V {Type I LastRead 8 FirstWrite -1}
		x_V_offset {Type I LastRead 0 FirstWrite -1}
		x_local_0_V {Type O LastRead -1 FirstWrite 9}
		x_local_1_V {Type O LastRead -1 FirstWrite 9}
		x_local_2_V {Type O LastRead -1 FirstWrite 9}
		x_local_3_V {Type O LastRead -1 FirstWrite 9}
		x_local_4_V {Type O LastRead -1 FirstWrite 9}
		x_local_5_V {Type O LastRead -1 FirstWrite 9}
		x_local_6_V {Type O LastRead -1 FirstWrite 9}
		x_local_7_V {Type O LastRead -1 FirstWrite 9}
		x_local_8_V {Type O LastRead -1 FirstWrite 9}
		x_local_9_V {Type O LastRead -1 FirstWrite 9}
		x_local_10_V {Type O LastRead -1 FirstWrite 9}
		x_local_11_V {Type O LastRead -1 FirstWrite 9}
		x_local_12_V {Type O LastRead -1 FirstWrite 9}
		x_local_13_V {Type O LastRead -1 FirstWrite 9}
		x_local_14_V {Type O LastRead -1 FirstWrite 9}
		x_local_15_V {Type O LastRead -1 FirstWrite 9}
		x_norm_in_V {Type I LastRead 6 FirstWrite -1}
		x_norm_in_V_out {Type O LastRead -1 FirstWrite 6}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "107", "Max" : "107"}
	, {"Name" : "Interval", "Min" : "107", "Max" : "107"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	x_V { m_axi {  { m_axi_x_V_AWVALID VALID 1 1 }  { m_axi_x_V_AWREADY READY 0 1 }  { m_axi_x_V_AWADDR ADDR 1 32 }  { m_axi_x_V_AWID ID 1 1 }  { m_axi_x_V_AWLEN LEN 1 32 }  { m_axi_x_V_AWSIZE SIZE 1 3 }  { m_axi_x_V_AWBURST BURST 1 2 }  { m_axi_x_V_AWLOCK LOCK 1 2 }  { m_axi_x_V_AWCACHE CACHE 1 4 }  { m_axi_x_V_AWPROT PROT 1 3 }  { m_axi_x_V_AWQOS QOS 1 4 }  { m_axi_x_V_AWREGION REGION 1 4 }  { m_axi_x_V_AWUSER USER 1 1 }  { m_axi_x_V_WVALID VALID 1 1 }  { m_axi_x_V_WREADY READY 0 1 }  { m_axi_x_V_WDATA DATA 1 64 }  { m_axi_x_V_WSTRB STRB 1 8 }  { m_axi_x_V_WLAST LAST 1 1 }  { m_axi_x_V_WID ID 1 1 }  { m_axi_x_V_WUSER USER 1 1 }  { m_axi_x_V_ARVALID VALID 1 1 }  { m_axi_x_V_ARREADY READY 0 1 }  { m_axi_x_V_ARADDR ADDR 1 32 }  { m_axi_x_V_ARID ID 1 1 }  { m_axi_x_V_ARLEN LEN 1 32 }  { m_axi_x_V_ARSIZE SIZE 1 3 }  { m_axi_x_V_ARBURST BURST 1 2 }  { m_axi_x_V_ARLOCK LOCK 1 2 }  { m_axi_x_V_ARCACHE CACHE 1 4 }  { m_axi_x_V_ARPROT PROT 1 3 }  { m_axi_x_V_ARQOS QOS 1 4 }  { m_axi_x_V_ARREGION REGION 1 4 }  { m_axi_x_V_ARUSER USER 1 1 }  { m_axi_x_V_RVALID VALID 0 1 }  { m_axi_x_V_RREADY READY 1 1 }  { m_axi_x_V_RDATA DATA 0 64 }  { m_axi_x_V_RLAST LAST 0 1 }  { m_axi_x_V_RID ID 0 1 }  { m_axi_x_V_RUSER USER 0 1 }  { m_axi_x_V_RRESP RESP 0 2 }  { m_axi_x_V_BVALID VALID 0 1 }  { m_axi_x_V_BREADY READY 1 1 }  { m_axi_x_V_BRESP RESP 0 2 }  { m_axi_x_V_BID ID 0 1 }  { m_axi_x_V_BUSER USER 0 1 } } }
	x_V_offset { ap_none {  { x_V_offset in_data 0 32 } } }
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
