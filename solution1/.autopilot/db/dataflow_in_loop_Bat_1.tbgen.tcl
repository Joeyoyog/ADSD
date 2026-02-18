set moduleName dataflow_in_loop_Bat_1
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
set C_modelName {dataflow_in_loop_Bat.1}
set C_modelType { void 0 }
set C_modelArgList {
	{ in_stream_V_data_V int 64 regular {axi_s 0 volatile  { in_stream Data } }  }
	{ in_stream_V_keep_V int 8 regular {axi_s 0 volatile  { in_stream Keep } }  }
	{ in_stream_V_strb_V int 8 regular {axi_s 0 volatile  { in_stream Strb } }  }
	{ in_stream_V_user_V int 1 regular {axi_s 0 volatile  { in_stream User } }  }
	{ in_stream_V_last_V int 1 regular {axi_s 0 volatile  { in_stream Last } }  }
	{ in_stream_V_id_V int 1 regular {axi_s 0 volatile  { in_stream ID } }  }
	{ in_stream_V_dest_V int 1 regular {axi_s 0 volatile  { in_stream Dest } }  }
	{ n_0_i_i int 12 regular  }
	{ out_stream_V_data_V int 32 regular {axi_s 1 volatile  { out_stream Data } }  }
	{ out_stream_V_keep_V int 1 regular {axi_s 1 volatile  { out_stream Keep } }  }
	{ out_stream_V_strb_V int 1 regular {axi_s 1 volatile  { out_stream Strb } }  }
	{ out_stream_V_last_V int 1 regular {axi_s 1 volatile  { out_stream Last } }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "in_stream_V_data_V", "interface" : "axis", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "in_stream_V_keep_V", "interface" : "axis", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "in_stream_V_strb_V", "interface" : "axis", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "in_stream_V_user_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "in_stream_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "in_stream_V_id_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "in_stream_V_dest_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "n_0_i_i", "interface" : "wire", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "out_stream_V_data_V", "interface" : "axis", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "out_stream_V_keep_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "out_stream_V_strb_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "out_stream_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} ]}
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
	{ n_0_i_i sc_in sc_lv 12 signal 7 } 
	{ out_stream_TDATA sc_out sc_lv 32 signal 8 } 
	{ out_stream_TKEEP sc_out sc_lv 1 signal 9 } 
	{ out_stream_TSTRB sc_out sc_lv 1 signal 10 } 
	{ out_stream_TLAST sc_out sc_lv 1 signal 11 } 
	{ n_0_i_i_ap_vld sc_in sc_logic 1 invld 7 } 
	{ in_stream_TVALID sc_in sc_logic 1 invld 6 } 
	{ in_stream_TREADY sc_out sc_logic 1 inacc 6 } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ out_stream_TVALID sc_out sc_logic 1 outvld 11 } 
	{ out_stream_TREADY sc_in sc_logic 1 outacc 11 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
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
 	{ "name": "n_0_i_i", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "n_0_i_i", "role": "default" }} , 
 	{ "name": "out_stream_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "out_stream_V_data_V", "role": "default" }} , 
 	{ "name": "out_stream_TKEEP", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "out_stream_V_keep_V", "role": "default" }} , 
 	{ "name": "out_stream_TSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "out_stream_V_strb_V", "role": "default" }} , 
 	{ "name": "out_stream_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "out_stream_V_last_V", "role": "default" }} , 
 	{ "name": "n_0_i_i_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "n_0_i_i", "role": "ap_vld" }} , 
 	{ "name": "in_stream_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "in_stream_V_dest_V", "role": "default" }} , 
 	{ "name": "in_stream_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "in_stream_V_dest_V", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "out_stream_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "out_stream_V_last_V", "role": "default" }} , 
 	{ "name": "out_stream_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "out_stream_V_last_V", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "73", "74", "75", "76", "77", "78", "79", "80", "81", "82", "83", "84", "85", "86", "87"],
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
			{"ID" : "19", "Name" : "load_and_calc_norm_U0", "ReadyCount" : "load_and_calc_norm_U0_ap_ready_count"},
			{"ID" : "17", "Name" : "dataflow_in_loop_Bat_2_U0", "ReadyCount" : "dataflow_in_loop_Bat_2_U0_ap_ready_count"}],
		"OutputProcess" : [
			{"ID" : "77", "Name" : "p_ADSD_Classifier_cp_U0"}],
		"Port" : [
			{"Name" : "in_stream_V_data_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "load_and_calc_norm_U0", "Port" : "in_stream_V_data_V"}]},
			{"Name" : "in_stream_V_keep_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "load_and_calc_norm_U0", "Port" : "in_stream_V_keep_V"}]},
			{"Name" : "in_stream_V_strb_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "load_and_calc_norm_U0", "Port" : "in_stream_V_strb_V"}]},
			{"Name" : "in_stream_V_user_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "load_and_calc_norm_U0", "Port" : "in_stream_V_user_V"}]},
			{"Name" : "in_stream_V_last_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "load_and_calc_norm_U0", "Port" : "in_stream_V_last_V"}]},
			{"Name" : "in_stream_V_id_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "load_and_calc_norm_U0", "Port" : "in_stream_V_id_V"}]},
			{"Name" : "in_stream_V_dest_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "load_and_calc_norm_U0", "Port" : "in_stream_V_dest_V"}]},
			{"Name" : "n_0_i_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_stream_V_data_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "77", "SubInstance" : "p_ADSD_Classifier_cp_U0", "Port" : "out_stream_V_data_V"}]},
			{"Name" : "out_stream_V_keep_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "77", "SubInstance" : "p_ADSD_Classifier_cp_U0", "Port" : "out_stream_V_keep_V"}]},
			{"Name" : "out_stream_V_strb_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "77", "SubInstance" : "p_ADSD_Classifier_cp_U0", "Port" : "out_stream_V_strb_V"}]},
			{"Name" : "out_stream_V_last_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "77", "SubInstance" : "p_ADSD_Classifier_cp_U0", "Port" : "out_stream_V_last_V"}]},
			{"Name" : "svs_V_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "compute_class_U0", "Port" : "svs_V_0"}]},
			{"Name" : "svs_V_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "compute_class_U0", "Port" : "svs_V_1"}]},
			{"Name" : "svs_V_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "compute_class_U0", "Port" : "svs_V_2"}]},
			{"Name" : "svs_V_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "compute_class_U0", "Port" : "svs_V_3"}]},
			{"Name" : "svs_V_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "compute_class_U0", "Port" : "svs_V_4"}]},
			{"Name" : "svs_V_5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "compute_class_U0", "Port" : "svs_V_5"}]},
			{"Name" : "svs_V_6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "compute_class_U0", "Port" : "svs_V_6"}]},
			{"Name" : "svs_V_7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "compute_class_U0", "Port" : "svs_V_7"}]},
			{"Name" : "svs_V_8", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "compute_class_U0", "Port" : "svs_V_8"}]},
			{"Name" : "svs_V_9", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "compute_class_U0", "Port" : "svs_V_9"}]},
			{"Name" : "svs_V_10", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "compute_class_U0", "Port" : "svs_V_10"}]},
			{"Name" : "svs_V_11", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "compute_class_U0", "Port" : "svs_V_11"}]},
			{"Name" : "svs_V_12", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "compute_class_U0", "Port" : "svs_V_12"}]},
			{"Name" : "svs_V_13", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "compute_class_U0", "Port" : "svs_V_13"}]},
			{"Name" : "svs_V_14", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "compute_class_U0", "Port" : "svs_V_14"}]},
			{"Name" : "svs_V_15", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "compute_class_U0", "Port" : "svs_V_15"}]},
			{"Name" : "alphas_V_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "compute_class_U0", "Port" : "alphas_V_0"}]},
			{"Name" : "alphas_V_143", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "compute_class_U0", "Port" : "alphas_V_143"}]},
			{"Name" : "alphas_V_250", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "compute_class_U0", "Port" : "alphas_V_250"}]},
			{"Name" : "alphas_V_351", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "compute_class_U0", "Port" : "alphas_V_351"}]},
			{"Name" : "alphas_V_452", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "compute_class_U0", "Port" : "alphas_V_452"}]},
			{"Name" : "alphas_V_553", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "compute_class_U0", "Port" : "alphas_V_553"}]},
			{"Name" : "alphas_V_654", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "compute_class_U0", "Port" : "alphas_V_654"}]},
			{"Name" : "alphas_V_755", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "compute_class_U0", "Port" : "alphas_V_755"}]},
			{"Name" : "alphas_V_856", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "compute_class_U0", "Port" : "alphas_V_856"}]},
			{"Name" : "alphas_V_957", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "compute_class_U0", "Port" : "alphas_V_957"}]},
			{"Name" : "alphas_V_1044", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "compute_class_U0", "Port" : "alphas_V_1044"}]},
			{"Name" : "alphas_V_1145", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "compute_class_U0", "Port" : "alphas_V_1145"}]},
			{"Name" : "alphas_V_1246", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "compute_class_U0", "Port" : "alphas_V_1246"}]},
			{"Name" : "alphas_V_1347", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "compute_class_U0", "Port" : "alphas_V_1347"}]},
			{"Name" : "alphas_V_1448", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "compute_class_U0", "Port" : "alphas_V_1448"}]},
			{"Name" : "alphas_V_1549", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "compute_class_U0", "Port" : "alphas_V_1549"}]},
			{"Name" : "sv_norms_V_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "compute_class_U0", "Port" : "sv_norms_V_0"}]},
			{"Name" : "sv_norms_V_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "compute_class_U0", "Port" : "sv_norms_V_1"}]},
			{"Name" : "sv_norms_V_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "compute_class_U0", "Port" : "sv_norms_V_2"}]},
			{"Name" : "sv_norms_V_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "compute_class_U0", "Port" : "sv_norms_V_3"}]},
			{"Name" : "sv_norms_V_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "compute_class_U0", "Port" : "sv_norms_V_4"}]},
			{"Name" : "sv_norms_V_5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "compute_class_U0", "Port" : "sv_norms_V_5"}]},
			{"Name" : "sv_norms_V_6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "compute_class_U0", "Port" : "sv_norms_V_6"}]},
			{"Name" : "sv_norms_V_7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "compute_class_U0", "Port" : "sv_norms_V_7"}]},
			{"Name" : "sv_norms_V_8", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "compute_class_U0", "Port" : "sv_norms_V_8"}]},
			{"Name" : "sv_norms_V_9", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "compute_class_U0", "Port" : "sv_norms_V_9"}]},
			{"Name" : "sv_norms_V_10", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "compute_class_U0", "Port" : "sv_norms_V_10"}]},
			{"Name" : "sv_norms_V_11", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "compute_class_U0", "Port" : "sv_norms_V_11"}]},
			{"Name" : "sv_norms_V_12", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "compute_class_U0", "Port" : "sv_norms_V_12"}]},
			{"Name" : "sv_norms_V_13", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "compute_class_U0", "Port" : "sv_norms_V_13"}]},
			{"Name" : "sv_norms_V_14", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "compute_class_U0", "Port" : "sv_norms_V_14"}]},
			{"Name" : "sv_norms_V_15", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "compute_class_U0", "Port" : "sv_norms_V_15"}]}]},
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
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_Bat_2_U0", "Parent" : "0",
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
			{"Name" : "n_0_i_i_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "18", "DependentChan" : "78",
				"BlockSignal" : [
					{"Name" : "n_0_i_i_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_Bat_1_1_U0", "Parent" : "0",
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
		"StartSource" : "17",
		"StartFifo" : "start_for_dataflobgk_U",
		"Port" : [
			{"Name" : "n_0_i_i", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "17", "DependentChan" : "78",
				"BlockSignal" : [
					{"Name" : "n_0_i_i_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "n_0_i_i_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "76", "DependentChan" : "79",
				"BlockSignal" : [
					{"Name" : "n_0_i_i_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.load_and_calc_norm_U0", "Parent" : "0",
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
			{"Name" : "x_local_0_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "20", "DependentChan" : "1"},
			{"Name" : "x_local_1_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "20", "DependentChan" : "2"},
			{"Name" : "x_local_2_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "20", "DependentChan" : "3"},
			{"Name" : "x_local_3_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "20", "DependentChan" : "4"},
			{"Name" : "x_local_4_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "20", "DependentChan" : "5"},
			{"Name" : "x_local_5_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "20", "DependentChan" : "6"},
			{"Name" : "x_local_6_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "20", "DependentChan" : "7"},
			{"Name" : "x_local_7_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "20", "DependentChan" : "8"},
			{"Name" : "x_local_8_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "20", "DependentChan" : "9"},
			{"Name" : "x_local_9_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "20", "DependentChan" : "10"},
			{"Name" : "x_local_10_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "20", "DependentChan" : "11"},
			{"Name" : "x_local_11_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "20", "DependentChan" : "12"},
			{"Name" : "x_local_12_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "20", "DependentChan" : "13"},
			{"Name" : "x_local_13_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "20", "DependentChan" : "14"},
			{"Name" : "x_local_14_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "20", "DependentChan" : "15"},
			{"Name" : "x_local_15_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "20", "DependentChan" : "16"}]},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.compute_class_U0", "Parent" : "0", "Child" : ["21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "55", "56", "57", "58", "59", "60", "61", "62", "63", "64", "65", "66", "67", "68", "69", "70", "71", "72"],
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
			{"Name" : "x_local_0_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "19", "DependentChan" : "1"},
			{"Name" : "x_local_1_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "19", "DependentChan" : "2"},
			{"Name" : "x_local_2_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "19", "DependentChan" : "3"},
			{"Name" : "x_local_3_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "19", "DependentChan" : "4"},
			{"Name" : "x_local_4_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "19", "DependentChan" : "5"},
			{"Name" : "x_local_5_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "19", "DependentChan" : "6"},
			{"Name" : "x_local_6_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "19", "DependentChan" : "7"},
			{"Name" : "x_local_7_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "19", "DependentChan" : "8"},
			{"Name" : "x_local_8_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "19", "DependentChan" : "9"},
			{"Name" : "x_local_9_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "19", "DependentChan" : "10"},
			{"Name" : "x_local_10_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "19", "DependentChan" : "11"},
			{"Name" : "x_local_11_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "19", "DependentChan" : "12"},
			{"Name" : "x_local_12_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "19", "DependentChan" : "13"},
			{"Name" : "x_local_13_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "19", "DependentChan" : "14"},
			{"Name" : "x_local_14_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "19", "DependentChan" : "15"},
			{"Name" : "x_local_15_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "19", "DependentChan" : "16"},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I", "DependentProc" : "19", "DependentChan" : "80"},
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
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_class_U0.svs_V_0_U", "Parent" : "20"},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_class_U0.svs_V_1_U", "Parent" : "20"},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_class_U0.svs_V_2_U", "Parent" : "20"},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_class_U0.svs_V_3_U", "Parent" : "20"},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_class_U0.svs_V_4_U", "Parent" : "20"},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_class_U0.svs_V_5_U", "Parent" : "20"},
	{"ID" : "27", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_class_U0.svs_V_6_U", "Parent" : "20"},
	{"ID" : "28", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_class_U0.svs_V_7_U", "Parent" : "20"},
	{"ID" : "29", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_class_U0.svs_V_8_U", "Parent" : "20"},
	{"ID" : "30", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_class_U0.svs_V_9_U", "Parent" : "20"},
	{"ID" : "31", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_class_U0.svs_V_10_U", "Parent" : "20"},
	{"ID" : "32", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_class_U0.svs_V_11_U", "Parent" : "20"},
	{"ID" : "33", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_class_U0.svs_V_12_U", "Parent" : "20"},
	{"ID" : "34", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_class_U0.svs_V_13_U", "Parent" : "20"},
	{"ID" : "35", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_class_U0.svs_V_14_U", "Parent" : "20"},
	{"ID" : "36", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_class_U0.svs_V_15_U", "Parent" : "20"},
	{"ID" : "37", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_class_U0.alphas_V_0_U", "Parent" : "20"},
	{"ID" : "38", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_class_U0.alphas_V_143_U", "Parent" : "20"},
	{"ID" : "39", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_class_U0.alphas_V_250_U", "Parent" : "20"},
	{"ID" : "40", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_class_U0.alphas_V_351_U", "Parent" : "20"},
	{"ID" : "41", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_class_U0.alphas_V_452_U", "Parent" : "20"},
	{"ID" : "42", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_class_U0.alphas_V_553_U", "Parent" : "20"},
	{"ID" : "43", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_class_U0.alphas_V_654_U", "Parent" : "20"},
	{"ID" : "44", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_class_U0.alphas_V_755_U", "Parent" : "20"},
	{"ID" : "45", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_class_U0.alphas_V_856_U", "Parent" : "20"},
	{"ID" : "46", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_class_U0.alphas_V_957_U", "Parent" : "20"},
	{"ID" : "47", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_class_U0.alphas_V_1044_U", "Parent" : "20"},
	{"ID" : "48", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_class_U0.alphas_V_1145_U", "Parent" : "20"},
	{"ID" : "49", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_class_U0.alphas_V_1246_U", "Parent" : "20"},
	{"ID" : "50", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_class_U0.alphas_V_1347_U", "Parent" : "20"},
	{"ID" : "51", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_class_U0.alphas_V_1448_U", "Parent" : "20"},
	{"ID" : "52", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_class_U0.alphas_V_1549_U", "Parent" : "20"},
	{"ID" : "53", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_class_U0.sv_norms_V_0_U", "Parent" : "20"},
	{"ID" : "54", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_class_U0.sv_norms_V_1_U", "Parent" : "20"},
	{"ID" : "55", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_class_U0.sv_norms_V_2_U", "Parent" : "20"},
	{"ID" : "56", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_class_U0.sv_norms_V_3_U", "Parent" : "20"},
	{"ID" : "57", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_class_U0.sv_norms_V_4_U", "Parent" : "20"},
	{"ID" : "58", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_class_U0.sv_norms_V_5_U", "Parent" : "20"},
	{"ID" : "59", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_class_U0.sv_norms_V_6_U", "Parent" : "20"},
	{"ID" : "60", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_class_U0.sv_norms_V_7_U", "Parent" : "20"},
	{"ID" : "61", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_class_U0.sv_norms_V_8_U", "Parent" : "20"},
	{"ID" : "62", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_class_U0.sv_norms_V_9_U", "Parent" : "20"},
	{"ID" : "63", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_class_U0.sv_norms_V_10_U", "Parent" : "20"},
	{"ID" : "64", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_class_U0.sv_norms_V_11_U", "Parent" : "20"},
	{"ID" : "65", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_class_U0.sv_norms_V_12_U", "Parent" : "20"},
	{"ID" : "66", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_class_U0.sv_norms_V_13_U", "Parent" : "20"},
	{"ID" : "67", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_class_U0.sv_norms_V_14_U", "Parent" : "20"},
	{"ID" : "68", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_class_U0.sv_norms_V_15_U", "Parent" : "20"},
	{"ID" : "69", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_class_U0.classify_mux_164_Xh4_U28", "Parent" : "20"},
	{"ID" : "70", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_class_U0.classify_mux_164_Yie_U29", "Parent" : "20"},
	{"ID" : "71", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_class_U0.classify_mux_164_Xh4_U30", "Parent" : "20"},
	{"ID" : "72", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_class_U0.classify_mul_mul_Zio_U31", "Parent" : "20"},
	{"ID" : "73", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ADSD_Classifier_cp_4_U0", "Parent" : "0",
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
			{"Name" : "p_read", "Type" : "None", "Direction" : "I", "DependentProc" : "20", "DependentChan" : "81"},
			{"Name" : "tmp_data_V19", "Type" : "Vld", "Direction" : "O", "DependentProc" : "77", "DependentChan" : "82"}]},
	{"ID" : "74", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ADSD_Classifier_cp_3_U0", "Parent" : "0",
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
			{"Name" : "tmp_keep_V20", "Type" : "Vld", "Direction" : "O", "DependentProc" : "77", "DependentChan" : "83"}]},
	{"ID" : "75", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ADSD_Classifier_cp_2_U0", "Parent" : "0",
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
			{"Name" : "tmp_strb_V21", "Type" : "Vld", "Direction" : "O", "DependentProc" : "77", "DependentChan" : "84"}]},
	{"ID" : "76", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ADSD_Classifier_cp_1_U0", "Parent" : "0",
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
		"StartSource" : "18",
		"StartFifo" : "start_for_p_ADSD_bhl_U",
		"Port" : [
			{"Name" : "n_0_i_i", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "18", "DependentChan" : "79",
				"BlockSignal" : [
					{"Name" : "n_0_i_i_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "tmp_last_V22", "Type" : "Vld", "Direction" : "O", "DependentProc" : "77", "DependentChan" : "85"}]},
	{"ID" : "77", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ADSD_Classifier_cp_U0", "Parent" : "0",
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
			{"Name" : "tmp_data_V19", "Type" : "None", "Direction" : "I", "DependentProc" : "73", "DependentChan" : "82"},
			{"Name" : "tmp_keep_V20", "Type" : "None", "Direction" : "I", "DependentProc" : "74", "DependentChan" : "83"},
			{"Name" : "tmp_strb_V21", "Type" : "None", "Direction" : "I", "DependentProc" : "75", "DependentChan" : "84"},
			{"Name" : "tmp_last_V22", "Type" : "None", "Direction" : "I", "DependentProc" : "76", "DependentChan" : "85"}]},
	{"ID" : "78", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.n_0_i_i_c1_U", "Parent" : "0"},
	{"ID" : "79", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.n_0_i_i_c_U", "Parent" : "0"},
	{"ID" : "80", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.op_V_assign1_channel_U", "Parent" : "0"},
	{"ID" : "81", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.res_internal_V_U", "Parent" : "0"},
	{"ID" : "82", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.tmp_data_V_U", "Parent" : "0"},
	{"ID" : "83", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.tmp_keep_V_U", "Parent" : "0"},
	{"ID" : "84", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.tmp_strb_V_U", "Parent" : "0"},
	{"ID" : "85", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.tmp_last_V_U", "Parent" : "0"},
	{"ID" : "86", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_dataflobgk_U", "Parent" : "0"},
	{"ID" : "87", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_p_ADSD_bhl_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
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
	{"Name" : "Latency", "Min" : "1039", "Max" : "1039"}
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
	n_0_i_i { ap_none {  { n_0_i_i in_data 0 12 }  { n_0_i_i_ap_vld in_vld 0 1 } } }
	out_stream_V_data_V { axis {  { out_stream_TDATA out_data 1 32 } } }
	out_stream_V_keep_V { axis {  { out_stream_TKEEP out_data 1 1 } } }
	out_stream_V_strb_V { axis {  { out_stream_TSTRB out_data 1 1 } } }
	out_stream_V_last_V { axis {  { out_stream_TLAST out_data 1 1 }  { out_stream_TVALID out_vld 1 1 }  { out_stream_TREADY out_acc 0 1 } } }
}
