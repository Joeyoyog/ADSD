set moduleName dataflow_in_loop_Bat
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
set C_modelName {dataflow_in_loop_Bat}
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
	{ n_0_i_i int 12 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "in_stream_V_data_V", "interface" : "axis", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "in_stream_V_keep_V", "interface" : "axis", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "in_stream_V_strb_V", "interface" : "axis", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "in_stream_V_user_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "in_stream_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "in_stream_V_id_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "in_stream_V_dest_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "out_stream_V_data_V", "interface" : "axis", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "out_stream_V_keep_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "out_stream_V_strb_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "out_stream_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "n_0_i_i", "interface" : "wire", "bitwidth" : 12, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 24
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
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
	{ n_0_i_i sc_in sc_lv 12 signal 11 } 
	{ in_stream_TVALID sc_in sc_logic 1 invld 6 } 
	{ in_stream_TREADY sc_out sc_logic 1 inacc 6 } 
	{ n_0_i_i_ap_vld sc_in sc_logic 1 invld 11 } 
	{ out_stream_TVALID sc_out sc_logic 1 outvld 10 } 
	{ out_stream_TREADY sc_in sc_logic 1 outacc 10 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
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
 	{ "name": "n_0_i_i", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "n_0_i_i", "role": "default" }} , 
 	{ "name": "in_stream_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "in_stream_V_dest_V", "role": "default" }} , 
 	{ "name": "in_stream_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "in_stream_V_dest_V", "role": "default" }} , 
 	{ "name": "n_0_i_i_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "n_0_i_i", "role": "ap_vld" }} , 
 	{ "name": "out_stream_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "out_stream_V_last_V", "role": "default" }} , 
 	{ "name": "out_stream_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "out_stream_V_last_V", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "72", "73"],
		"CDFG" : "dataflow_in_loop_Bat",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "974", "EstimateLatencyMax" : "974",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"InputProcess" : [
			{"ID" : "17", "Name" : "load_and_calc_norm61_U0"}],
		"OutputProcess" : [
			{"ID" : "18", "Name" : "compute_and_output_U0"}],
		"Port" : [
			{"Name" : "in_stream_V_data_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "17", "SubInstance" : "load_and_calc_norm61_U0", "Port" : "in_stream_V_data_V"}]},
			{"Name" : "in_stream_V_keep_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "17", "SubInstance" : "load_and_calc_norm61_U0", "Port" : "in_stream_V_keep_V"}]},
			{"Name" : "in_stream_V_strb_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "17", "SubInstance" : "load_and_calc_norm61_U0", "Port" : "in_stream_V_strb_V"}]},
			{"Name" : "in_stream_V_user_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "17", "SubInstance" : "load_and_calc_norm61_U0", "Port" : "in_stream_V_user_V"}]},
			{"Name" : "in_stream_V_last_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "17", "SubInstance" : "load_and_calc_norm61_U0", "Port" : "in_stream_V_last_V"}]},
			{"Name" : "in_stream_V_id_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "17", "SubInstance" : "load_and_calc_norm61_U0", "Port" : "in_stream_V_id_V"}]},
			{"Name" : "in_stream_V_dest_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "17", "SubInstance" : "load_and_calc_norm61_U0", "Port" : "in_stream_V_dest_V"}]},
			{"Name" : "out_stream_V_data_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "compute_and_output_U0", "Port" : "out_stream_V_data_V"}]},
			{"Name" : "out_stream_V_keep_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "compute_and_output_U0", "Port" : "out_stream_V_keep_V"}]},
			{"Name" : "out_stream_V_strb_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "compute_and_output_U0", "Port" : "out_stream_V_strb_V"}]},
			{"Name" : "out_stream_V_last_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "compute_and_output_U0", "Port" : "out_stream_V_last_V"}]},
			{"Name" : "n_0_i_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "svs_V_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "compute_and_output_U0", "Port" : "svs_V_0"}]},
			{"Name" : "svs_V_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "compute_and_output_U0", "Port" : "svs_V_1"}]},
			{"Name" : "svs_V_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "compute_and_output_U0", "Port" : "svs_V_2"}]},
			{"Name" : "svs_V_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "compute_and_output_U0", "Port" : "svs_V_3"}]},
			{"Name" : "svs_V_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "compute_and_output_U0", "Port" : "svs_V_4"}]},
			{"Name" : "svs_V_5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "compute_and_output_U0", "Port" : "svs_V_5"}]},
			{"Name" : "svs_V_6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "compute_and_output_U0", "Port" : "svs_V_6"}]},
			{"Name" : "svs_V_7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "compute_and_output_U0", "Port" : "svs_V_7"}]},
			{"Name" : "svs_V_8", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "compute_and_output_U0", "Port" : "svs_V_8"}]},
			{"Name" : "svs_V_9", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "compute_and_output_U0", "Port" : "svs_V_9"}]},
			{"Name" : "svs_V_10", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "compute_and_output_U0", "Port" : "svs_V_10"}]},
			{"Name" : "svs_V_11", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "compute_and_output_U0", "Port" : "svs_V_11"}]},
			{"Name" : "svs_V_12", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "compute_and_output_U0", "Port" : "svs_V_12"}]},
			{"Name" : "svs_V_13", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "compute_and_output_U0", "Port" : "svs_V_13"}]},
			{"Name" : "svs_V_14", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "compute_and_output_U0", "Port" : "svs_V_14"}]},
			{"Name" : "svs_V_15", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "compute_and_output_U0", "Port" : "svs_V_15"}]},
			{"Name" : "EXP_LUT_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "compute_and_output_U0", "Port" : "EXP_LUT_V"}]},
			{"Name" : "alphas_V_044", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "compute_and_output_U0", "Port" : "alphas_V_044"}]},
			{"Name" : "alphas_V_145", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "compute_and_output_U0", "Port" : "alphas_V_145"}]},
			{"Name" : "alphas_V_252", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "compute_and_output_U0", "Port" : "alphas_V_252"}]},
			{"Name" : "alphas_V_353", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "compute_and_output_U0", "Port" : "alphas_V_353"}]},
			{"Name" : "alphas_V_454", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "compute_and_output_U0", "Port" : "alphas_V_454"}]},
			{"Name" : "alphas_V_555", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "compute_and_output_U0", "Port" : "alphas_V_555"}]},
			{"Name" : "alphas_V_656", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "compute_and_output_U0", "Port" : "alphas_V_656"}]},
			{"Name" : "alphas_V_757", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "compute_and_output_U0", "Port" : "alphas_V_757"}]},
			{"Name" : "alphas_V_858", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "compute_and_output_U0", "Port" : "alphas_V_858"}]},
			{"Name" : "alphas_V_959", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "compute_and_output_U0", "Port" : "alphas_V_959"}]},
			{"Name" : "alphas_V_1046", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "compute_and_output_U0", "Port" : "alphas_V_1046"}]},
			{"Name" : "alphas_V_1147", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "compute_and_output_U0", "Port" : "alphas_V_1147"}]},
			{"Name" : "alphas_V_1248", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "compute_and_output_U0", "Port" : "alphas_V_1248"}]},
			{"Name" : "alphas_V_1349", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "compute_and_output_U0", "Port" : "alphas_V_1349"}]},
			{"Name" : "alphas_V_1450", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "compute_and_output_U0", "Port" : "alphas_V_1450"}]},
			{"Name" : "alphas_V_1551", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "compute_and_output_U0", "Port" : "alphas_V_1551"}]},
			{"Name" : "sv_norms_V_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "compute_and_output_U0", "Port" : "sv_norms_V_0"}]},
			{"Name" : "sv_norms_V_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "compute_and_output_U0", "Port" : "sv_norms_V_1"}]},
			{"Name" : "sv_norms_V_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "compute_and_output_U0", "Port" : "sv_norms_V_2"}]},
			{"Name" : "sv_norms_V_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "compute_and_output_U0", "Port" : "sv_norms_V_3"}]},
			{"Name" : "sv_norms_V_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "compute_and_output_U0", "Port" : "sv_norms_V_4"}]},
			{"Name" : "sv_norms_V_5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "compute_and_output_U0", "Port" : "sv_norms_V_5"}]},
			{"Name" : "sv_norms_V_6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "compute_and_output_U0", "Port" : "sv_norms_V_6"}]},
			{"Name" : "sv_norms_V_7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "compute_and_output_U0", "Port" : "sv_norms_V_7"}]},
			{"Name" : "sv_norms_V_8", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "compute_and_output_U0", "Port" : "sv_norms_V_8"}]},
			{"Name" : "sv_norms_V_9", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "compute_and_output_U0", "Port" : "sv_norms_V_9"}]},
			{"Name" : "sv_norms_V_10", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "compute_and_output_U0", "Port" : "sv_norms_V_10"}]},
			{"Name" : "sv_norms_V_11", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "compute_and_output_U0", "Port" : "sv_norms_V_11"}]},
			{"Name" : "sv_norms_V_12", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "compute_and_output_U0", "Port" : "sv_norms_V_12"}]},
			{"Name" : "sv_norms_V_13", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "compute_and_output_U0", "Port" : "sv_norms_V_13"}]},
			{"Name" : "sv_norms_V_14", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "compute_and_output_U0", "Port" : "sv_norms_V_14"}]},
			{"Name" : "sv_norms_V_15", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "compute_and_output_U0", "Port" : "sv_norms_V_15"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.x_local_0_V_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.x_local_1_V_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.x_local_2_V_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.x_local_3_V_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.x_local_4_V_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.x_local_5_V_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.x_local_6_V_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.x_local_7_V_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.x_local_8_V_U", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.x_local_9_V_U", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.x_local_10_V_U", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.x_local_11_V_U", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.x_local_12_V_U", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.x_local_13_V_U", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.x_local_14_V_U", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.x_local_15_V_U", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.load_and_calc_norm61_U0", "Parent" : "0",
		"CDFG" : "load_and_calc_norm61",
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
			{"Name" : "x_local_0_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "18", "DependentChan" : "1"},
			{"Name" : "x_local_1_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "18", "DependentChan" : "2"},
			{"Name" : "x_local_2_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "18", "DependentChan" : "3"},
			{"Name" : "x_local_3_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "18", "DependentChan" : "4"},
			{"Name" : "x_local_4_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "18", "DependentChan" : "5"},
			{"Name" : "x_local_5_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "18", "DependentChan" : "6"},
			{"Name" : "x_local_6_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "18", "DependentChan" : "7"},
			{"Name" : "x_local_7_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "18", "DependentChan" : "8"},
			{"Name" : "x_local_8_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "18", "DependentChan" : "9"},
			{"Name" : "x_local_9_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "18", "DependentChan" : "10"},
			{"Name" : "x_local_10_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "18", "DependentChan" : "11"},
			{"Name" : "x_local_11_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "18", "DependentChan" : "12"},
			{"Name" : "x_local_12_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "18", "DependentChan" : "13"},
			{"Name" : "x_local_13_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "18", "DependentChan" : "14"},
			{"Name" : "x_local_14_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "18", "DependentChan" : "15"},
			{"Name" : "x_local_15_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "18", "DependentChan" : "16"},
			{"Name" : "n_0_i_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "n_0_i_i_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "18", "DependentChan" : "72",
				"BlockSignal" : [
					{"Name" : "n_0_i_i_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.compute_and_output_U0", "Parent" : "0", "Child" : ["19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "55", "56", "57", "58", "59", "60", "61", "62", "63", "64", "65", "66", "67", "68", "69", "70", "71"],
		"CDFG" : "compute_and_output",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "872", "EstimateLatencyMax" : "872",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "x_local_0_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "17", "DependentChan" : "1"},
			{"Name" : "x_local_1_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "17", "DependentChan" : "2"},
			{"Name" : "x_local_2_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "17", "DependentChan" : "3"},
			{"Name" : "x_local_3_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "17", "DependentChan" : "4"},
			{"Name" : "x_local_4_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "17", "DependentChan" : "5"},
			{"Name" : "x_local_5_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "17", "DependentChan" : "6"},
			{"Name" : "x_local_6_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "17", "DependentChan" : "7"},
			{"Name" : "x_local_7_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "17", "DependentChan" : "8"},
			{"Name" : "x_local_8_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "17", "DependentChan" : "9"},
			{"Name" : "x_local_9_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "17", "DependentChan" : "10"},
			{"Name" : "x_local_10_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "17", "DependentChan" : "11"},
			{"Name" : "x_local_11_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "17", "DependentChan" : "12"},
			{"Name" : "x_local_12_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "17", "DependentChan" : "13"},
			{"Name" : "x_local_13_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "17", "DependentChan" : "14"},
			{"Name" : "x_local_14_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "17", "DependentChan" : "15"},
			{"Name" : "x_local_15_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "17", "DependentChan" : "16"},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I", "DependentProc" : "17", "DependentChan" : "73"},
			{"Name" : "out_stream_V_data_V", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "out_stream_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "out_stream_V_keep_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "out_stream_V_strb_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "out_stream_V_last_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "n_0_i_i", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "17", "DependentChan" : "72",
				"BlockSignal" : [
					{"Name" : "n_0_i_i_blk_n", "Type" : "RtlSignal"}]},
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
			{"Name" : "EXP_LUT_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "alphas_V_044", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "alphas_V_145", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "alphas_V_252", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "alphas_V_353", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "alphas_V_454", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "alphas_V_555", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "alphas_V_656", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "alphas_V_757", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "alphas_V_858", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "alphas_V_959", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "alphas_V_1046", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "alphas_V_1147", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "alphas_V_1248", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "alphas_V_1349", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "alphas_V_1450", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "alphas_V_1551", "Type" : "Memory", "Direction" : "I"},
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
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_and_output_U0.svs_V_0_U", "Parent" : "18"},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_and_output_U0.svs_V_1_U", "Parent" : "18"},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_and_output_U0.svs_V_2_U", "Parent" : "18"},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_and_output_U0.svs_V_3_U", "Parent" : "18"},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_and_output_U0.svs_V_4_U", "Parent" : "18"},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_and_output_U0.svs_V_5_U", "Parent" : "18"},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_and_output_U0.svs_V_6_U", "Parent" : "18"},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_and_output_U0.svs_V_7_U", "Parent" : "18"},
	{"ID" : "27", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_and_output_U0.svs_V_8_U", "Parent" : "18"},
	{"ID" : "28", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_and_output_U0.svs_V_9_U", "Parent" : "18"},
	{"ID" : "29", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_and_output_U0.svs_V_10_U", "Parent" : "18"},
	{"ID" : "30", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_and_output_U0.svs_V_11_U", "Parent" : "18"},
	{"ID" : "31", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_and_output_U0.svs_V_12_U", "Parent" : "18"},
	{"ID" : "32", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_and_output_U0.svs_V_13_U", "Parent" : "18"},
	{"ID" : "33", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_and_output_U0.svs_V_14_U", "Parent" : "18"},
	{"ID" : "34", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_and_output_U0.svs_V_15_U", "Parent" : "18"},
	{"ID" : "35", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_and_output_U0.EXP_LUT_V_U", "Parent" : "18"},
	{"ID" : "36", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_and_output_U0.alphas_V_044_U", "Parent" : "18"},
	{"ID" : "37", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_and_output_U0.alphas_V_145_U", "Parent" : "18"},
	{"ID" : "38", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_and_output_U0.alphas_V_252_U", "Parent" : "18"},
	{"ID" : "39", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_and_output_U0.alphas_V_353_U", "Parent" : "18"},
	{"ID" : "40", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_and_output_U0.alphas_V_454_U", "Parent" : "18"},
	{"ID" : "41", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_and_output_U0.alphas_V_555_U", "Parent" : "18"},
	{"ID" : "42", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_and_output_U0.alphas_V_656_U", "Parent" : "18"},
	{"ID" : "43", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_and_output_U0.alphas_V_757_U", "Parent" : "18"},
	{"ID" : "44", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_and_output_U0.alphas_V_858_U", "Parent" : "18"},
	{"ID" : "45", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_and_output_U0.alphas_V_959_U", "Parent" : "18"},
	{"ID" : "46", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_and_output_U0.alphas_V_1046_U", "Parent" : "18"},
	{"ID" : "47", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_and_output_U0.alphas_V_1147_U", "Parent" : "18"},
	{"ID" : "48", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_and_output_U0.alphas_V_1248_U", "Parent" : "18"},
	{"ID" : "49", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_and_output_U0.alphas_V_1349_U", "Parent" : "18"},
	{"ID" : "50", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_and_output_U0.alphas_V_1450_U", "Parent" : "18"},
	{"ID" : "51", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_and_output_U0.alphas_V_1551_U", "Parent" : "18"},
	{"ID" : "52", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_and_output_U0.sv_norms_V_0_U", "Parent" : "18"},
	{"ID" : "53", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_and_output_U0.sv_norms_V_1_U", "Parent" : "18"},
	{"ID" : "54", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_and_output_U0.sv_norms_V_2_U", "Parent" : "18"},
	{"ID" : "55", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_and_output_U0.sv_norms_V_3_U", "Parent" : "18"},
	{"ID" : "56", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_and_output_U0.sv_norms_V_4_U", "Parent" : "18"},
	{"ID" : "57", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_and_output_U0.sv_norms_V_5_U", "Parent" : "18"},
	{"ID" : "58", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_and_output_U0.sv_norms_V_6_U", "Parent" : "18"},
	{"ID" : "59", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_and_output_U0.sv_norms_V_7_U", "Parent" : "18"},
	{"ID" : "60", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_and_output_U0.sv_norms_V_8_U", "Parent" : "18"},
	{"ID" : "61", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_and_output_U0.sv_norms_V_9_U", "Parent" : "18"},
	{"ID" : "62", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_and_output_U0.sv_norms_V_10_U", "Parent" : "18"},
	{"ID" : "63", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_and_output_U0.sv_norms_V_11_U", "Parent" : "18"},
	{"ID" : "64", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_and_output_U0.sv_norms_V_12_U", "Parent" : "18"},
	{"ID" : "65", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_and_output_U0.sv_norms_V_13_U", "Parent" : "18"},
	{"ID" : "66", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_and_output_U0.sv_norms_V_14_U", "Parent" : "18"},
	{"ID" : "67", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_and_output_U0.sv_norms_V_15_U", "Parent" : "18"},
	{"ID" : "68", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_and_output_U0.classify_mux_164_Yie_U26", "Parent" : "18"},
	{"ID" : "69", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_and_output_U0.classify_mux_164_Yie_U27", "Parent" : "18"},
	{"ID" : "70", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_and_output_U0.classify_mul_mul_Zio_U28", "Parent" : "18"},
	{"ID" : "71", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_and_output_U0.classify_mul_mul_0iy_U29", "Parent" : "18"},
	{"ID" : "72", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.n_0_i_i_c_U", "Parent" : "0"},
	{"ID" : "73", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.internal_norm_V_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	dataflow_in_loop_Bat {
		in_stream_V_data_V {Type I LastRead 1 FirstWrite -1}
		in_stream_V_keep_V {Type I LastRead 1 FirstWrite -1}
		in_stream_V_strb_V {Type I LastRead 1 FirstWrite -1}
		in_stream_V_user_V {Type I LastRead 1 FirstWrite -1}
		in_stream_V_last_V {Type I LastRead 1 FirstWrite -1}
		in_stream_V_id_V {Type I LastRead 1 FirstWrite -1}
		in_stream_V_dest_V {Type I LastRead 1 FirstWrite -1}
		out_stream_V_data_V {Type O LastRead -1 FirstWrite 2}
		out_stream_V_keep_V {Type O LastRead -1 FirstWrite 2}
		out_stream_V_strb_V {Type O LastRead -1 FirstWrite 2}
		out_stream_V_last_V {Type O LastRead -1 FirstWrite 2}
		n_0_i_i {Type I LastRead 0 FirstWrite -1}
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
		EXP_LUT_V {Type I LastRead -1 FirstWrite -1}
		alphas_V_044 {Type I LastRead -1 FirstWrite -1}
		alphas_V_145 {Type I LastRead -1 FirstWrite -1}
		alphas_V_252 {Type I LastRead -1 FirstWrite -1}
		alphas_V_353 {Type I LastRead -1 FirstWrite -1}
		alphas_V_454 {Type I LastRead -1 FirstWrite -1}
		alphas_V_555 {Type I LastRead -1 FirstWrite -1}
		alphas_V_656 {Type I LastRead -1 FirstWrite -1}
		alphas_V_757 {Type I LastRead -1 FirstWrite -1}
		alphas_V_858 {Type I LastRead -1 FirstWrite -1}
		alphas_V_959 {Type I LastRead -1 FirstWrite -1}
		alphas_V_1046 {Type I LastRead -1 FirstWrite -1}
		alphas_V_1147 {Type I LastRead -1 FirstWrite -1}
		alphas_V_1248 {Type I LastRead -1 FirstWrite -1}
		alphas_V_1349 {Type I LastRead -1 FirstWrite -1}
		alphas_V_1450 {Type I LastRead -1 FirstWrite -1}
		alphas_V_1551 {Type I LastRead -1 FirstWrite -1}
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
	load_and_calc_norm61 {
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
		n_0_i_i {Type I LastRead 0 FirstWrite -1}
		n_0_i_i_out {Type O LastRead -1 FirstWrite 0}}
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
		out_stream_V_data_V {Type O LastRead -1 FirstWrite 2}
		out_stream_V_keep_V {Type O LastRead -1 FirstWrite 2}
		out_stream_V_strb_V {Type O LastRead -1 FirstWrite 2}
		out_stream_V_last_V {Type O LastRead -1 FirstWrite 2}
		n_0_i_i {Type I LastRead 0 FirstWrite -1}
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
		EXP_LUT_V {Type I LastRead -1 FirstWrite -1}
		alphas_V_044 {Type I LastRead -1 FirstWrite -1}
		alphas_V_145 {Type I LastRead -1 FirstWrite -1}
		alphas_V_252 {Type I LastRead -1 FirstWrite -1}
		alphas_V_353 {Type I LastRead -1 FirstWrite -1}
		alphas_V_454 {Type I LastRead -1 FirstWrite -1}
		alphas_V_555 {Type I LastRead -1 FirstWrite -1}
		alphas_V_656 {Type I LastRead -1 FirstWrite -1}
		alphas_V_757 {Type I LastRead -1 FirstWrite -1}
		alphas_V_858 {Type I LastRead -1 FirstWrite -1}
		alphas_V_959 {Type I LastRead -1 FirstWrite -1}
		alphas_V_1046 {Type I LastRead -1 FirstWrite -1}
		alphas_V_1147 {Type I LastRead -1 FirstWrite -1}
		alphas_V_1248 {Type I LastRead -1 FirstWrite -1}
		alphas_V_1349 {Type I LastRead -1 FirstWrite -1}
		alphas_V_1450 {Type I LastRead -1 FirstWrite -1}
		alphas_V_1551 {Type I LastRead -1 FirstWrite -1}
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
		sv_norms_V_15 {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "974", "Max" : "974"}
	, {"Name" : "Interval", "Min" : "873", "Max" : "873"}
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
	n_0_i_i { ap_none {  { n_0_i_i in_data 0 12 }  { n_0_i_i_ap_vld in_vld 0 1 } } }
}
