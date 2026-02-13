set C_TypeInfoList {{ 
"classify" : [[], { "return": [[], "void"]} , [{"ExternC" : 0}], [ {"in_stream": [[], {"reference": "0"}] }, {"x_norm_in": [[],"1"] }, {"result_out": [[], {"reference": "2"}] }],[],""], 
"1": [ "ap_fixed<24, 14, 5, 3, 0>", {"hls_type": {"ap_fixed": [[[[], {"scalar": { "int": 24}}],[[], {"scalar": { "int": 14}}],[[], {"scalar": { "3": 5}}],[[], {"scalar": { "4": 3}}],[[], {"scalar": { "int": 0}}]],""]}}], 
"3": [ "ap_q_mode", {"enum": [[],[],[{"SC_RND":  {"scalar": "__integer__"}},{"SC_RND_ZERO":  {"scalar": "__integer__"}},{"SC_RND_MIN_INF":  {"scalar": "__integer__"}},{"SC_RND_INF":  {"scalar": "__integer__"}},{"SC_RND_CONV":  {"scalar": "__integer__"}},{"SC_TRN":  {"scalar": "__integer__"}},{"SC_TRN_ZERO":  {"scalar": "__integer__"}}],""]}], 
"4": [ "ap_o_mode", {"enum": [[],[],[{"SC_SAT":  {"scalar": "__integer__"}},{"SC_SAT_ZERO":  {"scalar": "__integer__"}},{"SC_SAT_SYM":  {"scalar": "__integer__"}},{"SC_WRAP":  {"scalar": "__integer__"}},{"SC_WRAP_SM":  {"scalar": "__integer__"}}],""]}], 
"0": [ "stream<ap_axiu<64, 1, 1, 1> >", {"hls_type": {"stream": [[[[],"5"]],"6"]}}], 
"5": [ "ap_axiu<64, 1, 1, 1>", {"struct": [[],[{"D":[[], {"scalar": { "int": 64}}]},{"U":[[], {"scalar": { "int": 1}}]},{"TI":[[], {"scalar": { "int": 1}}]},{"TD":[[], {"scalar": { "int": 1}}]}],[{ "data": [[], "7"]},{ "keep": [[], "8"]},{ "strb": [[], "8"]},{ "user": [[], "9"]},{ "last": [[], "9"]},{ "id": [[], "9"]},{ "dest": [[], "9"]}],""]}], 
"7": [ "ap_uint<64>", {"hls_type": {"ap_uint": [[[[], {"scalar": { "int": 64}}]],""]}}], 
"2": [ "ap_fixed<32, 16, 5, 3, 0>", {"hls_type": {"ap_fixed": [[[[], {"scalar": { "int": 32}}],[[], {"scalar": { "int": 16}}],[[], {"scalar": { "3": 5}}],[[], {"scalar": { "4": 3}}],[[], {"scalar": { "int": 0}}]],""]}}], 
"8": [ "ap_uint<8>", {"hls_type": {"ap_uint": [[[[], {"scalar": { "int": 8}}]],""]}}], 
"9": [ "ap_uint<1>", {"hls_type": {"ap_uint": [[[[], {"scalar": { "int": 1}}]],""]}}],
"6": ["hls", ""]
}}
set moduleName classify
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type dataflow
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
	{ x_norm_in_V int 24 regular {axi_slave 0}  }
	{ result_out_V int 32 regular {axi_slave 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "in_stream_V_data_V", "interface" : "axis", "bitwidth" : 64, "direction" : "READONLY", "bitSlice":[{"low":0,"up":63,"cElement": [{"cName": "in_stream.V.data.V","cData": "uint64","bit_use": { "low": 0,"up": 63},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "in_stream_V_keep_V", "interface" : "axis", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "in_stream.V.keep.V","cData": "uint8","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "in_stream_V_strb_V", "interface" : "axis", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "in_stream.V.strb.V","cData": "uint8","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "in_stream_V_user_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "in_stream.V.user.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "in_stream_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "in_stream.V.last.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "in_stream_V_id_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "in_stream.V.id.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "in_stream_V_dest_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "in_stream.V.dest.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "x_norm_in_V", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 24, "direction" : "READONLY", "bitSlice":[{"low":0,"up":23,"cElement": [{"cName": "x_norm_in.V","cData": "int24","bit_use": { "low": 0,"up": 23},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}], "offset" : {"in":16}, "offset_end" : {"in":23}} , 
 	{ "Name" : "result_out_V", "interface" : "axi_slave", "bundle":"control","type":"ap_vld","bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "result_out.V","cData": "int32","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}], "offset" : {"out":24}, "offset_end" : {"out":31}} ]}
# RTL Port declarations: 
set portNum 29
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
	{ in_stream_TVALID sc_in sc_logic 1 invld 6 } 
	{ in_stream_TREADY sc_out sc_logic 1 inacc 6 } 
}
set NewPortList {[ 
	{ "name": "s_axi_control_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "control", "role": "AWADDR" },"address":[{"name":"classify","role":"start","value":"0","valid_bit":"0"},{"name":"classify","role":"continue","value":"0","valid_bit":"4"},{"name":"classify","role":"auto_start","value":"0","valid_bit":"7"},{"name":"x_norm_in_V","role":"data","value":"16"}] },
	{ "name": "s_axi_control_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWVALID" } },
	{ "name": "s_axi_control_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWREADY" } },
	{ "name": "s_axi_control_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WVALID" } },
	{ "name": "s_axi_control_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WREADY" } },
	{ "name": "s_axi_control_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "control", "role": "WDATA" } },
	{ "name": "s_axi_control_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "control", "role": "WSTRB" } },
	{ "name": "s_axi_control_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "control", "role": "ARADDR" },"address":[{"name":"classify","role":"start","value":"0","valid_bit":"0"},{"name":"classify","role":"done","value":"0","valid_bit":"1"},{"name":"classify","role":"idle","value":"0","valid_bit":"2"},{"name":"classify","role":"ready","value":"0","valid_bit":"3"},{"name":"classify","role":"auto_start","value":"0","valid_bit":"7"},{"name":"result_out_V","role":"data","value":"24"}, {"name":"result_out_V","role":"valid","value":"28","valid_bit":"0"}] },
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
 	{ "name": "in_stream_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "in_stream_V_dest_V", "role": "default" }} , 
 	{ "name": "in_stream_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "in_stream_V_dest_V", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "72", "73", "74"],
		"CDFG" : "classify",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1038", "EstimateLatencyMax" : "1038",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"InputProcess" : [
			{"ID" : "18", "Name" : "load_data55_U0"}],
		"OutputProcess" : [
			{"ID" : "72", "Name" : "Block_proc_U0"}],
		"Port" : [
			{"Name" : "in_stream_V_data_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "load_data55_U0", "Port" : "in_stream_V_data_V"}]},
			{"Name" : "in_stream_V_keep_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "load_data55_U0", "Port" : "in_stream_V_keep_V"}]},
			{"Name" : "in_stream_V_strb_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "load_data55_U0", "Port" : "in_stream_V_strb_V"}]},
			{"Name" : "in_stream_V_user_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "load_data55_U0", "Port" : "in_stream_V_user_V"}]},
			{"Name" : "in_stream_V_last_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "load_data55_U0", "Port" : "in_stream_V_last_V"}]},
			{"Name" : "in_stream_V_id_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "load_data55_U0", "Port" : "in_stream_V_id_V"}]},
			{"Name" : "in_stream_V_dest_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "load_data55_U0", "Port" : "in_stream_V_dest_V"}]},
			{"Name" : "x_norm_in_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "result_out_V", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "72", "SubInstance" : "Block_proc_U0", "Port" : "result_out_V"}]},
			{"Name" : "svs_V_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "compute_class_U0", "Port" : "svs_V_0"}]},
			{"Name" : "svs_V_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "compute_class_U0", "Port" : "svs_V_1"}]},
			{"Name" : "svs_V_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "compute_class_U0", "Port" : "svs_V_2"}]},
			{"Name" : "svs_V_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "compute_class_U0", "Port" : "svs_V_3"}]},
			{"Name" : "svs_V_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "compute_class_U0", "Port" : "svs_V_4"}]},
			{"Name" : "svs_V_5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "compute_class_U0", "Port" : "svs_V_5"}]},
			{"Name" : "svs_V_6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "compute_class_U0", "Port" : "svs_V_6"}]},
			{"Name" : "svs_V_7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "compute_class_U0", "Port" : "svs_V_7"}]},
			{"Name" : "svs_V_8", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "compute_class_U0", "Port" : "svs_V_8"}]},
			{"Name" : "svs_V_9", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "compute_class_U0", "Port" : "svs_V_9"}]},
			{"Name" : "svs_V_10", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "compute_class_U0", "Port" : "svs_V_10"}]},
			{"Name" : "svs_V_11", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "compute_class_U0", "Port" : "svs_V_11"}]},
			{"Name" : "svs_V_12", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "compute_class_U0", "Port" : "svs_V_12"}]},
			{"Name" : "svs_V_13", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "compute_class_U0", "Port" : "svs_V_13"}]},
			{"Name" : "svs_V_14", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "compute_class_U0", "Port" : "svs_V_14"}]},
			{"Name" : "svs_V_15", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "compute_class_U0", "Port" : "svs_V_15"}]},
			{"Name" : "alphas_V_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "compute_class_U0", "Port" : "alphas_V_0"}]},
			{"Name" : "alphas_V_140", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "compute_class_U0", "Port" : "alphas_V_140"}]},
			{"Name" : "alphas_V_247", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "compute_class_U0", "Port" : "alphas_V_247"}]},
			{"Name" : "alphas_V_348", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "compute_class_U0", "Port" : "alphas_V_348"}]},
			{"Name" : "alphas_V_449", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "compute_class_U0", "Port" : "alphas_V_449"}]},
			{"Name" : "alphas_V_550", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "compute_class_U0", "Port" : "alphas_V_550"}]},
			{"Name" : "alphas_V_651", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "compute_class_U0", "Port" : "alphas_V_651"}]},
			{"Name" : "alphas_V_752", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "compute_class_U0", "Port" : "alphas_V_752"}]},
			{"Name" : "alphas_V_853", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "compute_class_U0", "Port" : "alphas_V_853"}]},
			{"Name" : "alphas_V_954", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "compute_class_U0", "Port" : "alphas_V_954"}]},
			{"Name" : "alphas_V_1041", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "compute_class_U0", "Port" : "alphas_V_1041"}]},
			{"Name" : "alphas_V_1142", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "compute_class_U0", "Port" : "alphas_V_1142"}]},
			{"Name" : "alphas_V_1243", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "compute_class_U0", "Port" : "alphas_V_1243"}]},
			{"Name" : "alphas_V_1344", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "compute_class_U0", "Port" : "alphas_V_1344"}]},
			{"Name" : "alphas_V_1445", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "compute_class_U0", "Port" : "alphas_V_1445"}]},
			{"Name" : "alphas_V_1546", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "compute_class_U0", "Port" : "alphas_V_1546"}]},
			{"Name" : "sv_norms_V_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "compute_class_U0", "Port" : "sv_norms_V_0"}]},
			{"Name" : "sv_norms_V_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "compute_class_U0", "Port" : "sv_norms_V_1"}]},
			{"Name" : "sv_norms_V_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "compute_class_U0", "Port" : "sv_norms_V_2"}]},
			{"Name" : "sv_norms_V_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "compute_class_U0", "Port" : "sv_norms_V_3"}]},
			{"Name" : "sv_norms_V_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "compute_class_U0", "Port" : "sv_norms_V_4"}]},
			{"Name" : "sv_norms_V_5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "compute_class_U0", "Port" : "sv_norms_V_5"}]},
			{"Name" : "sv_norms_V_6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "compute_class_U0", "Port" : "sv_norms_V_6"}]},
			{"Name" : "sv_norms_V_7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "compute_class_U0", "Port" : "sv_norms_V_7"}]},
			{"Name" : "sv_norms_V_8", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "compute_class_U0", "Port" : "sv_norms_V_8"}]},
			{"Name" : "sv_norms_V_9", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "compute_class_U0", "Port" : "sv_norms_V_9"}]},
			{"Name" : "sv_norms_V_10", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "compute_class_U0", "Port" : "sv_norms_V_10"}]},
			{"Name" : "sv_norms_V_11", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "compute_class_U0", "Port" : "sv_norms_V_11"}]},
			{"Name" : "sv_norms_V_12", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "compute_class_U0", "Port" : "sv_norms_V_12"}]},
			{"Name" : "sv_norms_V_13", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "compute_class_U0", "Port" : "sv_norms_V_13"}]},
			{"Name" : "sv_norms_V_14", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "compute_class_U0", "Port" : "sv_norms_V_14"}]},
			{"Name" : "sv_norms_V_15", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "compute_class_U0", "Port" : "sv_norms_V_15"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.classify_control_s_axi_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.x_local_0_V_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.x_local_1_V_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.x_local_2_V_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.x_local_3_V_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.x_local_4_V_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.x_local_5_V_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.x_local_6_V_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.x_local_7_V_U", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.x_local_8_V_U", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.x_local_9_V_U", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.x_local_10_V_U", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.x_local_11_V_U", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.x_local_12_V_U", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.x_local_13_V_U", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.x_local_14_V_U", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.x_local_15_V_U", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.load_data55_U0", "Parent" : "0",
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
			{"Name" : "x_local_0_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "19", "DependentChan" : "2"},
			{"Name" : "x_local_1_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "19", "DependentChan" : "3"},
			{"Name" : "x_local_2_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "19", "DependentChan" : "4"},
			{"Name" : "x_local_3_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "19", "DependentChan" : "5"},
			{"Name" : "x_local_4_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "19", "DependentChan" : "6"},
			{"Name" : "x_local_5_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "19", "DependentChan" : "7"},
			{"Name" : "x_local_6_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "19", "DependentChan" : "8"},
			{"Name" : "x_local_7_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "19", "DependentChan" : "9"},
			{"Name" : "x_local_8_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "19", "DependentChan" : "10"},
			{"Name" : "x_local_9_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "19", "DependentChan" : "11"},
			{"Name" : "x_local_10_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "19", "DependentChan" : "12"},
			{"Name" : "x_local_11_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "19", "DependentChan" : "13"},
			{"Name" : "x_local_12_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "19", "DependentChan" : "14"},
			{"Name" : "x_local_13_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "19", "DependentChan" : "15"},
			{"Name" : "x_local_14_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "19", "DependentChan" : "16"},
			{"Name" : "x_local_15_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "19", "DependentChan" : "17"},
			{"Name" : "x_norm_in_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_norm_in_V_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "19", "DependentChan" : "73",
				"BlockSignal" : [
					{"Name" : "x_norm_in_V_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.compute_class_U0", "Parent" : "0", "Child" : ["20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "55", "56", "57", "58", "59", "60", "61", "62", "63", "64", "65", "66", "67", "68", "69", "70", "71"],
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
			{"Name" : "x_local_0_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "18", "DependentChan" : "2"},
			{"Name" : "x_local_1_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "18", "DependentChan" : "3"},
			{"Name" : "x_local_2_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "18", "DependentChan" : "4"},
			{"Name" : "x_local_3_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "18", "DependentChan" : "5"},
			{"Name" : "x_local_4_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "18", "DependentChan" : "6"},
			{"Name" : "x_local_5_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "18", "DependentChan" : "7"},
			{"Name" : "x_local_6_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "18", "DependentChan" : "8"},
			{"Name" : "x_local_7_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "18", "DependentChan" : "9"},
			{"Name" : "x_local_8_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "18", "DependentChan" : "10"},
			{"Name" : "x_local_9_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "18", "DependentChan" : "11"},
			{"Name" : "x_local_10_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "18", "DependentChan" : "12"},
			{"Name" : "x_local_11_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "18", "DependentChan" : "13"},
			{"Name" : "x_local_12_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "18", "DependentChan" : "14"},
			{"Name" : "x_local_13_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "18", "DependentChan" : "15"},
			{"Name" : "x_local_14_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "18", "DependentChan" : "16"},
			{"Name" : "x_local_15_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "18", "DependentChan" : "17"},
			{"Name" : "x_norm_in_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "18", "DependentChan" : "73",
				"BlockSignal" : [
					{"Name" : "x_norm_in_V_blk_n", "Type" : "RtlSignal"}]},
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
			{"Name" : "alphas_V_140", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "alphas_V_247", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "alphas_V_348", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "alphas_V_449", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "alphas_V_550", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "alphas_V_651", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "alphas_V_752", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "alphas_V_853", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "alphas_V_954", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "alphas_V_1041", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "alphas_V_1142", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "alphas_V_1243", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "alphas_V_1344", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "alphas_V_1445", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "alphas_V_1546", "Type" : "Memory", "Direction" : "I"},
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
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_class_U0.svs_V_0_U", "Parent" : "19"},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_class_U0.svs_V_1_U", "Parent" : "19"},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_class_U0.svs_V_2_U", "Parent" : "19"},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_class_U0.svs_V_3_U", "Parent" : "19"},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_class_U0.svs_V_4_U", "Parent" : "19"},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_class_U0.svs_V_5_U", "Parent" : "19"},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_class_U0.svs_V_6_U", "Parent" : "19"},
	{"ID" : "27", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_class_U0.svs_V_7_U", "Parent" : "19"},
	{"ID" : "28", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_class_U0.svs_V_8_U", "Parent" : "19"},
	{"ID" : "29", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_class_U0.svs_V_9_U", "Parent" : "19"},
	{"ID" : "30", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_class_U0.svs_V_10_U", "Parent" : "19"},
	{"ID" : "31", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_class_U0.svs_V_11_U", "Parent" : "19"},
	{"ID" : "32", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_class_U0.svs_V_12_U", "Parent" : "19"},
	{"ID" : "33", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_class_U0.svs_V_13_U", "Parent" : "19"},
	{"ID" : "34", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_class_U0.svs_V_14_U", "Parent" : "19"},
	{"ID" : "35", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_class_U0.svs_V_15_U", "Parent" : "19"},
	{"ID" : "36", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_class_U0.alphas_V_0_U", "Parent" : "19"},
	{"ID" : "37", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_class_U0.alphas_V_140_U", "Parent" : "19"},
	{"ID" : "38", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_class_U0.alphas_V_247_U", "Parent" : "19"},
	{"ID" : "39", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_class_U0.alphas_V_348_U", "Parent" : "19"},
	{"ID" : "40", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_class_U0.alphas_V_449_U", "Parent" : "19"},
	{"ID" : "41", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_class_U0.alphas_V_550_U", "Parent" : "19"},
	{"ID" : "42", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_class_U0.alphas_V_651_U", "Parent" : "19"},
	{"ID" : "43", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_class_U0.alphas_V_752_U", "Parent" : "19"},
	{"ID" : "44", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_class_U0.alphas_V_853_U", "Parent" : "19"},
	{"ID" : "45", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_class_U0.alphas_V_954_U", "Parent" : "19"},
	{"ID" : "46", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_class_U0.alphas_V_1041_U", "Parent" : "19"},
	{"ID" : "47", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_class_U0.alphas_V_1142_U", "Parent" : "19"},
	{"ID" : "48", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_class_U0.alphas_V_1243_U", "Parent" : "19"},
	{"ID" : "49", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_class_U0.alphas_V_1344_U", "Parent" : "19"},
	{"ID" : "50", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_class_U0.alphas_V_1445_U", "Parent" : "19"},
	{"ID" : "51", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_class_U0.alphas_V_1546_U", "Parent" : "19"},
	{"ID" : "52", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_class_U0.sv_norms_V_0_U", "Parent" : "19"},
	{"ID" : "53", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_class_U0.sv_norms_V_1_U", "Parent" : "19"},
	{"ID" : "54", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_class_U0.sv_norms_V_2_U", "Parent" : "19"},
	{"ID" : "55", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_class_U0.sv_norms_V_3_U", "Parent" : "19"},
	{"ID" : "56", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_class_U0.sv_norms_V_4_U", "Parent" : "19"},
	{"ID" : "57", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_class_U0.sv_norms_V_5_U", "Parent" : "19"},
	{"ID" : "58", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_class_U0.sv_norms_V_6_U", "Parent" : "19"},
	{"ID" : "59", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_class_U0.sv_norms_V_7_U", "Parent" : "19"},
	{"ID" : "60", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_class_U0.sv_norms_V_8_U", "Parent" : "19"},
	{"ID" : "61", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_class_U0.sv_norms_V_9_U", "Parent" : "19"},
	{"ID" : "62", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_class_U0.sv_norms_V_10_U", "Parent" : "19"},
	{"ID" : "63", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_class_U0.sv_norms_V_11_U", "Parent" : "19"},
	{"ID" : "64", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_class_U0.sv_norms_V_12_U", "Parent" : "19"},
	{"ID" : "65", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_class_U0.sv_norms_V_13_U", "Parent" : "19"},
	{"ID" : "66", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_class_U0.sv_norms_V_14_U", "Parent" : "19"},
	{"ID" : "67", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_class_U0.sv_norms_V_15_U", "Parent" : "19"},
	{"ID" : "68", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_class_U0.classify_mux_164_Xh4_U26", "Parent" : "19"},
	{"ID" : "69", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_class_U0.classify_mux_164_Yie_U27", "Parent" : "19"},
	{"ID" : "70", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_class_U0.classify_mux_164_Xh4_U28", "Parent" : "19"},
	{"ID" : "71", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_class_U0.classify_mul_mul_Zio_U29", "Parent" : "19"},
	{"ID" : "72", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Block_proc_U0", "Parent" : "0",
		"CDFG" : "Block_proc",
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
			{"Name" : "p_read", "Type" : "None", "Direction" : "I", "DependentProc" : "19", "DependentChan" : "74"},
			{"Name" : "result_out_V", "Type" : "Vld", "Direction" : "O"}]},
	{"ID" : "73", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.x_norm_in_V_c_U", "Parent" : "0"},
	{"ID" : "74", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.res_internal_V_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	classify {
		in_stream_V_data_V {Type I LastRead 1 FirstWrite -1}
		in_stream_V_keep_V {Type I LastRead 1 FirstWrite -1}
		in_stream_V_strb_V {Type I LastRead 1 FirstWrite -1}
		in_stream_V_user_V {Type I LastRead 1 FirstWrite -1}
		in_stream_V_last_V {Type I LastRead 1 FirstWrite -1}
		in_stream_V_id_V {Type I LastRead 1 FirstWrite -1}
		in_stream_V_dest_V {Type I LastRead 1 FirstWrite -1}
		x_norm_in_V {Type I LastRead 1 FirstWrite -1}
		result_out_V {Type O LastRead -1 FirstWrite 0}
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
		alphas_V_140 {Type I LastRead -1 FirstWrite -1}
		alphas_V_247 {Type I LastRead -1 FirstWrite -1}
		alphas_V_348 {Type I LastRead -1 FirstWrite -1}
		alphas_V_449 {Type I LastRead -1 FirstWrite -1}
		alphas_V_550 {Type I LastRead -1 FirstWrite -1}
		alphas_V_651 {Type I LastRead -1 FirstWrite -1}
		alphas_V_752 {Type I LastRead -1 FirstWrite -1}
		alphas_V_853 {Type I LastRead -1 FirstWrite -1}
		alphas_V_954 {Type I LastRead -1 FirstWrite -1}
		alphas_V_1041 {Type I LastRead -1 FirstWrite -1}
		alphas_V_1142 {Type I LastRead -1 FirstWrite -1}
		alphas_V_1243 {Type I LastRead -1 FirstWrite -1}
		alphas_V_1344 {Type I LastRead -1 FirstWrite -1}
		alphas_V_1445 {Type I LastRead -1 FirstWrite -1}
		alphas_V_1546 {Type I LastRead -1 FirstWrite -1}
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
		x_norm_in_V_out {Type O LastRead -1 FirstWrite 0}}
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
		x_norm_in_V {Type I LastRead 0 FirstWrite -1}
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
		alphas_V_140 {Type I LastRead -1 FirstWrite -1}
		alphas_V_247 {Type I LastRead -1 FirstWrite -1}
		alphas_V_348 {Type I LastRead -1 FirstWrite -1}
		alphas_V_449 {Type I LastRead -1 FirstWrite -1}
		alphas_V_550 {Type I LastRead -1 FirstWrite -1}
		alphas_V_651 {Type I LastRead -1 FirstWrite -1}
		alphas_V_752 {Type I LastRead -1 FirstWrite -1}
		alphas_V_853 {Type I LastRead -1 FirstWrite -1}
		alphas_V_954 {Type I LastRead -1 FirstWrite -1}
		alphas_V_1041 {Type I LastRead -1 FirstWrite -1}
		alphas_V_1142 {Type I LastRead -1 FirstWrite -1}
		alphas_V_1243 {Type I LastRead -1 FirstWrite -1}
		alphas_V_1344 {Type I LastRead -1 FirstWrite -1}
		alphas_V_1445 {Type I LastRead -1 FirstWrite -1}
		alphas_V_1546 {Type I LastRead -1 FirstWrite -1}
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
	Block_proc {
		p_read {Type I LastRead 0 FirstWrite -1}
		result_out_V {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1038", "Max" : "1038"}
	, {"Name" : "Interval", "Min" : "938", "Max" : "938"}
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
