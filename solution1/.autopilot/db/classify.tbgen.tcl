set C_TypeInfoList {{ 
"classify" : [[], { "return": [[], "void"]} , [{"ExternC" : 0}], [ {"in_stream": [[], {"reference": "0"}] }, {"out_stream": [[], {"reference": "1"}] }, {"num_images": [[], {"scalar": "int"}] }],[],""], 
"0": [ "stream<ap_axiu<64, 1, 1, 1> >", {"hls_type": {"stream": [[[[],"2"]],"3"]}}], 
"2": [ "ap_axiu<64, 1, 1, 1>", {"struct": [[],[{"D":[[], {"scalar": { "int": 64}}]},{"U":[[], {"scalar": { "int": 1}}]},{"TI":[[], {"scalar": { "int": 1}}]},{"TD":[[], {"scalar": { "int": 1}}]}],[{ "data": [[], "4"]},{ "keep": [[], "5"]},{ "strb": [[], "5"]},{ "user": [[], "6"]},{ "last": [[], "6"]},{ "id": [[], "6"]},{ "dest": [[], "6"]}],""]}], 
"4": [ "ap_uint<64>", {"hls_type": {"ap_uint": [[[[], {"scalar": { "int": 64}}]],""]}}], 
"5": [ "ap_uint<8>", {"hls_type": {"ap_uint": [[[[], {"scalar": { "int": 8}}]],""]}}], 
"6": [ "ap_uint<1>", {"hls_type": {"ap_uint": [[[[], {"scalar": { "int": 1}}]],""]}}], 
"1": [ "stream<result_pkt>", {"hls_type": {"stream": [[[[],"7"]],"3"]}}], 
"7": [ "result_pkt", {"struct": [[],[],[{ "data": [[], "8"]},{ "keep": [[], "6"]},{ "strb": [[], "6"]},{ "last": [[], "6"]}],""]}], 
"8": [ "ap_fixed<32, 16, 5, 3, 0>", {"hls_type": {"ap_fixed": [[[[], {"scalar": { "int": 32}}],[[], {"scalar": { "int": 16}}],[[], {"scalar": { "9": 5}}],[[], {"scalar": { "10": 3}}],[[], {"scalar": { "int": 0}}]],""]}}], 
"9": [ "ap_q_mode", {"enum": [[],[],[{"SC_RND":  {"scalar": "__integer__"}},{"SC_RND_ZERO":  {"scalar": "__integer__"}},{"SC_RND_MIN_INF":  {"scalar": "__integer__"}},{"SC_RND_INF":  {"scalar": "__integer__"}},{"SC_RND_CONV":  {"scalar": "__integer__"}},{"SC_TRN":  {"scalar": "__integer__"}},{"SC_TRN_ZERO":  {"scalar": "__integer__"}}],""]}], 
"10": [ "ap_o_mode", {"enum": [[],[],[{"SC_SAT":  {"scalar": "__integer__"}},{"SC_SAT_ZERO":  {"scalar": "__integer__"}},{"SC_SAT_SYM":  {"scalar": "__integer__"}},{"SC_WRAP":  {"scalar": "__integer__"}},{"SC_WRAP_SM":  {"scalar": "__integer__"}}],""]}],
"3": ["hls", ""]
}}
set moduleName classify
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {classify}
set C_modelType { void 0 }
set C_modelArgList {
	{ in_stream_V_data_V int 64 regular {axi_s 0 volatile  { in_stream Data } }  }
	{ in_stream_V_keep_V int 8 regular {axi_s 0 volatile  { in_stream Keep } }  }
	{ in_stream_V_strb_V int 8 regular {axi_s 0 volatile  { in_stream Strb } }  }
	{ in_stream_V_user_V int 1 regular {axi_s 0 volatile  { in_stream User } }  }
	{ in_stream_V_last_V int 1 regular {axi_s 0 volatile  { in_stream Last } }  }
	{ in_stream_V_id_V int 1 regular {axi_s 0 volatile  { in_stream ID } }  }
	{ in_stream_V_dest_V int 1 regular {axi_s 0 volatile  { in_stream Dest } }  }
	{ out_stream_V_data_V int 32 regular {axi_s 1 volatile  { out_stream Data } }  }
	{ out_stream_V_keep_V int 1 regular {axi_s 1 volatile  { out_stream Keep } }  }
	{ out_stream_V_strb_V int 1 regular {axi_s 1 volatile  { out_stream Strb } }  }
	{ out_stream_V_last_V int 1 regular {axi_s 1 volatile  { out_stream Last } }  }
	{ num_images int 32 unused {axi_slave 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "in_stream_V_data_V", "interface" : "axis", "bitwidth" : 64, "direction" : "READONLY", "bitSlice":[{"low":0,"up":63,"cElement": [{"cName": "in_stream.V.data.V","cData": "uint64","bit_use": { "low": 0,"up": 63},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "in_stream_V_keep_V", "interface" : "axis", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "in_stream.V.keep.V","cData": "uint8","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "in_stream_V_strb_V", "interface" : "axis", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "in_stream.V.strb.V","cData": "uint8","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "in_stream_V_user_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "in_stream.V.user.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "in_stream_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "in_stream.V.last.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "in_stream_V_id_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "in_stream.V.id.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "in_stream_V_dest_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "in_stream.V.dest.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "out_stream_V_data_V", "interface" : "axis", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "out_stream.V.data.V","cData": "int32","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "out_stream_V_keep_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "out_stream.V.keep.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "out_stream_V_strb_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "out_stream.V.strb.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "out_stream_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "out_stream.V.last.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "num_images", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "num_images","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}], "offset" : {"in":16}, "offset_end" : {"in":23}} ]}
# RTL Port declarations: 
set portNum 35
set portList { 
	{ s_axi_control_AWVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_AWREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_AWADDR sc_in sc_lv 5 signal -1 } 
	{ s_axi_control_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_control_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_control_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_ARADDR sc_in sc_lv 5 signal -1 } 
	{ s_axi_control_RVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_RREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_RDATA sc_out sc_lv 32 signal -1 } 
	{ s_axi_control_RRESP sc_out sc_lv 2 signal -1 } 
	{ s_axi_control_BVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_BREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_BRESP sc_out sc_lv 2 signal -1 } 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ interrupt sc_out sc_logic 1 signal -1 } 
	{ in_stream_TDATA sc_in sc_lv 64 signal 0 } 
	{ in_stream_TKEEP sc_in sc_lv 8 signal 1 } 
	{ in_stream_TSTRB sc_in sc_lv 8 signal 2 } 
	{ in_stream_TUSER sc_in sc_lv 1 signal 3 } 
	{ in_stream_TLAST sc_in sc_lv 1 signal 4 } 
	{ in_stream_TID sc_in sc_lv 1 signal 5 } 
	{ in_stream_TDEST sc_in sc_lv 1 signal 6 } 
	{ out_stream_TDATA sc_out sc_lv 32 signal 7 } 
	{ out_stream_TKEEP sc_out sc_lv 1 signal 8 } 
	{ out_stream_TSTRB sc_out sc_lv 1 signal 9 } 
	{ out_stream_TLAST sc_out sc_lv 1 signal 10 } 
	{ in_stream_TVALID sc_in sc_logic 1 invld 6 } 
	{ in_stream_TREADY sc_out sc_logic 1 inacc 6 } 
	{ out_stream_TVALID sc_out sc_logic 1 outvld 10 } 
	{ out_stream_TREADY sc_in sc_logic 1 outacc 10 } 
}
set NewPortList {[ 
	{ "name": "s_axi_control_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "control", "role": "AWADDR" },"address":[{"name":"classify","role":"start","value":"0","valid_bit":"0"},{"name":"classify","role":"continue","value":"0","valid_bit":"4"},{"name":"classify","role":"auto_start","value":"0","valid_bit":"7"},{"name":"num_images","role":"data","value":"16"}] },
	{ "name": "s_axi_control_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWVALID" } },
	{ "name": "s_axi_control_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWREADY" } },
	{ "name": "s_axi_control_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WVALID" } },
	{ "name": "s_axi_control_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WREADY" } },
	{ "name": "s_axi_control_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "control", "role": "WDATA" } },
	{ "name": "s_axi_control_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "control", "role": "WSTRB" } },
	{ "name": "s_axi_control_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "control", "role": "ARADDR" },"address":[{"name":"classify","role":"start","value":"0","valid_bit":"0"},{"name":"classify","role":"done","value":"0","valid_bit":"1"},{"name":"classify","role":"idle","value":"0","valid_bit":"2"},{"name":"classify","role":"ready","value":"0","valid_bit":"3"},{"name":"classify","role":"auto_start","value":"0","valid_bit":"7"}] },
	{ "name": "s_axi_control_ARVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "ARVALID" } },
	{ "name": "s_axi_control_ARREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "ARREADY" } },
	{ "name": "s_axi_control_RVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "RVALID" } },
	{ "name": "s_axi_control_RREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "RREADY" } },
	{ "name": "s_axi_control_RDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "control", "role": "RDATA" } },
	{ "name": "s_axi_control_RRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "control", "role": "RRESP" } },
	{ "name": "s_axi_control_BVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "BVALID" } },
	{ "name": "s_axi_control_BREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "BREADY" } },
	{ "name": "s_axi_control_BRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "control", "role": "BRESP" } },
	{ "name": "interrupt", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "interrupt" } }, 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "in_stream_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "in_stream_V_data_V", "role": "default" }} , 
 	{ "name": "in_stream_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "in_stream_V_keep_V", "role": "default" }} , 
 	{ "name": "in_stream_TSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "in_stream_V_strb_V", "role": "default" }} , 
 	{ "name": "in_stream_TUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "in_stream_V_user_V", "role": "default" }} , 
 	{ "name": "in_stream_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "in_stream_V_last_V", "role": "default" }} , 
 	{ "name": "in_stream_TID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "in_stream_V_id_V", "role": "default" }} , 
 	{ "name": "in_stream_TDEST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "in_stream_V_dest_V", "role": "default" }} , 
 	{ "name": "out_stream_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "out_stream_V_data_V", "role": "default" }} , 
 	{ "name": "out_stream_TKEEP", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "out_stream_V_keep_V", "role": "default" }} , 
 	{ "name": "out_stream_TSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "out_stream_V_strb_V", "role": "default" }} , 
 	{ "name": "out_stream_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "out_stream_V_last_V", "role": "default" }} , 
 	{ "name": "in_stream_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "in_stream_V_dest_V", "role": "default" }} , 
 	{ "name": "in_stream_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "in_stream_V_dest_V", "role": "default" }} , 
 	{ "name": "out_stream_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "out_stream_V_last_V", "role": "default" }} , 
 	{ "name": "out_stream_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "out_stream_V_last_V", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "classify",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2439842", "EstimateLatencyMax" : "2439842",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"InputProcess" : [
			{"ID" : "2", "Name" : "dataflow_in_loop_Bat_1_U0"}],
		"OutputProcess" : [
			{"ID" : "2", "Name" : "dataflow_in_loop_Bat_1_U0"}],
		"Port" : [
			{"Name" : "in_stream_V_data_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "dataflow_in_loop_Bat_1_U0", "Port" : "in_stream_V_data_V"}]},
			{"Name" : "in_stream_V_keep_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "dataflow_in_loop_Bat_1_U0", "Port" : "in_stream_V_keep_V"}]},
			{"Name" : "in_stream_V_strb_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "dataflow_in_loop_Bat_1_U0", "Port" : "in_stream_V_strb_V"}]},
			{"Name" : "in_stream_V_user_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "dataflow_in_loop_Bat_1_U0", "Port" : "in_stream_V_user_V"}]},
			{"Name" : "in_stream_V_last_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "dataflow_in_loop_Bat_1_U0", "Port" : "in_stream_V_last_V"}]},
			{"Name" : "in_stream_V_id_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "dataflow_in_loop_Bat_1_U0", "Port" : "in_stream_V_id_V"}]},
			{"Name" : "in_stream_V_dest_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "dataflow_in_loop_Bat_1_U0", "Port" : "in_stream_V_dest_V"}]},
			{"Name" : "out_stream_V_data_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "dataflow_in_loop_Bat_1_U0", "Port" : "out_stream_V_data_V"}]},
			{"Name" : "out_stream_V_keep_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "dataflow_in_loop_Bat_1_U0", "Port" : "out_stream_V_keep_V"}]},
			{"Name" : "out_stream_V_strb_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "dataflow_in_loop_Bat_1_U0", "Port" : "out_stream_V_strb_V"}]},
			{"Name" : "out_stream_V_last_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "dataflow_in_loop_Bat_1_U0", "Port" : "out_stream_V_last_V"}]},
			{"Name" : "num_images", "Type" : "None", "Direction" : "I"},
			{"Name" : "svs_V_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "dataflow_in_loop_Bat_1_U0", "Port" : "svs_V_0"}]},
			{"Name" : "svs_V_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "dataflow_in_loop_Bat_1_U0", "Port" : "svs_V_1"}]},
			{"Name" : "svs_V_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "dataflow_in_loop_Bat_1_U0", "Port" : "svs_V_2"}]},
			{"Name" : "svs_V_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "dataflow_in_loop_Bat_1_U0", "Port" : "svs_V_3"}]},
			{"Name" : "svs_V_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "dataflow_in_loop_Bat_1_U0", "Port" : "svs_V_4"}]},
			{"Name" : "svs_V_5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "dataflow_in_loop_Bat_1_U0", "Port" : "svs_V_5"}]},
			{"Name" : "svs_V_6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "dataflow_in_loop_Bat_1_U0", "Port" : "svs_V_6"}]},
			{"Name" : "svs_V_7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "dataflow_in_loop_Bat_1_U0", "Port" : "svs_V_7"}]},
			{"Name" : "svs_V_8", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "dataflow_in_loop_Bat_1_U0", "Port" : "svs_V_8"}]},
			{"Name" : "svs_V_9", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "dataflow_in_loop_Bat_1_U0", "Port" : "svs_V_9"}]},
			{"Name" : "svs_V_10", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "dataflow_in_loop_Bat_1_U0", "Port" : "svs_V_10"}]},
			{"Name" : "svs_V_11", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "dataflow_in_loop_Bat_1_U0", "Port" : "svs_V_11"}]},
			{"Name" : "svs_V_12", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "dataflow_in_loop_Bat_1_U0", "Port" : "svs_V_12"}]},
			{"Name" : "svs_V_13", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "dataflow_in_loop_Bat_1_U0", "Port" : "svs_V_13"}]},
			{"Name" : "svs_V_14", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "dataflow_in_loop_Bat_1_U0", "Port" : "svs_V_14"}]},
			{"Name" : "svs_V_15", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "dataflow_in_loop_Bat_1_U0", "Port" : "svs_V_15"}]},
			{"Name" : "alphas_V_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "dataflow_in_loop_Bat_1_U0", "Port" : "alphas_V_0"}]},
			{"Name" : "alphas_V_143", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "dataflow_in_loop_Bat_1_U0", "Port" : "alphas_V_143"}]},
			{"Name" : "alphas_V_250", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "dataflow_in_loop_Bat_1_U0", "Port" : "alphas_V_250"}]},
			{"Name" : "alphas_V_351", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "dataflow_in_loop_Bat_1_U0", "Port" : "alphas_V_351"}]},
			{"Name" : "alphas_V_452", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "dataflow_in_loop_Bat_1_U0", "Port" : "alphas_V_452"}]},
			{"Name" : "alphas_V_553", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "dataflow_in_loop_Bat_1_U0", "Port" : "alphas_V_553"}]},
			{"Name" : "alphas_V_654", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "dataflow_in_loop_Bat_1_U0", "Port" : "alphas_V_654"}]},
			{"Name" : "alphas_V_755", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "dataflow_in_loop_Bat_1_U0", "Port" : "alphas_V_755"}]},
			{"Name" : "alphas_V_856", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "dataflow_in_loop_Bat_1_U0", "Port" : "alphas_V_856"}]},
			{"Name" : "alphas_V_957", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "dataflow_in_loop_Bat_1_U0", "Port" : "alphas_V_957"}]},
			{"Name" : "alphas_V_1044", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "dataflow_in_loop_Bat_1_U0", "Port" : "alphas_V_1044"}]},
			{"Name" : "alphas_V_1145", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "dataflow_in_loop_Bat_1_U0", "Port" : "alphas_V_1145"}]},
			{"Name" : "alphas_V_1246", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "dataflow_in_loop_Bat_1_U0", "Port" : "alphas_V_1246"}]},
			{"Name" : "alphas_V_1347", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "dataflow_in_loop_Bat_1_U0", "Port" : "alphas_V_1347"}]},
			{"Name" : "alphas_V_1448", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "dataflow_in_loop_Bat_1_U0", "Port" : "alphas_V_1448"}]},
			{"Name" : "alphas_V_1549", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "dataflow_in_loop_Bat_1_U0", "Port" : "alphas_V_1549"}]},
			{"Name" : "sv_norms_V_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "dataflow_in_loop_Bat_1_U0", "Port" : "sv_norms_V_0"}]},
			{"Name" : "sv_norms_V_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "dataflow_in_loop_Bat_1_U0", "Port" : "sv_norms_V_1"}]},
			{"Name" : "sv_norms_V_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "dataflow_in_loop_Bat_1_U0", "Port" : "sv_norms_V_2"}]},
			{"Name" : "sv_norms_V_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "dataflow_in_loop_Bat_1_U0", "Port" : "sv_norms_V_3"}]},
			{"Name" : "sv_norms_V_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "dataflow_in_loop_Bat_1_U0", "Port" : "sv_norms_V_4"}]},
			{"Name" : "sv_norms_V_5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "dataflow_in_loop_Bat_1_U0", "Port" : "sv_norms_V_5"}]},
			{"Name" : "sv_norms_V_6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "dataflow_in_loop_Bat_1_U0", "Port" : "sv_norms_V_6"}]},
			{"Name" : "sv_norms_V_7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "dataflow_in_loop_Bat_1_U0", "Port" : "sv_norms_V_7"}]},
			{"Name" : "sv_norms_V_8", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "dataflow_in_loop_Bat_1_U0", "Port" : "sv_norms_V_8"}]},
			{"Name" : "sv_norms_V_9", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "dataflow_in_loop_Bat_1_U0", "Port" : "sv_norms_V_9"}]},
			{"Name" : "sv_norms_V_10", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "dataflow_in_loop_Bat_1_U0", "Port" : "sv_norms_V_10"}]},
			{"Name" : "sv_norms_V_11", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "dataflow_in_loop_Bat_1_U0", "Port" : "sv_norms_V_11"}]},
			{"Name" : "sv_norms_V_12", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "dataflow_in_loop_Bat_1_U0", "Port" : "sv_norms_V_12"}]},
			{"Name" : "sv_norms_V_13", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "dataflow_in_loop_Bat_1_U0", "Port" : "sv_norms_V_13"}]},
			{"Name" : "sv_norms_V_14", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "dataflow_in_loop_Bat_1_U0", "Port" : "sv_norms_V_14"}]},
			{"Name" : "sv_norms_V_15", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "dataflow_in_loop_Bat_1_U0", "Port" : "sv_norms_V_15"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.classify_control_s_axi_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_Bat_1_U0", "Parent" : "0", "Child" : ["3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "75", "76", "77", "78", "79", "80", "81", "82", "83", "84", "85", "86", "87", "88", "89"],
		"CDFG" : "dataflow_in_loop_Bat_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1039", "EstimateLatencyMax" : "1039",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"InputProcess" : [
			{"ID" : "21", "Name" : "load_and_calc_norm_U0", "ReadyCount" : "load_and_calc_norm_U0_ap_ready_count"},
			{"ID" : "19", "Name" : "dataflow_in_loop_Bat_2_U0", "ReadyCount" : "dataflow_in_loop_Bat_2_U0_ap_ready_count"}],
		"OutputProcess" : [
			{"ID" : "79", "Name" : "p_ADSD_Classifier_cp_U0"}],
		"Port" : [
			{"Name" : "in_stream_V_data_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "21", "SubInstance" : "load_and_calc_norm_U0", "Port" : "in_stream_V_data_V"}]},
			{"Name" : "in_stream_V_keep_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "21", "SubInstance" : "load_and_calc_norm_U0", "Port" : "in_stream_V_keep_V"}]},
			{"Name" : "in_stream_V_strb_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "21", "SubInstance" : "load_and_calc_norm_U0", "Port" : "in_stream_V_strb_V"}]},
			{"Name" : "in_stream_V_user_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "21", "SubInstance" : "load_and_calc_norm_U0", "Port" : "in_stream_V_user_V"}]},
			{"Name" : "in_stream_V_last_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "21", "SubInstance" : "load_and_calc_norm_U0", "Port" : "in_stream_V_last_V"}]},
			{"Name" : "in_stream_V_id_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "21", "SubInstance" : "load_and_calc_norm_U0", "Port" : "in_stream_V_id_V"}]},
			{"Name" : "in_stream_V_dest_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "21", "SubInstance" : "load_and_calc_norm_U0", "Port" : "in_stream_V_dest_V"}]},
			{"Name" : "n_0_i_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_stream_V_data_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "79", "SubInstance" : "p_ADSD_Classifier_cp_U0", "Port" : "out_stream_V_data_V"}]},
			{"Name" : "out_stream_V_keep_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "79", "SubInstance" : "p_ADSD_Classifier_cp_U0", "Port" : "out_stream_V_keep_V"}]},
			{"Name" : "out_stream_V_strb_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "79", "SubInstance" : "p_ADSD_Classifier_cp_U0", "Port" : "out_stream_V_strb_V"}]},
			{"Name" : "out_stream_V_last_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "79", "SubInstance" : "p_ADSD_Classifier_cp_U0", "Port" : "out_stream_V_last_V"}]},
			{"Name" : "svs_V_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "compute_class_U0", "Port" : "svs_V_0"}]},
			{"Name" : "svs_V_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "compute_class_U0", "Port" : "svs_V_1"}]},
			{"Name" : "svs_V_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "compute_class_U0", "Port" : "svs_V_2"}]},
			{"Name" : "svs_V_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "compute_class_U0", "Port" : "svs_V_3"}]},
			{"Name" : "svs_V_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "compute_class_U0", "Port" : "svs_V_4"}]},
			{"Name" : "svs_V_5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "compute_class_U0", "Port" : "svs_V_5"}]},
			{"Name" : "svs_V_6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "compute_class_U0", "Port" : "svs_V_6"}]},
			{"Name" : "svs_V_7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "compute_class_U0", "Port" : "svs_V_7"}]},
			{"Name" : "svs_V_8", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "compute_class_U0", "Port" : "svs_V_8"}]},
			{"Name" : "svs_V_9", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "compute_class_U0", "Port" : "svs_V_9"}]},
			{"Name" : "svs_V_10", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "compute_class_U0", "Port" : "svs_V_10"}]},
			{"Name" : "svs_V_11", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "compute_class_U0", "Port" : "svs_V_11"}]},
			{"Name" : "svs_V_12", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "compute_class_U0", "Port" : "svs_V_12"}]},
			{"Name" : "svs_V_13", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "compute_class_U0", "Port" : "svs_V_13"}]},
			{"Name" : "svs_V_14", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "compute_class_U0", "Port" : "svs_V_14"}]},
			{"Name" : "svs_V_15", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "compute_class_U0", "Port" : "svs_V_15"}]},
			{"Name" : "alphas_V_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "compute_class_U0", "Port" : "alphas_V_0"}]},
			{"Name" : "alphas_V_143", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "compute_class_U0", "Port" : "alphas_V_143"}]},
			{"Name" : "alphas_V_250", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "compute_class_U0", "Port" : "alphas_V_250"}]},
			{"Name" : "alphas_V_351", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "compute_class_U0", "Port" : "alphas_V_351"}]},
			{"Name" : "alphas_V_452", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "compute_class_U0", "Port" : "alphas_V_452"}]},
			{"Name" : "alphas_V_553", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "compute_class_U0", "Port" : "alphas_V_553"}]},
			{"Name" : "alphas_V_654", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "compute_class_U0", "Port" : "alphas_V_654"}]},
			{"Name" : "alphas_V_755", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "compute_class_U0", "Port" : "alphas_V_755"}]},
			{"Name" : "alphas_V_856", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "compute_class_U0", "Port" : "alphas_V_856"}]},
			{"Name" : "alphas_V_957", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "compute_class_U0", "Port" : "alphas_V_957"}]},
			{"Name" : "alphas_V_1044", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "compute_class_U0", "Port" : "alphas_V_1044"}]},
			{"Name" : "alphas_V_1145", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "compute_class_U0", "Port" : "alphas_V_1145"}]},
			{"Name" : "alphas_V_1246", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "compute_class_U0", "Port" : "alphas_V_1246"}]},
			{"Name" : "alphas_V_1347", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "compute_class_U0", "Port" : "alphas_V_1347"}]},
			{"Name" : "alphas_V_1448", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "compute_class_U0", "Port" : "alphas_V_1448"}]},
			{"Name" : "alphas_V_1549", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "compute_class_U0", "Port" : "alphas_V_1549"}]},
			{"Name" : "sv_norms_V_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "compute_class_U0", "Port" : "sv_norms_V_0"}]},
			{"Name" : "sv_norms_V_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "compute_class_U0", "Port" : "sv_norms_V_1"}]},
			{"Name" : "sv_norms_V_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "compute_class_U0", "Port" : "sv_norms_V_2"}]},
			{"Name" : "sv_norms_V_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "compute_class_U0", "Port" : "sv_norms_V_3"}]},
			{"Name" : "sv_norms_V_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "compute_class_U0", "Port" : "sv_norms_V_4"}]},
			{"Name" : "sv_norms_V_5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "compute_class_U0", "Port" : "sv_norms_V_5"}]},
			{"Name" : "sv_norms_V_6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "compute_class_U0", "Port" : "sv_norms_V_6"}]},
			{"Name" : "sv_norms_V_7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "compute_class_U0", "Port" : "sv_norms_V_7"}]},
			{"Name" : "sv_norms_V_8", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "compute_class_U0", "Port" : "sv_norms_V_8"}]},
			{"Name" : "sv_norms_V_9", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "compute_class_U0", "Port" : "sv_norms_V_9"}]},
			{"Name" : "sv_norms_V_10", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "compute_class_U0", "Port" : "sv_norms_V_10"}]},
			{"Name" : "sv_norms_V_11", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "compute_class_U0", "Port" : "sv_norms_V_11"}]},
			{"Name" : "sv_norms_V_12", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "compute_class_U0", "Port" : "sv_norms_V_12"}]},
			{"Name" : "sv_norms_V_13", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "compute_class_U0", "Port" : "sv_norms_V_13"}]},
			{"Name" : "sv_norms_V_14", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "compute_class_U0", "Port" : "sv_norms_V_14"}]},
			{"Name" : "sv_norms_V_15", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "compute_class_U0", "Port" : "sv_norms_V_15"}]}]},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_Bat_1_U0.x_local_0_V_U", "Parent" : "2"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_Bat_1_U0.x_local_1_V_U", "Parent" : "2"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_Bat_1_U0.x_local_2_V_U", "Parent" : "2"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_Bat_1_U0.x_local_3_V_U", "Parent" : "2"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_Bat_1_U0.x_local_4_V_U", "Parent" : "2"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_Bat_1_U0.x_local_5_V_U", "Parent" : "2"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_Bat_1_U0.x_local_6_V_U", "Parent" : "2"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_Bat_1_U0.x_local_7_V_U", "Parent" : "2"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_Bat_1_U0.x_local_8_V_U", "Parent" : "2"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_Bat_1_U0.x_local_9_V_U", "Parent" : "2"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_Bat_1_U0.x_local_10_V_U", "Parent" : "2"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_Bat_1_U0.x_local_11_V_U", "Parent" : "2"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_Bat_1_U0.x_local_12_V_U", "Parent" : "2"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_Bat_1_U0.x_local_13_V_U", "Parent" : "2"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_Bat_1_U0.x_local_14_V_U", "Parent" : "2"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_Bat_1_U0.x_local_15_V_U", "Parent" : "2"},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_Bat_1_U0.dataflow_in_loop_Bat_2_U0", "Parent" : "2",
		"CDFG" : "dataflow_in_loop_Bat_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "n_0_i_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "n_0_i_i_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "20", "DependentChan" : "80",
				"BlockSignal" : [
					{"Name" : "n_0_i_i_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_Bat_1_U0.dataflow_in_loop_Bat_1_1_U0", "Parent" : "2",
		"CDFG" : "dataflow_in_loop_Bat_1_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"StartSource" : "19",
		"StartFifo" : "start_for_dataflobgk_U",
		"Port" : [
			{"Name" : "n_0_i_i", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "19", "DependentChan" : "80",
				"BlockSignal" : [
					{"Name" : "n_0_i_i_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "n_0_i_i_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "78", "DependentChan" : "81",
				"BlockSignal" : [
					{"Name" : "n_0_i_i_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_Bat_1_U0.load_and_calc_norm_U0", "Parent" : "2",
		"CDFG" : "load_and_calc_norm",
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
			{"Name" : "x_local_0_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "22", "DependentChan" : "3"},
			{"Name" : "x_local_1_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "22", "DependentChan" : "4"},
			{"Name" : "x_local_2_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "22", "DependentChan" : "5"},
			{"Name" : "x_local_3_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "22", "DependentChan" : "6"},
			{"Name" : "x_local_4_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "22", "DependentChan" : "7"},
			{"Name" : "x_local_5_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "22", "DependentChan" : "8"},
			{"Name" : "x_local_6_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "22", "DependentChan" : "9"},
			{"Name" : "x_local_7_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "22", "DependentChan" : "10"},
			{"Name" : "x_local_8_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "22", "DependentChan" : "11"},
			{"Name" : "x_local_9_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "22", "DependentChan" : "12"},
			{"Name" : "x_local_10_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "22", "DependentChan" : "13"},
			{"Name" : "x_local_11_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "22", "DependentChan" : "14"},
			{"Name" : "x_local_12_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "22", "DependentChan" : "15"},
			{"Name" : "x_local_13_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "22", "DependentChan" : "16"},
			{"Name" : "x_local_14_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "22", "DependentChan" : "17"},
			{"Name" : "x_local_15_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "22", "DependentChan" : "18"}]},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_Bat_1_U0.compute_class_U0", "Parent" : "2", "Child" : ["23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "55", "56", "57", "58", "59", "60", "61", "62", "63", "64", "65", "66", "67", "68", "69", "70", "71", "72", "73", "74"],
		"CDFG" : "compute_class",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "937", "EstimateLatencyMax" : "937",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "x_local_0_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "21", "DependentChan" : "3"},
			{"Name" : "x_local_1_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "21", "DependentChan" : "4"},
			{"Name" : "x_local_2_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "21", "DependentChan" : "5"},
			{"Name" : "x_local_3_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "21", "DependentChan" : "6"},
			{"Name" : "x_local_4_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "21", "DependentChan" : "7"},
			{"Name" : "x_local_5_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "21", "DependentChan" : "8"},
			{"Name" : "x_local_6_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "21", "DependentChan" : "9"},
			{"Name" : "x_local_7_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "21", "DependentChan" : "10"},
			{"Name" : "x_local_8_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "21", "DependentChan" : "11"},
			{"Name" : "x_local_9_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "21", "DependentChan" : "12"},
			{"Name" : "x_local_10_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "21", "DependentChan" : "13"},
			{"Name" : "x_local_11_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "21", "DependentChan" : "14"},
			{"Name" : "x_local_12_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "21", "DependentChan" : "15"},
			{"Name" : "x_local_13_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "21", "DependentChan" : "16"},
			{"Name" : "x_local_14_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "21", "DependentChan" : "17"},
			{"Name" : "x_local_15_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "21", "DependentChan" : "18"},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I", "DependentProc" : "21", "DependentChan" : "82"},
			{"Name" : "svs_V_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "svs_V_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "svs_V_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "svs_V_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "svs_V_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "svs_V_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "svs_V_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "svs_V_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "svs_V_8", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "svs_V_9", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "svs_V_10", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "svs_V_11", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "svs_V_12", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "svs_V_13", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "svs_V_14", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "svs_V_15", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "alphas_V_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "alphas_V_143", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "alphas_V_250", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "alphas_V_351", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "alphas_V_452", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "alphas_V_553", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "alphas_V_654", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "alphas_V_755", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "alphas_V_856", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "alphas_V_957", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "alphas_V_1044", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "alphas_V_1145", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "alphas_V_1246", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "alphas_V_1347", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "alphas_V_1448", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "alphas_V_1549", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sv_norms_V_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sv_norms_V_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sv_norms_V_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sv_norms_V_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sv_norms_V_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sv_norms_V_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sv_norms_V_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sv_norms_V_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sv_norms_V_8", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sv_norms_V_9", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sv_norms_V_10", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sv_norms_V_11", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sv_norms_V_12", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sv_norms_V_13", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sv_norms_V_14", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sv_norms_V_15", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "23", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_Bat_1_U0.compute_class_U0.svs_V_0_U", "Parent" : "22"},
	{"ID" : "24", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_Bat_1_U0.compute_class_U0.svs_V_1_U", "Parent" : "22"},
	{"ID" : "25", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_Bat_1_U0.compute_class_U0.svs_V_2_U", "Parent" : "22"},
	{"ID" : "26", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_Bat_1_U0.compute_class_U0.svs_V_3_U", "Parent" : "22"},
	{"ID" : "27", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_Bat_1_U0.compute_class_U0.svs_V_4_U", "Parent" : "22"},
	{"ID" : "28", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_Bat_1_U0.compute_class_U0.svs_V_5_U", "Parent" : "22"},
	{"ID" : "29", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_Bat_1_U0.compute_class_U0.svs_V_6_U", "Parent" : "22"},
	{"ID" : "30", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_Bat_1_U0.compute_class_U0.svs_V_7_U", "Parent" : "22"},
	{"ID" : "31", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_Bat_1_U0.compute_class_U0.svs_V_8_U", "Parent" : "22"},
	{"ID" : "32", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_Bat_1_U0.compute_class_U0.svs_V_9_U", "Parent" : "22"},
	{"ID" : "33", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_Bat_1_U0.compute_class_U0.svs_V_10_U", "Parent" : "22"},
	{"ID" : "34", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_Bat_1_U0.compute_class_U0.svs_V_11_U", "Parent" : "22"},
	{"ID" : "35", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_Bat_1_U0.compute_class_U0.svs_V_12_U", "Parent" : "22"},
	{"ID" : "36", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_Bat_1_U0.compute_class_U0.svs_V_13_U", "Parent" : "22"},
	{"ID" : "37", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_Bat_1_U0.compute_class_U0.svs_V_14_U", "Parent" : "22"},
	{"ID" : "38", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_Bat_1_U0.compute_class_U0.svs_V_15_U", "Parent" : "22"},
	{"ID" : "39", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_Bat_1_U0.compute_class_U0.alphas_V_0_U", "Parent" : "22"},
	{"ID" : "40", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_Bat_1_U0.compute_class_U0.alphas_V_143_U", "Parent" : "22"},
	{"ID" : "41", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_Bat_1_U0.compute_class_U0.alphas_V_250_U", "Parent" : "22"},
	{"ID" : "42", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_Bat_1_U0.compute_class_U0.alphas_V_351_U", "Parent" : "22"},
	{"ID" : "43", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_Bat_1_U0.compute_class_U0.alphas_V_452_U", "Parent" : "22"},
	{"ID" : "44", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_Bat_1_U0.compute_class_U0.alphas_V_553_U", "Parent" : "22"},
	{"ID" : "45", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_Bat_1_U0.compute_class_U0.alphas_V_654_U", "Parent" : "22"},
	{"ID" : "46", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_Bat_1_U0.compute_class_U0.alphas_V_755_U", "Parent" : "22"},
	{"ID" : "47", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_Bat_1_U0.compute_class_U0.alphas_V_856_U", "Parent" : "22"},
	{"ID" : "48", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_Bat_1_U0.compute_class_U0.alphas_V_957_U", "Parent" : "22"},
	{"ID" : "49", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_Bat_1_U0.compute_class_U0.alphas_V_1044_U", "Parent" : "22"},
	{"ID" : "50", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_Bat_1_U0.compute_class_U0.alphas_V_1145_U", "Parent" : "22"},
	{"ID" : "51", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_Bat_1_U0.compute_class_U0.alphas_V_1246_U", "Parent" : "22"},
	{"ID" : "52", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_Bat_1_U0.compute_class_U0.alphas_V_1347_U", "Parent" : "22"},
	{"ID" : "53", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_Bat_1_U0.compute_class_U0.alphas_V_1448_U", "Parent" : "22"},
	{"ID" : "54", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_Bat_1_U0.compute_class_U0.alphas_V_1549_U", "Parent" : "22"},
	{"ID" : "55", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_Bat_1_U0.compute_class_U0.sv_norms_V_0_U", "Parent" : "22"},
	{"ID" : "56", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_Bat_1_U0.compute_class_U0.sv_norms_V_1_U", "Parent" : "22"},
	{"ID" : "57", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_Bat_1_U0.compute_class_U0.sv_norms_V_2_U", "Parent" : "22"},
	{"ID" : "58", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_Bat_1_U0.compute_class_U0.sv_norms_V_3_U", "Parent" : "22"},
	{"ID" : "59", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_Bat_1_U0.compute_class_U0.sv_norms_V_4_U", "Parent" : "22"},
	{"ID" : "60", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_Bat_1_U0.compute_class_U0.sv_norms_V_5_U", "Parent" : "22"},
	{"ID" : "61", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_Bat_1_U0.compute_class_U0.sv_norms_V_6_U", "Parent" : "22"},
	{"ID" : "62", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_Bat_1_U0.compute_class_U0.sv_norms_V_7_U", "Parent" : "22"},
	{"ID" : "63", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_Bat_1_U0.compute_class_U0.sv_norms_V_8_U", "Parent" : "22"},
	{"ID" : "64", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_Bat_1_U0.compute_class_U0.sv_norms_V_9_U", "Parent" : "22"},
	{"ID" : "65", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_Bat_1_U0.compute_class_U0.sv_norms_V_10_U", "Parent" : "22"},
	{"ID" : "66", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_Bat_1_U0.compute_class_U0.sv_norms_V_11_U", "Parent" : "22"},
	{"ID" : "67", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_Bat_1_U0.compute_class_U0.sv_norms_V_12_U", "Parent" : "22"},
	{"ID" : "68", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_Bat_1_U0.compute_class_U0.sv_norms_V_13_U", "Parent" : "22"},
	{"ID" : "69", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_Bat_1_U0.compute_class_U0.sv_norms_V_14_U", "Parent" : "22"},
	{"ID" : "70", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_Bat_1_U0.compute_class_U0.sv_norms_V_15_U", "Parent" : "22"},
	{"ID" : "71", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_Bat_1_U0.compute_class_U0.classify_mux_164_Xh4_U28", "Parent" : "22"},
	{"ID" : "72", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_Bat_1_U0.compute_class_U0.classify_mux_164_Yie_U29", "Parent" : "22"},
	{"ID" : "73", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_Bat_1_U0.compute_class_U0.classify_mux_164_Xh4_U30", "Parent" : "22"},
	{"ID" : "74", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_Bat_1_U0.compute_class_U0.classify_mul_mul_Zio_U31", "Parent" : "22"},
	{"ID" : "75", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_Bat_1_U0.p_ADSD_Classifier_cp_4_U0", "Parent" : "2",
		"CDFG" : "p_ADSD_Classifier_cp_4",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "p_read", "Type" : "None", "Direction" : "I", "DependentProc" : "22", "DependentChan" : "83"},
			{"Name" : "tmp_data_V19", "Type" : "Vld", "Direction" : "O", "DependentProc" : "79", "DependentChan" : "84"}]},
	{"ID" : "76", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_Bat_1_U0.p_ADSD_Classifier_cp_3_U0", "Parent" : "2",
		"CDFG" : "p_ADSD_Classifier_cp_3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "tmp_keep_V20", "Type" : "Vld", "Direction" : "O", "DependentProc" : "79", "DependentChan" : "85"}]},
	{"ID" : "77", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_Bat_1_U0.p_ADSD_Classifier_cp_2_U0", "Parent" : "2",
		"CDFG" : "p_ADSD_Classifier_cp_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "tmp_strb_V21", "Type" : "Vld", "Direction" : "O", "DependentProc" : "79", "DependentChan" : "86"}]},
	{"ID" : "78", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_Bat_1_U0.p_ADSD_Classifier_cp_1_U0", "Parent" : "2",
		"CDFG" : "p_ADSD_Classifier_cp_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"StartSource" : "20",
		"StartFifo" : "start_for_p_ADSD_bhl_U",
		"Port" : [
			{"Name" : "n_0_i_i", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "20", "DependentChan" : "81",
				"BlockSignal" : [
					{"Name" : "n_0_i_i_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "tmp_last_V22", "Type" : "Vld", "Direction" : "O", "DependentProc" : "79", "DependentChan" : "87"}]},
	{"ID" : "79", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_Bat_1_U0.p_ADSD_Classifier_cp_U0", "Parent" : "2",
		"CDFG" : "p_ADSD_Classifier_cp",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "out_stream_V_data_V", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "out_stream_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "out_stream_V_keep_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "out_stream_V_strb_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "out_stream_V_last_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "tmp_data_V19", "Type" : "None", "Direction" : "I", "DependentProc" : "75", "DependentChan" : "84"},
			{"Name" : "tmp_keep_V20", "Type" : "None", "Direction" : "I", "DependentProc" : "76", "DependentChan" : "85"},
			{"Name" : "tmp_strb_V21", "Type" : "None", "Direction" : "I", "DependentProc" : "77", "DependentChan" : "86"},
			{"Name" : "tmp_last_V22", "Type" : "None", "Direction" : "I", "DependentProc" : "78", "DependentChan" : "87"}]},
	{"ID" : "80", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_Bat_1_U0.n_0_i_i_c1_U", "Parent" : "2"},
	{"ID" : "81", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_Bat_1_U0.n_0_i_i_c_U", "Parent" : "2"},
	{"ID" : "82", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_Bat_1_U0.op_V_assign1_channel_U", "Parent" : "2"},
	{"ID" : "83", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_Bat_1_U0.res_internal_V_U", "Parent" : "2"},
	{"ID" : "84", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_Bat_1_U0.tmp_data_V_U", "Parent" : "2"},
	{"ID" : "85", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_Bat_1_U0.tmp_keep_V_U", "Parent" : "2"},
	{"ID" : "86", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_Bat_1_U0.tmp_strb_V_U", "Parent" : "2"},
	{"ID" : "87", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_Bat_1_U0.tmp_last_V_U", "Parent" : "2"},
	{"ID" : "88", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_Bat_1_U0.start_for_dataflobgk_U", "Parent" : "2"},
	{"ID" : "89", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_Bat_1_U0.start_for_p_ADSD_bhl_U", "Parent" : "2"}]}


set ArgLastReadFirstWriteLatency {
	classify {
		in_stream_V_data_V {Type I LastRead 1 FirstWrite -1}
		in_stream_V_keep_V {Type I LastRead 1 FirstWrite -1}
		in_stream_V_strb_V {Type I LastRead 1 FirstWrite -1}
		in_stream_V_user_V {Type I LastRead 1 FirstWrite -1}
		in_stream_V_last_V {Type I LastRead 1 FirstWrite -1}
		in_stream_V_id_V {Type I LastRead 1 FirstWrite -1}
		in_stream_V_dest_V {Type I LastRead 1 FirstWrite -1}
		out_stream_V_data_V {Type O LastRead -1 FirstWrite 0}
		out_stream_V_keep_V {Type O LastRead -1 FirstWrite 0}
		out_stream_V_strb_V {Type O LastRead -1 FirstWrite 0}
		out_stream_V_last_V {Type O LastRead -1 FirstWrite 0}
		num_images {Type I LastRead -1 FirstWrite -1}
		svs_V_0 {Type I LastRead -1 FirstWrite -1}
		svs_V_1 {Type I LastRead -1 FirstWrite -1}
		svs_V_2 {Type I LastRead -1 FirstWrite -1}
		svs_V_3 {Type I LastRead -1 FirstWrite -1}
		svs_V_4 {Type I LastRead -1 FirstWrite -1}
		svs_V_5 {Type I LastRead -1 FirstWrite -1}
		svs_V_6 {Type I LastRead -1 FirstWrite -1}
		svs_V_7 {Type I LastRead -1 FirstWrite -1}
		svs_V_8 {Type I LastRead -1 FirstWrite -1}
		svs_V_9 {Type I LastRead -1 FirstWrite -1}
		svs_V_10 {Type I LastRead -1 FirstWrite -1}
		svs_V_11 {Type I LastRead -1 FirstWrite -1}
		svs_V_12 {Type I LastRead -1 FirstWrite -1}
		svs_V_13 {Type I LastRead -1 FirstWrite -1}
		svs_V_14 {Type I LastRead -1 FirstWrite -1}
		svs_V_15 {Type I LastRead -1 FirstWrite -1}
		alphas_V_0 {Type I LastRead -1 FirstWrite -1}
		alphas_V_143 {Type I LastRead -1 FirstWrite -1}
		alphas_V_250 {Type I LastRead -1 FirstWrite -1}
		alphas_V_351 {Type I LastRead -1 FirstWrite -1}
		alphas_V_452 {Type I LastRead -1 FirstWrite -1}
		alphas_V_553 {Type I LastRead -1 FirstWrite -1}
		alphas_V_654 {Type I LastRead -1 FirstWrite -1}
		alphas_V_755 {Type I LastRead -1 FirstWrite -1}
		alphas_V_856 {Type I LastRead -1 FirstWrite -1}
		alphas_V_957 {Type I LastRead -1 FirstWrite -1}
		alphas_V_1044 {Type I LastRead -1 FirstWrite -1}
		alphas_V_1145 {Type I LastRead -1 FirstWrite -1}
		alphas_V_1246 {Type I LastRead -1 FirstWrite -1}
		alphas_V_1347 {Type I LastRead -1 FirstWrite -1}
		alphas_V_1448 {Type I LastRead -1 FirstWrite -1}
		alphas_V_1549 {Type I LastRead -1 FirstWrite -1}
		sv_norms_V_0 {Type I LastRead -1 FirstWrite -1}
		sv_norms_V_1 {Type I LastRead -1 FirstWrite -1}
		sv_norms_V_2 {Type I LastRead -1 FirstWrite -1}
		sv_norms_V_3 {Type I LastRead -1 FirstWrite -1}
		sv_norms_V_4 {Type I LastRead -1 FirstWrite -1}
		sv_norms_V_5 {Type I LastRead -1 FirstWrite -1}
		sv_norms_V_6 {Type I LastRead -1 FirstWrite -1}
		sv_norms_V_7 {Type I LastRead -1 FirstWrite -1}
		sv_norms_V_8 {Type I LastRead -1 FirstWrite -1}
		sv_norms_V_9 {Type I LastRead -1 FirstWrite -1}
		sv_norms_V_10 {Type I LastRead -1 FirstWrite -1}
		sv_norms_V_11 {Type I LastRead -1 FirstWrite -1}
		sv_norms_V_12 {Type I LastRead -1 FirstWrite -1}
		sv_norms_V_13 {Type I LastRead -1 FirstWrite -1}
		sv_norms_V_14 {Type I LastRead -1 FirstWrite -1}
		sv_norms_V_15 {Type I LastRead -1 FirstWrite -1}}
	dataflow_in_loop_Bat_1 {
		in_stream_V_data_V {Type I LastRead 1 FirstWrite -1}
		in_stream_V_keep_V {Type I LastRead 1 FirstWrite -1}
		in_stream_V_strb_V {Type I LastRead 1 FirstWrite -1}
		in_stream_V_user_V {Type I LastRead 1 FirstWrite -1}
		in_stream_V_last_V {Type I LastRead 1 FirstWrite -1}
		in_stream_V_id_V {Type I LastRead 1 FirstWrite -1}
		in_stream_V_dest_V {Type I LastRead 1 FirstWrite -1}
		n_0_i_i {Type I LastRead 1 FirstWrite -1}
		out_stream_V_data_V {Type O LastRead -1 FirstWrite 0}
		out_stream_V_keep_V {Type O LastRead -1 FirstWrite 0}
		out_stream_V_strb_V {Type O LastRead -1 FirstWrite 0}
		out_stream_V_last_V {Type O LastRead -1 FirstWrite 0}
		svs_V_0 {Type I LastRead -1 FirstWrite -1}
		svs_V_1 {Type I LastRead -1 FirstWrite -1}
		svs_V_2 {Type I LastRead -1 FirstWrite -1}
		svs_V_3 {Type I LastRead -1 FirstWrite -1}
		svs_V_4 {Type I LastRead -1 FirstWrite -1}
		svs_V_5 {Type I LastRead -1 FirstWrite -1}
		svs_V_6 {Type I LastRead -1 FirstWrite -1}
		svs_V_7 {Type I LastRead -1 FirstWrite -1}
		svs_V_8 {Type I LastRead -1 FirstWrite -1}
		svs_V_9 {Type I LastRead -1 FirstWrite -1}
		svs_V_10 {Type I LastRead -1 FirstWrite -1}
		svs_V_11 {Type I LastRead -1 FirstWrite -1}
		svs_V_12 {Type I LastRead -1 FirstWrite -1}
		svs_V_13 {Type I LastRead -1 FirstWrite -1}
		svs_V_14 {Type I LastRead -1 FirstWrite -1}
		svs_V_15 {Type I LastRead -1 FirstWrite -1}
		alphas_V_0 {Type I LastRead -1 FirstWrite -1}
		alphas_V_143 {Type I LastRead -1 FirstWrite -1}
		alphas_V_250 {Type I LastRead -1 FirstWrite -1}
		alphas_V_351 {Type I LastRead -1 FirstWrite -1}
		alphas_V_452 {Type I LastRead -1 FirstWrite -1}
		alphas_V_553 {Type I LastRead -1 FirstWrite -1}
		alphas_V_654 {Type I LastRead -1 FirstWrite -1}
		alphas_V_755 {Type I LastRead -1 FirstWrite -1}
		alphas_V_856 {Type I LastRead -1 FirstWrite -1}
		alphas_V_957 {Type I LastRead -1 FirstWrite -1}
		alphas_V_1044 {Type I LastRead -1 FirstWrite -1}
		alphas_V_1145 {Type I LastRead -1 FirstWrite -1}
		alphas_V_1246 {Type I LastRead -1 FirstWrite -1}
		alphas_V_1347 {Type I LastRead -1 FirstWrite -1}
		alphas_V_1448 {Type I LastRead -1 FirstWrite -1}
		alphas_V_1549 {Type I LastRead -1 FirstWrite -1}
		sv_norms_V_0 {Type I LastRead -1 FirstWrite -1}
		sv_norms_V_1 {Type I LastRead -1 FirstWrite -1}
		sv_norms_V_2 {Type I LastRead -1 FirstWrite -1}
		sv_norms_V_3 {Type I LastRead -1 FirstWrite -1}
		sv_norms_V_4 {Type I LastRead -1 FirstWrite -1}
		sv_norms_V_5 {Type I LastRead -1 FirstWrite -1}
		sv_norms_V_6 {Type I LastRead -1 FirstWrite -1}
		sv_norms_V_7 {Type I LastRead -1 FirstWrite -1}
		sv_norms_V_8 {Type I LastRead -1 FirstWrite -1}
		sv_norms_V_9 {Type I LastRead -1 FirstWrite -1}
		sv_norms_V_10 {Type I LastRead -1 FirstWrite -1}
		sv_norms_V_11 {Type I LastRead -1 FirstWrite -1}
		sv_norms_V_12 {Type I LastRead -1 FirstWrite -1}
		sv_norms_V_13 {Type I LastRead -1 FirstWrite -1}
		sv_norms_V_14 {Type I LastRead -1 FirstWrite -1}
		sv_norms_V_15 {Type I LastRead -1 FirstWrite -1}}
	dataflow_in_loop_Bat_2 {
		n_0_i_i {Type I LastRead 0 FirstWrite -1}
		n_0_i_i_out {Type O LastRead -1 FirstWrite 0}}
	dataflow_in_loop_Bat_1_1 {
		n_0_i_i {Type I LastRead 0 FirstWrite -1}
		n_0_i_i_out {Type O LastRead -1 FirstWrite 0}}
	load_and_calc_norm {
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
		x_local_15_V {Type O LastRead -1 FirstWrite 2}}
	compute_class {
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
		svs_V_0 {Type I LastRead -1 FirstWrite -1}
		svs_V_1 {Type I LastRead -1 FirstWrite -1}
		svs_V_2 {Type I LastRead -1 FirstWrite -1}
		svs_V_3 {Type I LastRead -1 FirstWrite -1}
		svs_V_4 {Type I LastRead -1 FirstWrite -1}
		svs_V_5 {Type I LastRead -1 FirstWrite -1}
		svs_V_6 {Type I LastRead -1 FirstWrite -1}
		svs_V_7 {Type I LastRead -1 FirstWrite -1}
		svs_V_8 {Type I LastRead -1 FirstWrite -1}
		svs_V_9 {Type I LastRead -1 FirstWrite -1}
		svs_V_10 {Type I LastRead -1 FirstWrite -1}
		svs_V_11 {Type I LastRead -1 FirstWrite -1}
		svs_V_12 {Type I LastRead -1 FirstWrite -1}
		svs_V_13 {Type I LastRead -1 FirstWrite -1}
		svs_V_14 {Type I LastRead -1 FirstWrite -1}
		svs_V_15 {Type I LastRead -1 FirstWrite -1}
		alphas_V_0 {Type I LastRead -1 FirstWrite -1}
		alphas_V_143 {Type I LastRead -1 FirstWrite -1}
		alphas_V_250 {Type I LastRead -1 FirstWrite -1}
		alphas_V_351 {Type I LastRead -1 FirstWrite -1}
		alphas_V_452 {Type I LastRead -1 FirstWrite -1}
		alphas_V_553 {Type I LastRead -1 FirstWrite -1}
		alphas_V_654 {Type I LastRead -1 FirstWrite -1}
		alphas_V_755 {Type I LastRead -1 FirstWrite -1}
		alphas_V_856 {Type I LastRead -1 FirstWrite -1}
		alphas_V_957 {Type I LastRead -1 FirstWrite -1}
		alphas_V_1044 {Type I LastRead -1 FirstWrite -1}
		alphas_V_1145 {Type I LastRead -1 FirstWrite -1}
		alphas_V_1246 {Type I LastRead -1 FirstWrite -1}
		alphas_V_1347 {Type I LastRead -1 FirstWrite -1}
		alphas_V_1448 {Type I LastRead -1 FirstWrite -1}
		alphas_V_1549 {Type I LastRead -1 FirstWrite -1}
		sv_norms_V_0 {Type I LastRead -1 FirstWrite -1}
		sv_norms_V_1 {Type I LastRead -1 FirstWrite -1}
		sv_norms_V_2 {Type I LastRead -1 FirstWrite -1}
		sv_norms_V_3 {Type I LastRead -1 FirstWrite -1}
		sv_norms_V_4 {Type I LastRead -1 FirstWrite -1}
		sv_norms_V_5 {Type I LastRead -1 FirstWrite -1}
		sv_norms_V_6 {Type I LastRead -1 FirstWrite -1}
		sv_norms_V_7 {Type I LastRead -1 FirstWrite -1}
		sv_norms_V_8 {Type I LastRead -1 FirstWrite -1}
		sv_norms_V_9 {Type I LastRead -1 FirstWrite -1}
		sv_norms_V_10 {Type I LastRead -1 FirstWrite -1}
		sv_norms_V_11 {Type I LastRead -1 FirstWrite -1}
		sv_norms_V_12 {Type I LastRead -1 FirstWrite -1}
		sv_norms_V_13 {Type I LastRead -1 FirstWrite -1}
		sv_norms_V_14 {Type I LastRead -1 FirstWrite -1}
		sv_norms_V_15 {Type I LastRead -1 FirstWrite -1}}
	p_ADSD_Classifier_cp_4 {
		p_read {Type I LastRead 0 FirstWrite -1}
		tmp_data_V19 {Type O LastRead -1 FirstWrite 0}}
	p_ADSD_Classifier_cp_3 {
		tmp_keep_V20 {Type O LastRead -1 FirstWrite 0}}
	p_ADSD_Classifier_cp_2 {
		tmp_strb_V21 {Type O LastRead -1 FirstWrite 0}}
	p_ADSD_Classifier_cp_1 {
		n_0_i_i {Type I LastRead 0 FirstWrite -1}
		tmp_last_V22 {Type O LastRead -1 FirstWrite 0}}
	p_ADSD_Classifier_cp {
		out_stream_V_data_V {Type O LastRead -1 FirstWrite 0}
		out_stream_V_keep_V {Type O LastRead -1 FirstWrite 0}
		out_stream_V_strb_V {Type O LastRead -1 FirstWrite 0}
		out_stream_V_last_V {Type O LastRead -1 FirstWrite 0}
		tmp_data_V19 {Type I LastRead 0 FirstWrite -1}
		tmp_keep_V20 {Type I LastRead 0 FirstWrite -1}
		tmp_strb_V21 {Type I LastRead 0 FirstWrite -1}
		tmp_last_V22 {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "2439842", "Max" : "2439842"}
	, {"Name" : "Interval", "Min" : "2439843", "Max" : "2439843"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	in_stream_V_data_V { axis {  { in_stream_TDATA in_data 0 64 } } }
	in_stream_V_keep_V { axis {  { in_stream_TKEEP in_data 0 8 } } }
	in_stream_V_strb_V { axis {  { in_stream_TSTRB in_data 0 8 } } }
	in_stream_V_user_V { axis {  { in_stream_TUSER in_data 0 1 } } }
	in_stream_V_last_V { axis {  { in_stream_TLAST in_data 0 1 } } }
	in_stream_V_id_V { axis {  { in_stream_TID in_data 0 1 } } }
	in_stream_V_dest_V { axis {  { in_stream_TDEST in_data 0 1 }  { in_stream_TVALID in_vld 0 1 }  { in_stream_TREADY in_acc 1 1 } } }
	out_stream_V_data_V { axis {  { out_stream_TDATA out_data 1 32 } } }
	out_stream_V_keep_V { axis {  { out_stream_TKEEP out_data 1 1 } } }
	out_stream_V_strb_V { axis {  { out_stream_TSTRB out_data 1 1 } } }
	out_stream_V_last_V { axis {  { out_stream_TLAST out_data 1 1 }  { out_stream_TVALID out_vld 1 1 }  { out_stream_TREADY out_acc 0 1 } } }
}

set busDeadlockParameterList { 
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
