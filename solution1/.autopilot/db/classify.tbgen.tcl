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
	{ num_images int 32 regular {axi_slave 0}  }
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
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1058711", "EstimateLatencyMax" : "1058711",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"InputProcess" : [
			{"ID" : "2", "Name" : "dataflow_in_loop_Bat_U0"}],
		"OutputProcess" : [
			{"ID" : "2", "Name" : "dataflow_in_loop_Bat_U0"}],
		"Port" : [
			{"Name" : "in_stream_V_data_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "dataflow_in_loop_Bat_U0", "Port" : "in_stream_V_data_V"}]},
			{"Name" : "in_stream_V_keep_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "dataflow_in_loop_Bat_U0", "Port" : "in_stream_V_keep_V"}]},
			{"Name" : "in_stream_V_strb_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "dataflow_in_loop_Bat_U0", "Port" : "in_stream_V_strb_V"}]},
			{"Name" : "in_stream_V_user_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "dataflow_in_loop_Bat_U0", "Port" : "in_stream_V_user_V"}]},
			{"Name" : "in_stream_V_last_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "dataflow_in_loop_Bat_U0", "Port" : "in_stream_V_last_V"}]},
			{"Name" : "in_stream_V_id_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "dataflow_in_loop_Bat_U0", "Port" : "in_stream_V_id_V"}]},
			{"Name" : "in_stream_V_dest_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "dataflow_in_loop_Bat_U0", "Port" : "in_stream_V_dest_V"}]},
			{"Name" : "out_stream_V_data_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "dataflow_in_loop_Bat_U0", "Port" : "out_stream_V_data_V"}]},
			{"Name" : "out_stream_V_keep_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "dataflow_in_loop_Bat_U0", "Port" : "out_stream_V_keep_V"}]},
			{"Name" : "out_stream_V_strb_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "dataflow_in_loop_Bat_U0", "Port" : "out_stream_V_strb_V"}]},
			{"Name" : "out_stream_V_last_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "dataflow_in_loop_Bat_U0", "Port" : "out_stream_V_last_V"}]},
			{"Name" : "num_images", "Type" : "None", "Direction" : "I"},
			{"Name" : "sv_norms_0_V_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "dataflow_in_loop_Bat_U0", "Port" : "sv_norms_0_V_0"}]},
			{"Name" : "sv_norms_0_V_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "dataflow_in_loop_Bat_U0", "Port" : "sv_norms_0_V_1"}]},
			{"Name" : "sv_norms_0_V_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "dataflow_in_loop_Bat_U0", "Port" : "sv_norms_0_V_2"}]},
			{"Name" : "sv_norms_0_V_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "dataflow_in_loop_Bat_U0", "Port" : "sv_norms_0_V_3"}]},
			{"Name" : "sv_norms_0_V_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "dataflow_in_loop_Bat_U0", "Port" : "sv_norms_0_V_4"}]},
			{"Name" : "sv_norms_0_V_5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "dataflow_in_loop_Bat_U0", "Port" : "sv_norms_0_V_5"}]},
			{"Name" : "sv_norms_0_V_6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "dataflow_in_loop_Bat_U0", "Port" : "sv_norms_0_V_6"}]},
			{"Name" : "sv_norms_0_V_7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "dataflow_in_loop_Bat_U0", "Port" : "sv_norms_0_V_7"}]},
			{"Name" : "sv_norms_0_V_8", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "dataflow_in_loop_Bat_U0", "Port" : "sv_norms_0_V_8"}]},
			{"Name" : "sv_norms_0_V_9", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "dataflow_in_loop_Bat_U0", "Port" : "sv_norms_0_V_9"}]},
			{"Name" : "sv_norms_0_V_10", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "dataflow_in_loop_Bat_U0", "Port" : "sv_norms_0_V_10"}]},
			{"Name" : "sv_norms_0_V_11", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "dataflow_in_loop_Bat_U0", "Port" : "sv_norms_0_V_11"}]},
			{"Name" : "sv_norms_0_V_12", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "dataflow_in_loop_Bat_U0", "Port" : "sv_norms_0_V_12"}]},
			{"Name" : "sv_norms_0_V_13", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "dataflow_in_loop_Bat_U0", "Port" : "sv_norms_0_V_13"}]},
			{"Name" : "sv_norms_0_V_14", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "dataflow_in_loop_Bat_U0", "Port" : "sv_norms_0_V_14"}]},
			{"Name" : "sv_norms_0_V_15", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "dataflow_in_loop_Bat_U0", "Port" : "sv_norms_0_V_15"}]},
			{"Name" : "alphas_0_V_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "dataflow_in_loop_Bat_U0", "Port" : "alphas_0_V_0"}]},
			{"Name" : "alphas_0_V_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "dataflow_in_loop_Bat_U0", "Port" : "alphas_0_V_1"}]},
			{"Name" : "alphas_0_V_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "dataflow_in_loop_Bat_U0", "Port" : "alphas_0_V_2"}]},
			{"Name" : "alphas_0_V_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "dataflow_in_loop_Bat_U0", "Port" : "alphas_0_V_3"}]},
			{"Name" : "alphas_0_V_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "dataflow_in_loop_Bat_U0", "Port" : "alphas_0_V_4"}]},
			{"Name" : "alphas_0_V_5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "dataflow_in_loop_Bat_U0", "Port" : "alphas_0_V_5"}]},
			{"Name" : "alphas_0_V_6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "dataflow_in_loop_Bat_U0", "Port" : "alphas_0_V_6"}]},
			{"Name" : "alphas_0_V_7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "dataflow_in_loop_Bat_U0", "Port" : "alphas_0_V_7"}]},
			{"Name" : "alphas_0_V_8", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "dataflow_in_loop_Bat_U0", "Port" : "alphas_0_V_8"}]},
			{"Name" : "alphas_0_V_9", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "dataflow_in_loop_Bat_U0", "Port" : "alphas_0_V_9"}]},
			{"Name" : "alphas_0_V_10", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "dataflow_in_loop_Bat_U0", "Port" : "alphas_0_V_10"}]},
			{"Name" : "alphas_0_V_11", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "dataflow_in_loop_Bat_U0", "Port" : "alphas_0_V_11"}]},
			{"Name" : "alphas_0_V_12", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "dataflow_in_loop_Bat_U0", "Port" : "alphas_0_V_12"}]},
			{"Name" : "alphas_0_V_13", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "dataflow_in_loop_Bat_U0", "Port" : "alphas_0_V_13"}]},
			{"Name" : "alphas_0_V_14", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "dataflow_in_loop_Bat_U0", "Port" : "alphas_0_V_14"}]},
			{"Name" : "alphas_0_V_15", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "dataflow_in_loop_Bat_U0", "Port" : "alphas_0_V_15"}]},
			{"Name" : "sv_norms_1_V_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "dataflow_in_loop_Bat_U0", "Port" : "sv_norms_1_V_0"}]},
			{"Name" : "sv_norms_1_V_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "dataflow_in_loop_Bat_U0", "Port" : "sv_norms_1_V_1"}]},
			{"Name" : "sv_norms_1_V_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "dataflow_in_loop_Bat_U0", "Port" : "sv_norms_1_V_2"}]},
			{"Name" : "sv_norms_1_V_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "dataflow_in_loop_Bat_U0", "Port" : "sv_norms_1_V_3"}]},
			{"Name" : "sv_norms_1_V_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "dataflow_in_loop_Bat_U0", "Port" : "sv_norms_1_V_4"}]},
			{"Name" : "sv_norms_1_V_5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "dataflow_in_loop_Bat_U0", "Port" : "sv_norms_1_V_5"}]},
			{"Name" : "sv_norms_1_V_6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "dataflow_in_loop_Bat_U0", "Port" : "sv_norms_1_V_6"}]},
			{"Name" : "sv_norms_1_V_7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "dataflow_in_loop_Bat_U0", "Port" : "sv_norms_1_V_7"}]},
			{"Name" : "sv_norms_1_V_8", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "dataflow_in_loop_Bat_U0", "Port" : "sv_norms_1_V_8"}]},
			{"Name" : "sv_norms_1_V_9", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "dataflow_in_loop_Bat_U0", "Port" : "sv_norms_1_V_9"}]},
			{"Name" : "sv_norms_1_V_10", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "dataflow_in_loop_Bat_U0", "Port" : "sv_norms_1_V_10"}]},
			{"Name" : "sv_norms_1_V_11", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "dataflow_in_loop_Bat_U0", "Port" : "sv_norms_1_V_11"}]},
			{"Name" : "sv_norms_1_V_12", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "dataflow_in_loop_Bat_U0", "Port" : "sv_norms_1_V_12"}]},
			{"Name" : "sv_norms_1_V_13", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "dataflow_in_loop_Bat_U0", "Port" : "sv_norms_1_V_13"}]},
			{"Name" : "sv_norms_1_V_14", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "dataflow_in_loop_Bat_U0", "Port" : "sv_norms_1_V_14"}]},
			{"Name" : "sv_norms_1_V_15", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "dataflow_in_loop_Bat_U0", "Port" : "sv_norms_1_V_15"}]},
			{"Name" : "alphas_1_V_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "dataflow_in_loop_Bat_U0", "Port" : "alphas_1_V_0"}]},
			{"Name" : "alphas_1_V_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "dataflow_in_loop_Bat_U0", "Port" : "alphas_1_V_1"}]},
			{"Name" : "alphas_1_V_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "dataflow_in_loop_Bat_U0", "Port" : "alphas_1_V_2"}]},
			{"Name" : "alphas_1_V_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "dataflow_in_loop_Bat_U0", "Port" : "alphas_1_V_3"}]},
			{"Name" : "alphas_1_V_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "dataflow_in_loop_Bat_U0", "Port" : "alphas_1_V_4"}]},
			{"Name" : "alphas_1_V_5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "dataflow_in_loop_Bat_U0", "Port" : "alphas_1_V_5"}]},
			{"Name" : "alphas_1_V_6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "dataflow_in_loop_Bat_U0", "Port" : "alphas_1_V_6"}]},
			{"Name" : "alphas_1_V_7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "dataflow_in_loop_Bat_U0", "Port" : "alphas_1_V_7"}]},
			{"Name" : "alphas_1_V_8", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "dataflow_in_loop_Bat_U0", "Port" : "alphas_1_V_8"}]},
			{"Name" : "alphas_1_V_9", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "dataflow_in_loop_Bat_U0", "Port" : "alphas_1_V_9"}]},
			{"Name" : "alphas_1_V_10", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "dataflow_in_loop_Bat_U0", "Port" : "alphas_1_V_10"}]},
			{"Name" : "alphas_1_V_11", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "dataflow_in_loop_Bat_U0", "Port" : "alphas_1_V_11"}]},
			{"Name" : "alphas_1_V_12", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "dataflow_in_loop_Bat_U0", "Port" : "alphas_1_V_12"}]},
			{"Name" : "alphas_1_V_13", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "dataflow_in_loop_Bat_U0", "Port" : "alphas_1_V_13"}]},
			{"Name" : "alphas_1_V_14", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "dataflow_in_loop_Bat_U0", "Port" : "alphas_1_V_14"}]},
			{"Name" : "alphas_1_V_15", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "dataflow_in_loop_Bat_U0", "Port" : "alphas_1_V_15"}]},
			{"Name" : "svs_0_V_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "dataflow_in_loop_Bat_U0", "Port" : "svs_0_V_0"}]},
			{"Name" : "svs_0_V_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "dataflow_in_loop_Bat_U0", "Port" : "svs_0_V_1"}]},
			{"Name" : "svs_0_V_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "dataflow_in_loop_Bat_U0", "Port" : "svs_0_V_2"}]},
			{"Name" : "svs_0_V_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "dataflow_in_loop_Bat_U0", "Port" : "svs_0_V_3"}]},
			{"Name" : "svs_0_V_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "dataflow_in_loop_Bat_U0", "Port" : "svs_0_V_4"}]},
			{"Name" : "svs_0_V_5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "dataflow_in_loop_Bat_U0", "Port" : "svs_0_V_5"}]},
			{"Name" : "svs_0_V_6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "dataflow_in_loop_Bat_U0", "Port" : "svs_0_V_6"}]},
			{"Name" : "svs_0_V_7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "dataflow_in_loop_Bat_U0", "Port" : "svs_0_V_7"}]},
			{"Name" : "svs_0_V_8", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "dataflow_in_loop_Bat_U0", "Port" : "svs_0_V_8"}]},
			{"Name" : "svs_0_V_9", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "dataflow_in_loop_Bat_U0", "Port" : "svs_0_V_9"}]},
			{"Name" : "svs_0_V_10", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "dataflow_in_loop_Bat_U0", "Port" : "svs_0_V_10"}]},
			{"Name" : "svs_0_V_11", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "dataflow_in_loop_Bat_U0", "Port" : "svs_0_V_11"}]},
			{"Name" : "svs_0_V_12", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "dataflow_in_loop_Bat_U0", "Port" : "svs_0_V_12"}]},
			{"Name" : "svs_0_V_13", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "dataflow_in_loop_Bat_U0", "Port" : "svs_0_V_13"}]},
			{"Name" : "svs_0_V_14", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "dataflow_in_loop_Bat_U0", "Port" : "svs_0_V_14"}]},
			{"Name" : "svs_0_V_15", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "dataflow_in_loop_Bat_U0", "Port" : "svs_0_V_15"}]},
			{"Name" : "svs_1_V_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "dataflow_in_loop_Bat_U0", "Port" : "svs_1_V_0"}]},
			{"Name" : "svs_1_V_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "dataflow_in_loop_Bat_U0", "Port" : "svs_1_V_1"}]},
			{"Name" : "svs_1_V_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "dataflow_in_loop_Bat_U0", "Port" : "svs_1_V_2"}]},
			{"Name" : "svs_1_V_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "dataflow_in_loop_Bat_U0", "Port" : "svs_1_V_3"}]},
			{"Name" : "svs_1_V_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "dataflow_in_loop_Bat_U0", "Port" : "svs_1_V_4"}]},
			{"Name" : "svs_1_V_5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "dataflow_in_loop_Bat_U0", "Port" : "svs_1_V_5"}]},
			{"Name" : "svs_1_V_6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "dataflow_in_loop_Bat_U0", "Port" : "svs_1_V_6"}]},
			{"Name" : "svs_1_V_7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "dataflow_in_loop_Bat_U0", "Port" : "svs_1_V_7"}]},
			{"Name" : "svs_1_V_8", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "dataflow_in_loop_Bat_U0", "Port" : "svs_1_V_8"}]},
			{"Name" : "svs_1_V_9", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "dataflow_in_loop_Bat_U0", "Port" : "svs_1_V_9"}]},
			{"Name" : "svs_1_V_10", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "dataflow_in_loop_Bat_U0", "Port" : "svs_1_V_10"}]},
			{"Name" : "svs_1_V_11", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "dataflow_in_loop_Bat_U0", "Port" : "svs_1_V_11"}]},
			{"Name" : "svs_1_V_12", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "dataflow_in_loop_Bat_U0", "Port" : "svs_1_V_12"}]},
			{"Name" : "svs_1_V_13", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "dataflow_in_loop_Bat_U0", "Port" : "svs_1_V_13"}]},
			{"Name" : "svs_1_V_14", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "dataflow_in_loop_Bat_U0", "Port" : "svs_1_V_14"}]},
			{"Name" : "svs_1_V_15", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "dataflow_in_loop_Bat_U0", "Port" : "svs_1_V_15"}]},
			{"Name" : "EXP_LUT_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "dataflow_in_loop_Bat_U0", "Port" : "EXP_LUT_V"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.classify_control_s_axi_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_Bat_U0", "Parent" : "0", "Child" : ["3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "165", "166", "167"],
		"CDFG" : "dataflow_in_loop_Bat",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "508", "EstimateLatencyMax" : "508",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"InputProcess" : [
			{"ID" : "19", "Name" : "load_and_calc_norm53_U0"}],
		"OutputProcess" : [
			{"ID" : "20", "Name" : "compute_and_output_U0"}],
		"Port" : [
			{"Name" : "in_stream_V_data_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "load_and_calc_norm53_U0", "Port" : "in_stream_V_data_V"}]},
			{"Name" : "in_stream_V_keep_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "load_and_calc_norm53_U0", "Port" : "in_stream_V_keep_V"}]},
			{"Name" : "in_stream_V_strb_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "load_and_calc_norm53_U0", "Port" : "in_stream_V_strb_V"}]},
			{"Name" : "in_stream_V_user_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "load_and_calc_norm53_U0", "Port" : "in_stream_V_user_V"}]},
			{"Name" : "in_stream_V_last_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "load_and_calc_norm53_U0", "Port" : "in_stream_V_last_V"}]},
			{"Name" : "in_stream_V_id_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "load_and_calc_norm53_U0", "Port" : "in_stream_V_id_V"}]},
			{"Name" : "in_stream_V_dest_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "load_and_calc_norm53_U0", "Port" : "in_stream_V_dest_V"}]},
			{"Name" : "out_stream_V_data_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "compute_and_output_U0", "Port" : "out_stream_V_data_V"}]},
			{"Name" : "out_stream_V_keep_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "compute_and_output_U0", "Port" : "out_stream_V_keep_V"}]},
			{"Name" : "out_stream_V_strb_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "compute_and_output_U0", "Port" : "out_stream_V_strb_V"}]},
			{"Name" : "out_stream_V_last_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "compute_and_output_U0", "Port" : "out_stream_V_last_V"}]},
			{"Name" : "n", "Type" : "None", "Direction" : "I"},
			{"Name" : "num_images", "Type" : "None", "Direction" : "I"},
			{"Name" : "sv_norms_0_V_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "compute_and_output_U0", "Port" : "sv_norms_0_V_0"}]},
			{"Name" : "sv_norms_0_V_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "compute_and_output_U0", "Port" : "sv_norms_0_V_1"}]},
			{"Name" : "sv_norms_0_V_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "compute_and_output_U0", "Port" : "sv_norms_0_V_2"}]},
			{"Name" : "sv_norms_0_V_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "compute_and_output_U0", "Port" : "sv_norms_0_V_3"}]},
			{"Name" : "sv_norms_0_V_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "compute_and_output_U0", "Port" : "sv_norms_0_V_4"}]},
			{"Name" : "sv_norms_0_V_5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "compute_and_output_U0", "Port" : "sv_norms_0_V_5"}]},
			{"Name" : "sv_norms_0_V_6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "compute_and_output_U0", "Port" : "sv_norms_0_V_6"}]},
			{"Name" : "sv_norms_0_V_7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "compute_and_output_U0", "Port" : "sv_norms_0_V_7"}]},
			{"Name" : "sv_norms_0_V_8", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "compute_and_output_U0", "Port" : "sv_norms_0_V_8"}]},
			{"Name" : "sv_norms_0_V_9", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "compute_and_output_U0", "Port" : "sv_norms_0_V_9"}]},
			{"Name" : "sv_norms_0_V_10", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "compute_and_output_U0", "Port" : "sv_norms_0_V_10"}]},
			{"Name" : "sv_norms_0_V_11", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "compute_and_output_U0", "Port" : "sv_norms_0_V_11"}]},
			{"Name" : "sv_norms_0_V_12", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "compute_and_output_U0", "Port" : "sv_norms_0_V_12"}]},
			{"Name" : "sv_norms_0_V_13", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "compute_and_output_U0", "Port" : "sv_norms_0_V_13"}]},
			{"Name" : "sv_norms_0_V_14", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "compute_and_output_U0", "Port" : "sv_norms_0_V_14"}]},
			{"Name" : "sv_norms_0_V_15", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "compute_and_output_U0", "Port" : "sv_norms_0_V_15"}]},
			{"Name" : "alphas_0_V_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "compute_and_output_U0", "Port" : "alphas_0_V_0"}]},
			{"Name" : "alphas_0_V_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "compute_and_output_U0", "Port" : "alphas_0_V_1"}]},
			{"Name" : "alphas_0_V_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "compute_and_output_U0", "Port" : "alphas_0_V_2"}]},
			{"Name" : "alphas_0_V_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "compute_and_output_U0", "Port" : "alphas_0_V_3"}]},
			{"Name" : "alphas_0_V_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "compute_and_output_U0", "Port" : "alphas_0_V_4"}]},
			{"Name" : "alphas_0_V_5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "compute_and_output_U0", "Port" : "alphas_0_V_5"}]},
			{"Name" : "alphas_0_V_6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "compute_and_output_U0", "Port" : "alphas_0_V_6"}]},
			{"Name" : "alphas_0_V_7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "compute_and_output_U0", "Port" : "alphas_0_V_7"}]},
			{"Name" : "alphas_0_V_8", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "compute_and_output_U0", "Port" : "alphas_0_V_8"}]},
			{"Name" : "alphas_0_V_9", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "compute_and_output_U0", "Port" : "alphas_0_V_9"}]},
			{"Name" : "alphas_0_V_10", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "compute_and_output_U0", "Port" : "alphas_0_V_10"}]},
			{"Name" : "alphas_0_V_11", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "compute_and_output_U0", "Port" : "alphas_0_V_11"}]},
			{"Name" : "alphas_0_V_12", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "compute_and_output_U0", "Port" : "alphas_0_V_12"}]},
			{"Name" : "alphas_0_V_13", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "compute_and_output_U0", "Port" : "alphas_0_V_13"}]},
			{"Name" : "alphas_0_V_14", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "compute_and_output_U0", "Port" : "alphas_0_V_14"}]},
			{"Name" : "alphas_0_V_15", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "compute_and_output_U0", "Port" : "alphas_0_V_15"}]},
			{"Name" : "sv_norms_1_V_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "compute_and_output_U0", "Port" : "sv_norms_1_V_0"}]},
			{"Name" : "sv_norms_1_V_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "compute_and_output_U0", "Port" : "sv_norms_1_V_1"}]},
			{"Name" : "sv_norms_1_V_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "compute_and_output_U0", "Port" : "sv_norms_1_V_2"}]},
			{"Name" : "sv_norms_1_V_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "compute_and_output_U0", "Port" : "sv_norms_1_V_3"}]},
			{"Name" : "sv_norms_1_V_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "compute_and_output_U0", "Port" : "sv_norms_1_V_4"}]},
			{"Name" : "sv_norms_1_V_5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "compute_and_output_U0", "Port" : "sv_norms_1_V_5"}]},
			{"Name" : "sv_norms_1_V_6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "compute_and_output_U0", "Port" : "sv_norms_1_V_6"}]},
			{"Name" : "sv_norms_1_V_7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "compute_and_output_U0", "Port" : "sv_norms_1_V_7"}]},
			{"Name" : "sv_norms_1_V_8", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "compute_and_output_U0", "Port" : "sv_norms_1_V_8"}]},
			{"Name" : "sv_norms_1_V_9", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "compute_and_output_U0", "Port" : "sv_norms_1_V_9"}]},
			{"Name" : "sv_norms_1_V_10", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "compute_and_output_U0", "Port" : "sv_norms_1_V_10"}]},
			{"Name" : "sv_norms_1_V_11", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "compute_and_output_U0", "Port" : "sv_norms_1_V_11"}]},
			{"Name" : "sv_norms_1_V_12", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "compute_and_output_U0", "Port" : "sv_norms_1_V_12"}]},
			{"Name" : "sv_norms_1_V_13", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "compute_and_output_U0", "Port" : "sv_norms_1_V_13"}]},
			{"Name" : "sv_norms_1_V_14", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "compute_and_output_U0", "Port" : "sv_norms_1_V_14"}]},
			{"Name" : "sv_norms_1_V_15", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "compute_and_output_U0", "Port" : "sv_norms_1_V_15"}]},
			{"Name" : "alphas_1_V_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "compute_and_output_U0", "Port" : "alphas_1_V_0"}]},
			{"Name" : "alphas_1_V_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "compute_and_output_U0", "Port" : "alphas_1_V_1"}]},
			{"Name" : "alphas_1_V_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "compute_and_output_U0", "Port" : "alphas_1_V_2"}]},
			{"Name" : "alphas_1_V_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "compute_and_output_U0", "Port" : "alphas_1_V_3"}]},
			{"Name" : "alphas_1_V_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "compute_and_output_U0", "Port" : "alphas_1_V_4"}]},
			{"Name" : "alphas_1_V_5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "compute_and_output_U0", "Port" : "alphas_1_V_5"}]},
			{"Name" : "alphas_1_V_6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "compute_and_output_U0", "Port" : "alphas_1_V_6"}]},
			{"Name" : "alphas_1_V_7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "compute_and_output_U0", "Port" : "alphas_1_V_7"}]},
			{"Name" : "alphas_1_V_8", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "compute_and_output_U0", "Port" : "alphas_1_V_8"}]},
			{"Name" : "alphas_1_V_9", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "compute_and_output_U0", "Port" : "alphas_1_V_9"}]},
			{"Name" : "alphas_1_V_10", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "compute_and_output_U0", "Port" : "alphas_1_V_10"}]},
			{"Name" : "alphas_1_V_11", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "compute_and_output_U0", "Port" : "alphas_1_V_11"}]},
			{"Name" : "alphas_1_V_12", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "compute_and_output_U0", "Port" : "alphas_1_V_12"}]},
			{"Name" : "alphas_1_V_13", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "compute_and_output_U0", "Port" : "alphas_1_V_13"}]},
			{"Name" : "alphas_1_V_14", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "compute_and_output_U0", "Port" : "alphas_1_V_14"}]},
			{"Name" : "alphas_1_V_15", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "compute_and_output_U0", "Port" : "alphas_1_V_15"}]},
			{"Name" : "svs_0_V_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "compute_and_output_U0", "Port" : "svs_0_V_0"}]},
			{"Name" : "svs_0_V_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "compute_and_output_U0", "Port" : "svs_0_V_1"}]},
			{"Name" : "svs_0_V_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "compute_and_output_U0", "Port" : "svs_0_V_2"}]},
			{"Name" : "svs_0_V_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "compute_and_output_U0", "Port" : "svs_0_V_3"}]},
			{"Name" : "svs_0_V_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "compute_and_output_U0", "Port" : "svs_0_V_4"}]},
			{"Name" : "svs_0_V_5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "compute_and_output_U0", "Port" : "svs_0_V_5"}]},
			{"Name" : "svs_0_V_6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "compute_and_output_U0", "Port" : "svs_0_V_6"}]},
			{"Name" : "svs_0_V_7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "compute_and_output_U0", "Port" : "svs_0_V_7"}]},
			{"Name" : "svs_0_V_8", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "compute_and_output_U0", "Port" : "svs_0_V_8"}]},
			{"Name" : "svs_0_V_9", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "compute_and_output_U0", "Port" : "svs_0_V_9"}]},
			{"Name" : "svs_0_V_10", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "compute_and_output_U0", "Port" : "svs_0_V_10"}]},
			{"Name" : "svs_0_V_11", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "compute_and_output_U0", "Port" : "svs_0_V_11"}]},
			{"Name" : "svs_0_V_12", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "compute_and_output_U0", "Port" : "svs_0_V_12"}]},
			{"Name" : "svs_0_V_13", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "compute_and_output_U0", "Port" : "svs_0_V_13"}]},
			{"Name" : "svs_0_V_14", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "compute_and_output_U0", "Port" : "svs_0_V_14"}]},
			{"Name" : "svs_0_V_15", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "compute_and_output_U0", "Port" : "svs_0_V_15"}]},
			{"Name" : "svs_1_V_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "compute_and_output_U0", "Port" : "svs_1_V_0"}]},
			{"Name" : "svs_1_V_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "compute_and_output_U0", "Port" : "svs_1_V_1"}]},
			{"Name" : "svs_1_V_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "compute_and_output_U0", "Port" : "svs_1_V_2"}]},
			{"Name" : "svs_1_V_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "compute_and_output_U0", "Port" : "svs_1_V_3"}]},
			{"Name" : "svs_1_V_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "compute_and_output_U0", "Port" : "svs_1_V_4"}]},
			{"Name" : "svs_1_V_5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "compute_and_output_U0", "Port" : "svs_1_V_5"}]},
			{"Name" : "svs_1_V_6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "compute_and_output_U0", "Port" : "svs_1_V_6"}]},
			{"Name" : "svs_1_V_7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "compute_and_output_U0", "Port" : "svs_1_V_7"}]},
			{"Name" : "svs_1_V_8", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "compute_and_output_U0", "Port" : "svs_1_V_8"}]},
			{"Name" : "svs_1_V_9", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "compute_and_output_U0", "Port" : "svs_1_V_9"}]},
			{"Name" : "svs_1_V_10", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "compute_and_output_U0", "Port" : "svs_1_V_10"}]},
			{"Name" : "svs_1_V_11", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "compute_and_output_U0", "Port" : "svs_1_V_11"}]},
			{"Name" : "svs_1_V_12", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "compute_and_output_U0", "Port" : "svs_1_V_12"}]},
			{"Name" : "svs_1_V_13", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "compute_and_output_U0", "Port" : "svs_1_V_13"}]},
			{"Name" : "svs_1_V_14", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "compute_and_output_U0", "Port" : "svs_1_V_14"}]},
			{"Name" : "svs_1_V_15", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "compute_and_output_U0", "Port" : "svs_1_V_15"}]},
			{"Name" : "EXP_LUT_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "compute_and_output_U0", "Port" : "EXP_LUT_V"}]}]},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_Bat_U0.x_local_0_V_U", "Parent" : "2"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_Bat_U0.x_local_1_V_U", "Parent" : "2"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_Bat_U0.x_local_2_V_U", "Parent" : "2"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_Bat_U0.x_local_3_V_U", "Parent" : "2"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_Bat_U0.x_local_4_V_U", "Parent" : "2"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_Bat_U0.x_local_5_V_U", "Parent" : "2"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_Bat_U0.x_local_6_V_U", "Parent" : "2"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_Bat_U0.x_local_7_V_U", "Parent" : "2"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_Bat_U0.x_local_8_V_U", "Parent" : "2"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_Bat_U0.x_local_9_V_U", "Parent" : "2"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_Bat_U0.x_local_10_V_U", "Parent" : "2"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_Bat_U0.x_local_11_V_U", "Parent" : "2"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_Bat_U0.x_local_12_V_U", "Parent" : "2"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_Bat_U0.x_local_13_V_U", "Parent" : "2"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_Bat_U0.x_local_14_V_U", "Parent" : "2"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_Bat_U0.x_local_15_V_U", "Parent" : "2"},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_Bat_U0.load_and_calc_norm53_U0", "Parent" : "2",
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
			{"Name" : "x_local_0_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "20", "DependentChan" : "3"},
			{"Name" : "x_local_1_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "20", "DependentChan" : "4"},
			{"Name" : "x_local_2_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "20", "DependentChan" : "5"},
			{"Name" : "x_local_3_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "20", "DependentChan" : "6"},
			{"Name" : "x_local_4_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "20", "DependentChan" : "7"},
			{"Name" : "x_local_5_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "20", "DependentChan" : "8"},
			{"Name" : "x_local_6_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "20", "DependentChan" : "9"},
			{"Name" : "x_local_7_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "20", "DependentChan" : "10"},
			{"Name" : "x_local_8_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "20", "DependentChan" : "11"},
			{"Name" : "x_local_9_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "20", "DependentChan" : "12"},
			{"Name" : "x_local_10_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "20", "DependentChan" : "13"},
			{"Name" : "x_local_11_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "20", "DependentChan" : "14"},
			{"Name" : "x_local_12_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "20", "DependentChan" : "15"},
			{"Name" : "x_local_13_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "20", "DependentChan" : "16"},
			{"Name" : "x_local_14_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "20", "DependentChan" : "17"},
			{"Name" : "x_local_15_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "20", "DependentChan" : "18"},
			{"Name" : "n", "Type" : "None", "Direction" : "I"},
			{"Name" : "num_images", "Type" : "None", "Direction" : "I"},
			{"Name" : "n_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "20", "DependentChan" : "165",
				"BlockSignal" : [
					{"Name" : "n_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "num_images_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "20", "DependentChan" : "166",
				"BlockSignal" : [
					{"Name" : "num_images_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_Bat_U0.compute_and_output_U0", "Parent" : "2", "Child" : ["21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "55", "56", "57", "58", "59", "60", "61", "62", "63", "64", "65", "66", "67", "68", "69", "70", "71", "72", "73", "74", "75", "76", "77", "78", "79", "80", "81", "82", "83", "84", "85", "86", "87", "88", "89", "90", "91", "92", "93", "94", "95", "96", "97", "98", "99", "100", "101", "102", "103", "104", "105", "106", "107", "108", "109", "110", "111", "112", "113", "114", "115", "116", "117", "118", "119", "120", "121", "122", "123", "124", "125", "126", "127", "128", "129", "130", "131", "132", "133", "134", "135", "136", "137", "138", "139", "140", "141", "142", "143", "144", "145", "146", "147", "148", "149", "150", "151", "152", "153", "154", "155", "156", "157", "158", "159", "160", "161", "162", "163", "164"],
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
			{"Name" : "x_local_0_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "19", "DependentChan" : "3"},
			{"Name" : "x_local_1_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "19", "DependentChan" : "4"},
			{"Name" : "x_local_2_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "19", "DependentChan" : "5"},
			{"Name" : "x_local_3_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "19", "DependentChan" : "6"},
			{"Name" : "x_local_4_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "19", "DependentChan" : "7"},
			{"Name" : "x_local_5_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "19", "DependentChan" : "8"},
			{"Name" : "x_local_6_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "19", "DependentChan" : "9"},
			{"Name" : "x_local_7_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "19", "DependentChan" : "10"},
			{"Name" : "x_local_8_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "19", "DependentChan" : "11"},
			{"Name" : "x_local_9_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "19", "DependentChan" : "12"},
			{"Name" : "x_local_10_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "19", "DependentChan" : "13"},
			{"Name" : "x_local_11_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "19", "DependentChan" : "14"},
			{"Name" : "x_local_12_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "19", "DependentChan" : "15"},
			{"Name" : "x_local_13_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "19", "DependentChan" : "16"},
			{"Name" : "x_local_14_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "19", "DependentChan" : "17"},
			{"Name" : "x_local_15_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "19", "DependentChan" : "18"},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I", "DependentProc" : "19", "DependentChan" : "167"},
			{"Name" : "out_stream_V_data_V", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "out_stream_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "out_stream_V_keep_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "out_stream_V_strb_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "out_stream_V_last_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "n", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "19", "DependentChan" : "165",
				"BlockSignal" : [
					{"Name" : "n_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "num_images", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "19", "DependentChan" : "166",
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
	{"ID" : "21", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_Bat_U0.compute_and_output_U0.sv_norms_0_V_0_U", "Parent" : "20"},
	{"ID" : "22", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_Bat_U0.compute_and_output_U0.sv_norms_0_V_1_U", "Parent" : "20"},
	{"ID" : "23", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_Bat_U0.compute_and_output_U0.sv_norms_0_V_2_U", "Parent" : "20"},
	{"ID" : "24", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_Bat_U0.compute_and_output_U0.sv_norms_0_V_3_U", "Parent" : "20"},
	{"ID" : "25", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_Bat_U0.compute_and_output_U0.sv_norms_0_V_4_U", "Parent" : "20"},
	{"ID" : "26", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_Bat_U0.compute_and_output_U0.sv_norms_0_V_5_U", "Parent" : "20"},
	{"ID" : "27", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_Bat_U0.compute_and_output_U0.sv_norms_0_V_6_U", "Parent" : "20"},
	{"ID" : "28", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_Bat_U0.compute_and_output_U0.sv_norms_0_V_7_U", "Parent" : "20"},
	{"ID" : "29", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_Bat_U0.compute_and_output_U0.sv_norms_0_V_8_U", "Parent" : "20"},
	{"ID" : "30", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_Bat_U0.compute_and_output_U0.sv_norms_0_V_9_U", "Parent" : "20"},
	{"ID" : "31", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_Bat_U0.compute_and_output_U0.sv_norms_0_V_10_U", "Parent" : "20"},
	{"ID" : "32", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_Bat_U0.compute_and_output_U0.sv_norms_0_V_11_U", "Parent" : "20"},
	{"ID" : "33", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_Bat_U0.compute_and_output_U0.sv_norms_0_V_12_U", "Parent" : "20"},
	{"ID" : "34", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_Bat_U0.compute_and_output_U0.sv_norms_0_V_13_U", "Parent" : "20"},
	{"ID" : "35", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_Bat_U0.compute_and_output_U0.sv_norms_0_V_14_U", "Parent" : "20"},
	{"ID" : "36", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_Bat_U0.compute_and_output_U0.sv_norms_0_V_15_U", "Parent" : "20"},
	{"ID" : "37", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_Bat_U0.compute_and_output_U0.alphas_0_V_0_U", "Parent" : "20"},
	{"ID" : "38", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_Bat_U0.compute_and_output_U0.alphas_0_V_1_U", "Parent" : "20"},
	{"ID" : "39", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_Bat_U0.compute_and_output_U0.alphas_0_V_2_U", "Parent" : "20"},
	{"ID" : "40", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_Bat_U0.compute_and_output_U0.alphas_0_V_3_U", "Parent" : "20"},
	{"ID" : "41", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_Bat_U0.compute_and_output_U0.alphas_0_V_4_U", "Parent" : "20"},
	{"ID" : "42", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_Bat_U0.compute_and_output_U0.alphas_0_V_5_U", "Parent" : "20"},
	{"ID" : "43", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_Bat_U0.compute_and_output_U0.alphas_0_V_6_U", "Parent" : "20"},
	{"ID" : "44", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_Bat_U0.compute_and_output_U0.alphas_0_V_7_U", "Parent" : "20"},
	{"ID" : "45", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_Bat_U0.compute_and_output_U0.alphas_0_V_8_U", "Parent" : "20"},
	{"ID" : "46", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_Bat_U0.compute_and_output_U0.alphas_0_V_9_U", "Parent" : "20"},
	{"ID" : "47", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_Bat_U0.compute_and_output_U0.alphas_0_V_10_U", "Parent" : "20"},
	{"ID" : "48", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_Bat_U0.compute_and_output_U0.alphas_0_V_11_U", "Parent" : "20"},
	{"ID" : "49", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_Bat_U0.compute_and_output_U0.alphas_0_V_12_U", "Parent" : "20"},
	{"ID" : "50", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_Bat_U0.compute_and_output_U0.alphas_0_V_13_U", "Parent" : "20"},
	{"ID" : "51", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_Bat_U0.compute_and_output_U0.alphas_0_V_14_U", "Parent" : "20"},
	{"ID" : "52", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_Bat_U0.compute_and_output_U0.alphas_0_V_15_U", "Parent" : "20"},
	{"ID" : "53", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_Bat_U0.compute_and_output_U0.sv_norms_1_V_0_U", "Parent" : "20"},
	{"ID" : "54", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_Bat_U0.compute_and_output_U0.sv_norms_1_V_1_U", "Parent" : "20"},
	{"ID" : "55", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_Bat_U0.compute_and_output_U0.sv_norms_1_V_2_U", "Parent" : "20"},
	{"ID" : "56", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_Bat_U0.compute_and_output_U0.sv_norms_1_V_3_U", "Parent" : "20"},
	{"ID" : "57", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_Bat_U0.compute_and_output_U0.sv_norms_1_V_4_U", "Parent" : "20"},
	{"ID" : "58", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_Bat_U0.compute_and_output_U0.sv_norms_1_V_5_U", "Parent" : "20"},
	{"ID" : "59", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_Bat_U0.compute_and_output_U0.sv_norms_1_V_6_U", "Parent" : "20"},
	{"ID" : "60", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_Bat_U0.compute_and_output_U0.sv_norms_1_V_7_U", "Parent" : "20"},
	{"ID" : "61", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_Bat_U0.compute_and_output_U0.sv_norms_1_V_8_U", "Parent" : "20"},
	{"ID" : "62", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_Bat_U0.compute_and_output_U0.sv_norms_1_V_9_U", "Parent" : "20"},
	{"ID" : "63", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_Bat_U0.compute_and_output_U0.sv_norms_1_V_10_U", "Parent" : "20"},
	{"ID" : "64", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_Bat_U0.compute_and_output_U0.sv_norms_1_V_11_U", "Parent" : "20"},
	{"ID" : "65", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_Bat_U0.compute_and_output_U0.sv_norms_1_V_12_U", "Parent" : "20"},
	{"ID" : "66", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_Bat_U0.compute_and_output_U0.sv_norms_1_V_13_U", "Parent" : "20"},
	{"ID" : "67", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_Bat_U0.compute_and_output_U0.sv_norms_1_V_14_U", "Parent" : "20"},
	{"ID" : "68", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_Bat_U0.compute_and_output_U0.sv_norms_1_V_15_U", "Parent" : "20"},
	{"ID" : "69", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_Bat_U0.compute_and_output_U0.alphas_1_V_0_U", "Parent" : "20"},
	{"ID" : "70", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_Bat_U0.compute_and_output_U0.alphas_1_V_1_U", "Parent" : "20"},
	{"ID" : "71", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_Bat_U0.compute_and_output_U0.alphas_1_V_2_U", "Parent" : "20"},
	{"ID" : "72", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_Bat_U0.compute_and_output_U0.alphas_1_V_3_U", "Parent" : "20"},
	{"ID" : "73", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_Bat_U0.compute_and_output_U0.alphas_1_V_4_U", "Parent" : "20"},
	{"ID" : "74", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_Bat_U0.compute_and_output_U0.alphas_1_V_5_U", "Parent" : "20"},
	{"ID" : "75", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_Bat_U0.compute_and_output_U0.alphas_1_V_6_U", "Parent" : "20"},
	{"ID" : "76", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_Bat_U0.compute_and_output_U0.alphas_1_V_7_U", "Parent" : "20"},
	{"ID" : "77", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_Bat_U0.compute_and_output_U0.alphas_1_V_8_U", "Parent" : "20"},
	{"ID" : "78", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_Bat_U0.compute_and_output_U0.alphas_1_V_9_U", "Parent" : "20"},
	{"ID" : "79", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_Bat_U0.compute_and_output_U0.alphas_1_V_10_U", "Parent" : "20"},
	{"ID" : "80", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_Bat_U0.compute_and_output_U0.alphas_1_V_11_U", "Parent" : "20"},
	{"ID" : "81", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_Bat_U0.compute_and_output_U0.alphas_1_V_12_U", "Parent" : "20"},
	{"ID" : "82", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_Bat_U0.compute_and_output_U0.alphas_1_V_13_U", "Parent" : "20"},
	{"ID" : "83", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_Bat_U0.compute_and_output_U0.alphas_1_V_14_U", "Parent" : "20"},
	{"ID" : "84", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_Bat_U0.compute_and_output_U0.alphas_1_V_15_U", "Parent" : "20"},
	{"ID" : "85", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_Bat_U0.compute_and_output_U0.svs_0_V_0_U", "Parent" : "20"},
	{"ID" : "86", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_Bat_U0.compute_and_output_U0.svs_0_V_1_U", "Parent" : "20"},
	{"ID" : "87", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_Bat_U0.compute_and_output_U0.svs_0_V_2_U", "Parent" : "20"},
	{"ID" : "88", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_Bat_U0.compute_and_output_U0.svs_0_V_3_U", "Parent" : "20"},
	{"ID" : "89", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_Bat_U0.compute_and_output_U0.svs_0_V_4_U", "Parent" : "20"},
	{"ID" : "90", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_Bat_U0.compute_and_output_U0.svs_0_V_5_U", "Parent" : "20"},
	{"ID" : "91", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_Bat_U0.compute_and_output_U0.svs_0_V_6_U", "Parent" : "20"},
	{"ID" : "92", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_Bat_U0.compute_and_output_U0.svs_0_V_7_U", "Parent" : "20"},
	{"ID" : "93", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_Bat_U0.compute_and_output_U0.svs_0_V_8_U", "Parent" : "20"},
	{"ID" : "94", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_Bat_U0.compute_and_output_U0.svs_0_V_9_U", "Parent" : "20"},
	{"ID" : "95", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_Bat_U0.compute_and_output_U0.svs_0_V_10_U", "Parent" : "20"},
	{"ID" : "96", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_Bat_U0.compute_and_output_U0.svs_0_V_11_U", "Parent" : "20"},
	{"ID" : "97", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_Bat_U0.compute_and_output_U0.svs_0_V_12_U", "Parent" : "20"},
	{"ID" : "98", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_Bat_U0.compute_and_output_U0.svs_0_V_13_U", "Parent" : "20"},
	{"ID" : "99", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_Bat_U0.compute_and_output_U0.svs_0_V_14_U", "Parent" : "20"},
	{"ID" : "100", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_Bat_U0.compute_and_output_U0.svs_0_V_15_U", "Parent" : "20"},
	{"ID" : "101", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_Bat_U0.compute_and_output_U0.svs_1_V_0_U", "Parent" : "20"},
	{"ID" : "102", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_Bat_U0.compute_and_output_U0.svs_1_V_1_U", "Parent" : "20"},
	{"ID" : "103", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_Bat_U0.compute_and_output_U0.svs_1_V_2_U", "Parent" : "20"},
	{"ID" : "104", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_Bat_U0.compute_and_output_U0.svs_1_V_3_U", "Parent" : "20"},
	{"ID" : "105", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_Bat_U0.compute_and_output_U0.svs_1_V_4_U", "Parent" : "20"},
	{"ID" : "106", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_Bat_U0.compute_and_output_U0.svs_1_V_5_U", "Parent" : "20"},
	{"ID" : "107", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_Bat_U0.compute_and_output_U0.svs_1_V_6_U", "Parent" : "20"},
	{"ID" : "108", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_Bat_U0.compute_and_output_U0.svs_1_V_7_U", "Parent" : "20"},
	{"ID" : "109", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_Bat_U0.compute_and_output_U0.svs_1_V_8_U", "Parent" : "20"},
	{"ID" : "110", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_Bat_U0.compute_and_output_U0.svs_1_V_9_U", "Parent" : "20"},
	{"ID" : "111", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_Bat_U0.compute_and_output_U0.svs_1_V_10_U", "Parent" : "20"},
	{"ID" : "112", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_Bat_U0.compute_and_output_U0.svs_1_V_11_U", "Parent" : "20"},
	{"ID" : "113", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_Bat_U0.compute_and_output_U0.svs_1_V_12_U", "Parent" : "20"},
	{"ID" : "114", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_Bat_U0.compute_and_output_U0.svs_1_V_13_U", "Parent" : "20"},
	{"ID" : "115", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_Bat_U0.compute_and_output_U0.svs_1_V_14_U", "Parent" : "20"},
	{"ID" : "116", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_Bat_U0.compute_and_output_U0.svs_1_V_15_U", "Parent" : "20"},
	{"ID" : "117", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_Bat_U0.compute_and_output_U0.EXP_LUT_V_U", "Parent" : "20"},
	{"ID" : "118", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_Bat_U0.compute_and_output_U0.classify_mux_1632bKp_U28", "Parent" : "20"},
	{"ID" : "119", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_Bat_U0.compute_and_output_U0.classify_mux_1632bLp_U29", "Parent" : "20"},
	{"ID" : "120", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_Bat_U0.compute_and_output_U0.classify_mux_164_bMq_U30", "Parent" : "20"},
	{"ID" : "121", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_Bat_U0.compute_and_output_U0.classify_mux_1632bKp_U31", "Parent" : "20"},
	{"ID" : "122", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_Bat_U0.compute_and_output_U0.classify_mux_1632bLp_U32", "Parent" : "20"},
	{"ID" : "123", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_Bat_U0.compute_and_output_U0.classify_mux_164_bMq_U33", "Parent" : "20"},
	{"ID" : "124", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_Bat_U0.compute_and_output_U0.classify_mux_1632bKp_U34", "Parent" : "20"},
	{"ID" : "125", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_Bat_U0.compute_and_output_U0.classify_mux_1632bLp_U35", "Parent" : "20"},
	{"ID" : "126", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_Bat_U0.compute_and_output_U0.classify_mux_164_bMq_U36", "Parent" : "20"},
	{"ID" : "127", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_Bat_U0.compute_and_output_U0.classify_mux_164_bMq_U37", "Parent" : "20"},
	{"ID" : "128", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_Bat_U0.compute_and_output_U0.classify_mux_1632bKp_U38", "Parent" : "20"},
	{"ID" : "129", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_Bat_U0.compute_and_output_U0.classify_mux_1632bLp_U39", "Parent" : "20"},
	{"ID" : "130", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_Bat_U0.compute_and_output_U0.classify_mux_164_bMq_U40", "Parent" : "20"},
	{"ID" : "131", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_Bat_U0.compute_and_output_U0.classify_mux_1632bKp_U41", "Parent" : "20"},
	{"ID" : "132", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_Bat_U0.compute_and_output_U0.classify_mux_1632bLp_U42", "Parent" : "20"},
	{"ID" : "133", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_Bat_U0.compute_and_output_U0.classify_mux_164_bMq_U43", "Parent" : "20"},
	{"ID" : "134", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_Bat_U0.compute_and_output_U0.classify_mux_1632bKp_U44", "Parent" : "20"},
	{"ID" : "135", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_Bat_U0.compute_and_output_U0.classify_mux_1632bLp_U45", "Parent" : "20"},
	{"ID" : "136", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_Bat_U0.compute_and_output_U0.classify_mux_164_bMq_U46", "Parent" : "20"},
	{"ID" : "137", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_Bat_U0.compute_and_output_U0.classify_mux_1632bKp_U47", "Parent" : "20"},
	{"ID" : "138", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_Bat_U0.compute_and_output_U0.classify_mux_1632bLp_U48", "Parent" : "20"},
	{"ID" : "139", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_Bat_U0.compute_and_output_U0.classify_mux_1632bKp_U49", "Parent" : "20"},
	{"ID" : "140", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_Bat_U0.compute_and_output_U0.classify_mux_1632bLp_U50", "Parent" : "20"},
	{"ID" : "141", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_Bat_U0.compute_and_output_U0.classify_mux_164_bMq_U51", "Parent" : "20"},
	{"ID" : "142", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_Bat_U0.compute_and_output_U0.classify_mux_164_bMq_U52", "Parent" : "20"},
	{"ID" : "143", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_Bat_U0.compute_and_output_U0.classify_mux_164_bMq_U53", "Parent" : "20"},
	{"ID" : "144", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_Bat_U0.compute_and_output_U0.classify_mux_164_bMq_U54", "Parent" : "20"},
	{"ID" : "145", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_Bat_U0.compute_and_output_U0.classify_mux_164_bMq_U55", "Parent" : "20"},
	{"ID" : "146", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_Bat_U0.compute_and_output_U0.classify_mux_164_bMq_U56", "Parent" : "20"},
	{"ID" : "147", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_Bat_U0.compute_and_output_U0.classify_mux_164_bMq_U57", "Parent" : "20"},
	{"ID" : "148", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_Bat_U0.compute_and_output_U0.classify_mux_164_bMq_U58", "Parent" : "20"},
	{"ID" : "149", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_Bat_U0.compute_and_output_U0.classify_mul_mul_bNq_U59", "Parent" : "20"},
	{"ID" : "150", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_Bat_U0.compute_and_output_U0.classify_mul_mul_bNq_U60", "Parent" : "20"},
	{"ID" : "151", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_Bat_U0.compute_and_output_U0.classify_mul_mul_bNq_U61", "Parent" : "20"},
	{"ID" : "152", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_Bat_U0.compute_and_output_U0.classify_mul_mul_bNq_U62", "Parent" : "20"},
	{"ID" : "153", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_Bat_U0.compute_and_output_U0.classify_mul_mul_bNq_U63", "Parent" : "20"},
	{"ID" : "154", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_Bat_U0.compute_and_output_U0.classify_mul_mul_bNq_U64", "Parent" : "20"},
	{"ID" : "155", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_Bat_U0.compute_and_output_U0.classify_mul_mul_bNq_U65", "Parent" : "20"},
	{"ID" : "156", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_Bat_U0.compute_and_output_U0.classify_mac_mulabOq_U66", "Parent" : "20"},
	{"ID" : "157", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_Bat_U0.compute_and_output_U0.classify_mac_mulabOq_U67", "Parent" : "20"},
	{"ID" : "158", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_Bat_U0.compute_and_output_U0.classify_mac_mulabOq_U68", "Parent" : "20"},
	{"ID" : "159", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_Bat_U0.compute_and_output_U0.classify_mul_mul_bNq_U69", "Parent" : "20"},
	{"ID" : "160", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_Bat_U0.compute_and_output_U0.classify_mac_mulabOq_U70", "Parent" : "20"},
	{"ID" : "161", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_Bat_U0.compute_and_output_U0.classify_mac_mulabOq_U71", "Parent" : "20"},
	{"ID" : "162", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_Bat_U0.compute_and_output_U0.classify_mac_mulabOq_U72", "Parent" : "20"},
	{"ID" : "163", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_Bat_U0.compute_and_output_U0.classify_mac_mulabOq_U73", "Parent" : "20"},
	{"ID" : "164", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_Bat_U0.compute_and_output_U0.classify_mac_mulabOq_U74", "Parent" : "20"},
	{"ID" : "165", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_Bat_U0.n_c_U", "Parent" : "2"},
	{"ID" : "166", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_Bat_U0.num_images_c_U", "Parent" : "2"},
	{"ID" : "167", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_Bat_U0.internal_norm_V_U", "Parent" : "2"}]}


set ArgLastReadFirstWriteLatency {
	classify {
		in_stream_V_data_V {Type I LastRead 1 FirstWrite -1}
		in_stream_V_keep_V {Type I LastRead 1 FirstWrite -1}
		in_stream_V_strb_V {Type I LastRead 1 FirstWrite -1}
		in_stream_V_user_V {Type I LastRead 1 FirstWrite -1}
		in_stream_V_last_V {Type I LastRead 1 FirstWrite -1}
		in_stream_V_id_V {Type I LastRead 1 FirstWrite -1}
		in_stream_V_dest_V {Type I LastRead 1 FirstWrite -1}
		out_stream_V_data_V {Type O LastRead -1 FirstWrite 3}
		out_stream_V_keep_V {Type O LastRead -1 FirstWrite 3}
		out_stream_V_strb_V {Type O LastRead -1 FirstWrite 3}
		out_stream_V_last_V {Type O LastRead -1 FirstWrite 3}
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
		EXP_LUT_V {Type I LastRead -1 FirstWrite -1}}
	dataflow_in_loop_Bat {
		in_stream_V_data_V {Type I LastRead 1 FirstWrite -1}
		in_stream_V_keep_V {Type I LastRead 1 FirstWrite -1}
		in_stream_V_strb_V {Type I LastRead 1 FirstWrite -1}
		in_stream_V_user_V {Type I LastRead 1 FirstWrite -1}
		in_stream_V_last_V {Type I LastRead 1 FirstWrite -1}
		in_stream_V_id_V {Type I LastRead 1 FirstWrite -1}
		in_stream_V_dest_V {Type I LastRead 1 FirstWrite -1}
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
		EXP_LUT_V {Type I LastRead -1 FirstWrite -1}}
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
		num_images_out {Type O LastRead -1 FirstWrite 0}}
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
	{"Name" : "Latency", "Min" : "1058711", "Max" : "1058711"}
	, {"Name" : "Interval", "Min" : "1058712", "Max" : "1058712"}
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
