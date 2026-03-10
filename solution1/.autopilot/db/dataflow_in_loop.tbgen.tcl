set moduleName dataflow_in_loop
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
set C_modelName {dataflow_in_loop}
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
	{ n int 31 regular  }
	{ num_images int 32 regular  }
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
 	{ "Name" : "n", "interface" : "wire", "bitwidth" : 31, "direction" : "READONLY"} , 
 	{ "Name" : "num_images", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 26
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
	{ n sc_in sc_lv 31 signal 11 } 
	{ num_images sc_in sc_lv 32 signal 12 } 
	{ in_stream_TVALID sc_in sc_logic 1 invld 6 } 
	{ in_stream_TREADY sc_out sc_logic 1 inacc 6 } 
	{ n_ap_vld sc_in sc_logic 1 invld 11 } 
	{ num_images_ap_vld sc_in sc_logic 1 invld 12 } 
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
 	{ "name": "n", "direction": "in", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "n", "role": "default" }} , 
 	{ "name": "num_images", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "num_images", "role": "default" }} , 
 	{ "name": "in_stream_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "in_stream_V_dest_V", "role": "default" }} , 
 	{ "name": "in_stream_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "in_stream_V_dest_V", "role": "default" }} , 
 	{ "name": "n_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "n", "role": "ap_vld" }} , 
 	{ "name": "num_images_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "num_images", "role": "ap_vld" }} , 
 	{ "name": "out_stream_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "out_stream_V_last_V", "role": "default" }} , 
 	{ "name": "out_stream_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "out_stream_V_last_V", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "117", "118", "119"],
		"CDFG" : "dataflow_in_loop",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "352", "EstimateLatencyMax" : "352",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"InputProcess" : [
			{"ID" : "2", "Name" : "load_and_calc_norm51_U0"}],
		"OutputProcess" : [
			{"ID" : "3", "Name" : "compute_and_output_U0"}],
		"Port" : [
			{"Name" : "in_stream_V_data_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "load_and_calc_norm51_U0", "Port" : "in_stream_V_data_V"}]},
			{"Name" : "in_stream_V_keep_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "load_and_calc_norm51_U0", "Port" : "in_stream_V_keep_V"}]},
			{"Name" : "in_stream_V_strb_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "load_and_calc_norm51_U0", "Port" : "in_stream_V_strb_V"}]},
			{"Name" : "in_stream_V_user_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "load_and_calc_norm51_U0", "Port" : "in_stream_V_user_V"}]},
			{"Name" : "in_stream_V_last_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "load_and_calc_norm51_U0", "Port" : "in_stream_V_last_V"}]},
			{"Name" : "in_stream_V_id_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "load_and_calc_norm51_U0", "Port" : "in_stream_V_id_V"}]},
			{"Name" : "in_stream_V_dest_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "load_and_calc_norm51_U0", "Port" : "in_stream_V_dest_V"}]},
			{"Name" : "out_stream_V_data_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "compute_and_output_U0", "Port" : "out_stream_V_data_V"}]},
			{"Name" : "out_stream_V_keep_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "compute_and_output_U0", "Port" : "out_stream_V_keep_V"}]},
			{"Name" : "out_stream_V_strb_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "compute_and_output_U0", "Port" : "out_stream_V_strb_V"}]},
			{"Name" : "out_stream_V_last_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "compute_and_output_U0", "Port" : "out_stream_V_last_V"}]},
			{"Name" : "n", "Type" : "None", "Direction" : "I"},
			{"Name" : "num_images", "Type" : "None", "Direction" : "I"},
			{"Name" : "svs0_pack_V_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "compute_and_output_U0", "Port" : "svs0_pack_V_0"}]},
			{"Name" : "svs0_pack_V_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "compute_and_output_U0", "Port" : "svs0_pack_V_1"}]},
			{"Name" : "svs0_pack_V_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "compute_and_output_U0", "Port" : "svs0_pack_V_2"}]},
			{"Name" : "svs0_pack_V_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "compute_and_output_U0", "Port" : "svs0_pack_V_3"}]},
			{"Name" : "svs0_pack_V_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "compute_and_output_U0", "Port" : "svs0_pack_V_4"}]},
			{"Name" : "svs0_pack_V_5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "compute_and_output_U0", "Port" : "svs0_pack_V_5"}]},
			{"Name" : "svs0_pack_V_6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "compute_and_output_U0", "Port" : "svs0_pack_V_6"}]},
			{"Name" : "svs0_pack_V_7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "compute_and_output_U0", "Port" : "svs0_pack_V_7"}]},
			{"Name" : "svs0_pack_V_8", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "compute_and_output_U0", "Port" : "svs0_pack_V_8"}]},
			{"Name" : "svs0_pack_V_9", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "compute_and_output_U0", "Port" : "svs0_pack_V_9"}]},
			{"Name" : "svs0_pack_V_10", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "compute_and_output_U0", "Port" : "svs0_pack_V_10"}]},
			{"Name" : "svs0_pack_V_11", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "compute_and_output_U0", "Port" : "svs0_pack_V_11"}]},
			{"Name" : "svs0_pack_V_12", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "compute_and_output_U0", "Port" : "svs0_pack_V_12"}]},
			{"Name" : "svs0_pack_V_13", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "compute_and_output_U0", "Port" : "svs0_pack_V_13"}]},
			{"Name" : "svs0_pack_V_14", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "compute_and_output_U0", "Port" : "svs0_pack_V_14"}]},
			{"Name" : "svs0_pack_V_15", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "compute_and_output_U0", "Port" : "svs0_pack_V_15"}]},
			{"Name" : "svs1_pack_V_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "compute_and_output_U0", "Port" : "svs1_pack_V_0"}]},
			{"Name" : "svs1_pack_V_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "compute_and_output_U0", "Port" : "svs1_pack_V_1"}]},
			{"Name" : "svs1_pack_V_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "compute_and_output_U0", "Port" : "svs1_pack_V_2"}]},
			{"Name" : "svs1_pack_V_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "compute_and_output_U0", "Port" : "svs1_pack_V_3"}]},
			{"Name" : "svs1_pack_V_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "compute_and_output_U0", "Port" : "svs1_pack_V_4"}]},
			{"Name" : "svs1_pack_V_5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "compute_and_output_U0", "Port" : "svs1_pack_V_5"}]},
			{"Name" : "svs1_pack_V_6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "compute_and_output_U0", "Port" : "svs1_pack_V_6"}]},
			{"Name" : "svs1_pack_V_7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "compute_and_output_U0", "Port" : "svs1_pack_V_7"}]},
			{"Name" : "svs1_pack_V_8", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "compute_and_output_U0", "Port" : "svs1_pack_V_8"}]},
			{"Name" : "svs1_pack_V_9", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "compute_and_output_U0", "Port" : "svs1_pack_V_9"}]},
			{"Name" : "svs1_pack_V_10", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "compute_and_output_U0", "Port" : "svs1_pack_V_10"}]},
			{"Name" : "svs1_pack_V_11", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "compute_and_output_U0", "Port" : "svs1_pack_V_11"}]},
			{"Name" : "svs1_pack_V_12", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "compute_and_output_U0", "Port" : "svs1_pack_V_12"}]},
			{"Name" : "svs1_pack_V_13", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "compute_and_output_U0", "Port" : "svs1_pack_V_13"}]},
			{"Name" : "svs1_pack_V_14", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "compute_and_output_U0", "Port" : "svs1_pack_V_14"}]},
			{"Name" : "svs1_pack_V_15", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "compute_and_output_U0", "Port" : "svs1_pack_V_15"}]},
			{"Name" : "sv_norms_0_padded_V_s", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "compute_and_output_U0", "Port" : "sv_norms_0_padded_V_s"}]},
			{"Name" : "alphas_0_padded_V_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "compute_and_output_U0", "Port" : "alphas_0_padded_V_0"}]},
			{"Name" : "EXP_LUT_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "compute_and_output_U0", "Port" : "EXP_LUT_V"}]},
			{"Name" : "sv_norms_0_padded_V_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "compute_and_output_U0", "Port" : "sv_norms_0_padded_V_1"}]},
			{"Name" : "alphas_0_padded_V_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "compute_and_output_U0", "Port" : "alphas_0_padded_V_1"}]},
			{"Name" : "sv_norms_0_padded_V_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "compute_and_output_U0", "Port" : "sv_norms_0_padded_V_2"}]},
			{"Name" : "alphas_0_padded_V_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "compute_and_output_U0", "Port" : "alphas_0_padded_V_2"}]},
			{"Name" : "sv_norms_0_padded_V_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "compute_and_output_U0", "Port" : "sv_norms_0_padded_V_3"}]},
			{"Name" : "alphas_0_padded_V_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "compute_and_output_U0", "Port" : "alphas_0_padded_V_3"}]},
			{"Name" : "sv_norms_0_padded_V_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "compute_and_output_U0", "Port" : "sv_norms_0_padded_V_4"}]},
			{"Name" : "alphas_0_padded_V_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "compute_and_output_U0", "Port" : "alphas_0_padded_V_4"}]},
			{"Name" : "sv_norms_0_padded_V_5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "compute_and_output_U0", "Port" : "sv_norms_0_padded_V_5"}]},
			{"Name" : "alphas_0_padded_V_5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "compute_and_output_U0", "Port" : "alphas_0_padded_V_5"}]},
			{"Name" : "sv_norms_0_padded_V_6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "compute_and_output_U0", "Port" : "sv_norms_0_padded_V_6"}]},
			{"Name" : "alphas_0_padded_V_6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "compute_and_output_U0", "Port" : "alphas_0_padded_V_6"}]},
			{"Name" : "sv_norms_0_padded_V_7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "compute_and_output_U0", "Port" : "sv_norms_0_padded_V_7"}]},
			{"Name" : "alphas_0_padded_V_7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "compute_and_output_U0", "Port" : "alphas_0_padded_V_7"}]},
			{"Name" : "sv_norms_1_padded_V_s", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "compute_and_output_U0", "Port" : "sv_norms_1_padded_V_s"}]},
			{"Name" : "alphas_1_padded_V_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "compute_and_output_U0", "Port" : "alphas_1_padded_V_0"}]},
			{"Name" : "sv_norms_1_padded_V_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "compute_and_output_U0", "Port" : "sv_norms_1_padded_V_1"}]},
			{"Name" : "alphas_1_padded_V_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "compute_and_output_U0", "Port" : "alphas_1_padded_V_1"}]},
			{"Name" : "sv_norms_1_padded_V_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "compute_and_output_U0", "Port" : "sv_norms_1_padded_V_2"}]},
			{"Name" : "alphas_1_padded_V_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "compute_and_output_U0", "Port" : "alphas_1_padded_V_2"}]},
			{"Name" : "sv_norms_1_padded_V_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "compute_and_output_U0", "Port" : "sv_norms_1_padded_V_3"}]},
			{"Name" : "alphas_1_padded_V_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "compute_and_output_U0", "Port" : "alphas_1_padded_V_3"}]},
			{"Name" : "sv_norms_1_padded_V_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "compute_and_output_U0", "Port" : "sv_norms_1_padded_V_4"}]},
			{"Name" : "alphas_1_padded_V_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "compute_and_output_U0", "Port" : "alphas_1_padded_V_4"}]},
			{"Name" : "sv_norms_1_padded_V_5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "compute_and_output_U0", "Port" : "sv_norms_1_padded_V_5"}]},
			{"Name" : "alphas_1_padded_V_5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "compute_and_output_U0", "Port" : "alphas_1_padded_V_5"}]},
			{"Name" : "sv_norms_1_padded_V_6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "compute_and_output_U0", "Port" : "sv_norms_1_padded_V_6"}]},
			{"Name" : "alphas_1_padded_V_6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "compute_and_output_U0", "Port" : "alphas_1_padded_V_6"}]},
			{"Name" : "sv_norms_1_padded_V_7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "compute_and_output_U0", "Port" : "sv_norms_1_padded_V_7"}]},
			{"Name" : "alphas_1_padded_V_7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "compute_and_output_U0", "Port" : "alphas_1_padded_V_7"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.x_pack_V_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.load_and_calc_norm51_U0", "Parent" : "0",
		"CDFG" : "load_and_calc_norm51",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "66", "EstimateLatencyMax" : "66",
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
			{"Name" : "x_pack_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "3", "DependentChan" : "1"},
			{"Name" : "n", "Type" : "None", "Direction" : "I"},
			{"Name" : "num_images", "Type" : "None", "Direction" : "I"},
			{"Name" : "n_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "3", "DependentChan" : "117",
				"BlockSignal" : [
					{"Name" : "n_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "num_images_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "3", "DependentChan" : "118",
				"BlockSignal" : [
					{"Name" : "num_images_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.compute_and_output_U0", "Parent" : "0", "Child" : ["4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "55", "56", "57", "58", "59", "60", "61", "62", "63", "64", "65", "66", "67", "68", "69", "70", "71", "72", "73", "74", "75", "76", "77", "78", "79", "80", "81", "82", "83", "84", "85", "86", "87", "88", "89", "90", "91", "92", "93", "94", "95", "96", "97", "98", "99", "100", "101", "102", "103", "104", "105", "106", "107", "108", "109", "110", "111", "112", "113", "114", "115", "116"],
		"CDFG" : "compute_and_output",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "285", "EstimateLatencyMax" : "285",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "x_pack_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "1"},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "119"},
			{"Name" : "out_stream_V_data_V", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "out_stream_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "out_stream_V_keep_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "out_stream_V_strb_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "out_stream_V_last_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "n", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "117",
				"BlockSignal" : [
					{"Name" : "n_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "num_images", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "118",
				"BlockSignal" : [
					{"Name" : "num_images_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "svs0_pack_V_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "svs0_pack_V_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "svs0_pack_V_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "svs0_pack_V_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "svs0_pack_V_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "svs0_pack_V_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "svs0_pack_V_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "svs0_pack_V_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "svs0_pack_V_8", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "svs0_pack_V_9", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "svs0_pack_V_10", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "svs0_pack_V_11", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "svs0_pack_V_12", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "svs0_pack_V_13", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "svs0_pack_V_14", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "svs0_pack_V_15", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "svs1_pack_V_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "svs1_pack_V_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "svs1_pack_V_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "svs1_pack_V_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "svs1_pack_V_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "svs1_pack_V_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "svs1_pack_V_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "svs1_pack_V_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "svs1_pack_V_8", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "svs1_pack_V_9", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "svs1_pack_V_10", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "svs1_pack_V_11", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "svs1_pack_V_12", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "svs1_pack_V_13", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "svs1_pack_V_14", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "svs1_pack_V_15", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sv_norms_0_padded_V_s", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "alphas_0_padded_V_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "EXP_LUT_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sv_norms_0_padded_V_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "alphas_0_padded_V_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sv_norms_0_padded_V_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "alphas_0_padded_V_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sv_norms_0_padded_V_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "alphas_0_padded_V_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sv_norms_0_padded_V_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "alphas_0_padded_V_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sv_norms_0_padded_V_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "alphas_0_padded_V_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sv_norms_0_padded_V_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "alphas_0_padded_V_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sv_norms_0_padded_V_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "alphas_0_padded_V_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sv_norms_1_padded_V_s", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "alphas_1_padded_V_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sv_norms_1_padded_V_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "alphas_1_padded_V_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sv_norms_1_padded_V_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "alphas_1_padded_V_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sv_norms_1_padded_V_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "alphas_1_padded_V_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sv_norms_1_padded_V_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "alphas_1_padded_V_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sv_norms_1_padded_V_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "alphas_1_padded_V_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sv_norms_1_padded_V_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "alphas_1_padded_V_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sv_norms_1_padded_V_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "alphas_1_padded_V_7", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_and_output_U0.svs0_pack_V_0_U", "Parent" : "3"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_and_output_U0.svs0_pack_V_1_U", "Parent" : "3"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_and_output_U0.svs0_pack_V_2_U", "Parent" : "3"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_and_output_U0.svs0_pack_V_3_U", "Parent" : "3"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_and_output_U0.svs0_pack_V_4_U", "Parent" : "3"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_and_output_U0.svs0_pack_V_5_U", "Parent" : "3"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_and_output_U0.svs0_pack_V_6_U", "Parent" : "3"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_and_output_U0.svs0_pack_V_7_U", "Parent" : "3"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_and_output_U0.svs0_pack_V_8_U", "Parent" : "3"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_and_output_U0.svs0_pack_V_9_U", "Parent" : "3"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_and_output_U0.svs0_pack_V_10_U", "Parent" : "3"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_and_output_U0.svs0_pack_V_11_U", "Parent" : "3"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_and_output_U0.svs0_pack_V_12_U", "Parent" : "3"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_and_output_U0.svs0_pack_V_13_U", "Parent" : "3"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_and_output_U0.svs0_pack_V_14_U", "Parent" : "3"},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_and_output_U0.svs0_pack_V_15_U", "Parent" : "3"},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_and_output_U0.svs1_pack_V_0_U", "Parent" : "3"},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_and_output_U0.svs1_pack_V_1_U", "Parent" : "3"},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_and_output_U0.svs1_pack_V_2_U", "Parent" : "3"},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_and_output_U0.svs1_pack_V_3_U", "Parent" : "3"},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_and_output_U0.svs1_pack_V_4_U", "Parent" : "3"},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_and_output_U0.svs1_pack_V_5_U", "Parent" : "3"},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_and_output_U0.svs1_pack_V_6_U", "Parent" : "3"},
	{"ID" : "27", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_and_output_U0.svs1_pack_V_7_U", "Parent" : "3"},
	{"ID" : "28", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_and_output_U0.svs1_pack_V_8_U", "Parent" : "3"},
	{"ID" : "29", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_and_output_U0.svs1_pack_V_9_U", "Parent" : "3"},
	{"ID" : "30", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_and_output_U0.svs1_pack_V_10_U", "Parent" : "3"},
	{"ID" : "31", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_and_output_U0.svs1_pack_V_11_U", "Parent" : "3"},
	{"ID" : "32", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_and_output_U0.svs1_pack_V_12_U", "Parent" : "3"},
	{"ID" : "33", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_and_output_U0.svs1_pack_V_13_U", "Parent" : "3"},
	{"ID" : "34", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_and_output_U0.svs1_pack_V_14_U", "Parent" : "3"},
	{"ID" : "35", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_and_output_U0.svs1_pack_V_15_U", "Parent" : "3"},
	{"ID" : "36", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_and_output_U0.sv_norms_0_padded_V_s_U", "Parent" : "3"},
	{"ID" : "37", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_and_output_U0.alphas_0_padded_V_0_U", "Parent" : "3"},
	{"ID" : "38", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_and_output_U0.EXP_LUT_V_U", "Parent" : "3"},
	{"ID" : "39", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_and_output_U0.sv_norms_0_padded_V_1_U", "Parent" : "3"},
	{"ID" : "40", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_and_output_U0.alphas_0_padded_V_1_U", "Parent" : "3"},
	{"ID" : "41", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_and_output_U0.sv_norms_0_padded_V_2_U", "Parent" : "3"},
	{"ID" : "42", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_and_output_U0.alphas_0_padded_V_2_U", "Parent" : "3"},
	{"ID" : "43", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_and_output_U0.sv_norms_0_padded_V_3_U", "Parent" : "3"},
	{"ID" : "44", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_and_output_U0.alphas_0_padded_V_3_U", "Parent" : "3"},
	{"ID" : "45", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_and_output_U0.sv_norms_0_padded_V_4_U", "Parent" : "3"},
	{"ID" : "46", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_and_output_U0.alphas_0_padded_V_4_U", "Parent" : "3"},
	{"ID" : "47", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_and_output_U0.sv_norms_0_padded_V_5_U", "Parent" : "3"},
	{"ID" : "48", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_and_output_U0.alphas_0_padded_V_5_U", "Parent" : "3"},
	{"ID" : "49", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_and_output_U0.sv_norms_0_padded_V_6_U", "Parent" : "3"},
	{"ID" : "50", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_and_output_U0.alphas_0_padded_V_6_U", "Parent" : "3"},
	{"ID" : "51", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_and_output_U0.sv_norms_0_padded_V_7_U", "Parent" : "3"},
	{"ID" : "52", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_and_output_U0.alphas_0_padded_V_7_U", "Parent" : "3"},
	{"ID" : "53", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_and_output_U0.sv_norms_1_padded_V_s_U", "Parent" : "3"},
	{"ID" : "54", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_and_output_U0.alphas_1_padded_V_0_U", "Parent" : "3"},
	{"ID" : "55", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_and_output_U0.sv_norms_1_padded_V_1_U", "Parent" : "3"},
	{"ID" : "56", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_and_output_U0.alphas_1_padded_V_1_U", "Parent" : "3"},
	{"ID" : "57", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_and_output_U0.sv_norms_1_padded_V_2_U", "Parent" : "3"},
	{"ID" : "58", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_and_output_U0.alphas_1_padded_V_2_U", "Parent" : "3"},
	{"ID" : "59", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_and_output_U0.sv_norms_1_padded_V_3_U", "Parent" : "3"},
	{"ID" : "60", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_and_output_U0.alphas_1_padded_V_3_U", "Parent" : "3"},
	{"ID" : "61", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_and_output_U0.sv_norms_1_padded_V_4_U", "Parent" : "3"},
	{"ID" : "62", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_and_output_U0.alphas_1_padded_V_4_U", "Parent" : "3"},
	{"ID" : "63", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_and_output_U0.sv_norms_1_padded_V_5_U", "Parent" : "3"},
	{"ID" : "64", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_and_output_U0.alphas_1_padded_V_5_U", "Parent" : "3"},
	{"ID" : "65", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_and_output_U0.sv_norms_1_padded_V_6_U", "Parent" : "3"},
	{"ID" : "66", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_and_output_U0.alphas_1_padded_V_6_U", "Parent" : "3"},
	{"ID" : "67", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_and_output_U0.sv_norms_1_padded_V_7_U", "Parent" : "3"},
	{"ID" : "68", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_and_output_U0.alphas_1_padded_V_7_U", "Parent" : "3"},
	{"ID" : "69", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_and_output_U0.partial_sum_0_0_V_U", "Parent" : "3"},
	{"ID" : "70", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_and_output_U0.partial_sum_0_1_V_U", "Parent" : "3"},
	{"ID" : "71", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_and_output_U0.partial_sum_0_2_V_U", "Parent" : "3"},
	{"ID" : "72", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_and_output_U0.partial_sum_0_3_V_U", "Parent" : "3"},
	{"ID" : "73", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_and_output_U0.partial_sum_0_4_V_U", "Parent" : "3"},
	{"ID" : "74", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_and_output_U0.partial_sum_0_5_V_U", "Parent" : "3"},
	{"ID" : "75", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_and_output_U0.partial_sum_0_6_V_U", "Parent" : "3"},
	{"ID" : "76", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_and_output_U0.partial_sum_0_7_V_U", "Parent" : "3"},
	{"ID" : "77", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_and_output_U0.partial_sum_1_0_V_U", "Parent" : "3"},
	{"ID" : "78", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_and_output_U0.partial_sum_1_1_V_U", "Parent" : "3"},
	{"ID" : "79", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_and_output_U0.partial_sum_1_2_V_U", "Parent" : "3"},
	{"ID" : "80", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_and_output_U0.partial_sum_1_3_V_U", "Parent" : "3"},
	{"ID" : "81", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_and_output_U0.partial_sum_1_4_V_U", "Parent" : "3"},
	{"ID" : "82", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_and_output_U0.partial_sum_1_5_V_U", "Parent" : "3"},
	{"ID" : "83", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_and_output_U0.partial_sum_1_6_V_U", "Parent" : "3"},
	{"ID" : "84", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_and_output_U0.partial_sum_1_7_V_U", "Parent" : "3"},
	{"ID" : "85", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_and_output_U0.classify_mul_mul_bun_U13", "Parent" : "3"},
	{"ID" : "86", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_and_output_U0.classify_mul_mul_bun_U14", "Parent" : "3"},
	{"ID" : "87", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_and_output_U0.classify_mul_mul_bun_U15", "Parent" : "3"},
	{"ID" : "88", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_and_output_U0.classify_mul_mul_bun_U16", "Parent" : "3"},
	{"ID" : "89", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_and_output_U0.classify_mul_mul_bun_U17", "Parent" : "3"},
	{"ID" : "90", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_and_output_U0.classify_mul_mul_bun_U18", "Parent" : "3"},
	{"ID" : "91", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_and_output_U0.classify_mul_mul_bun_U19", "Parent" : "3"},
	{"ID" : "92", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_and_output_U0.classify_mul_mul_bun_U20", "Parent" : "3"},
	{"ID" : "93", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_and_output_U0.classify_mul_mul_bun_U21", "Parent" : "3"},
	{"ID" : "94", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_and_output_U0.classify_mul_mul_bun_U22", "Parent" : "3"},
	{"ID" : "95", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_and_output_U0.classify_mul_mul_bun_U23", "Parent" : "3"},
	{"ID" : "96", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_and_output_U0.classify_mul_mul_bun_U24", "Parent" : "3"},
	{"ID" : "97", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_and_output_U0.classify_mul_mul_bun_U25", "Parent" : "3"},
	{"ID" : "98", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_and_output_U0.classify_mul_mul_bun_U26", "Parent" : "3"},
	{"ID" : "99", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_and_output_U0.classify_mul_mul_bun_U27", "Parent" : "3"},
	{"ID" : "100", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_and_output_U0.classify_mul_mul_bun_U28", "Parent" : "3"},
	{"ID" : "101", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_and_output_U0.classify_mac_mulabvn_U29", "Parent" : "3"},
	{"ID" : "102", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_and_output_U0.classify_mac_mulabwn_U30", "Parent" : "3"},
	{"ID" : "103", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_and_output_U0.classify_mac_mulabxn_U31", "Parent" : "3"},
	{"ID" : "104", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_and_output_U0.classify_mac_mulabvn_U32", "Parent" : "3"},
	{"ID" : "105", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_and_output_U0.classify_mac_mulabxn_U33", "Parent" : "3"},
	{"ID" : "106", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_and_output_U0.classify_mac_mulabxn_U34", "Parent" : "3"},
	{"ID" : "107", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_and_output_U0.classify_mac_mulabyn_U35", "Parent" : "3"},
	{"ID" : "108", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_and_output_U0.classify_mac_mulabyn_U36", "Parent" : "3"},
	{"ID" : "109", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_and_output_U0.classify_mac_mulabzo_U37", "Parent" : "3"},
	{"ID" : "110", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_and_output_U0.classify_mac_mulabwn_U38", "Parent" : "3"},
	{"ID" : "111", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_and_output_U0.classify_mac_mulabyn_U39", "Parent" : "3"},
	{"ID" : "112", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_and_output_U0.classify_mac_mulabwn_U40", "Parent" : "3"},
	{"ID" : "113", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_and_output_U0.classify_mac_mulabwn_U41", "Parent" : "3"},
	{"ID" : "114", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_and_output_U0.classify_mac_mulabyn_U42", "Parent" : "3"},
	{"ID" : "115", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_and_output_U0.classify_mac_mulabwn_U43", "Parent" : "3"},
	{"ID" : "116", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_and_output_U0.classify_mac_mulabwn_U44", "Parent" : "3"},
	{"ID" : "117", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.n_c_U", "Parent" : "0"},
	{"ID" : "118", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.num_images_c_U", "Parent" : "0"},
	{"ID" : "119", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.internal_norm_V_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	dataflow_in_loop {
		in_stream_V_data_V {Type I LastRead 2 FirstWrite -1}
		in_stream_V_keep_V {Type I LastRead 2 FirstWrite -1}
		in_stream_V_strb_V {Type I LastRead 2 FirstWrite -1}
		in_stream_V_user_V {Type I LastRead 2 FirstWrite -1}
		in_stream_V_last_V {Type I LastRead 2 FirstWrite -1}
		in_stream_V_id_V {Type I LastRead 2 FirstWrite -1}
		in_stream_V_dest_V {Type I LastRead 2 FirstWrite -1}
		out_stream_V_data_V {Type O LastRead -1 FirstWrite 3}
		out_stream_V_keep_V {Type O LastRead -1 FirstWrite 3}
		out_stream_V_strb_V {Type O LastRead -1 FirstWrite 3}
		out_stream_V_last_V {Type O LastRead -1 FirstWrite 3}
		n {Type I LastRead 0 FirstWrite -1}
		num_images {Type I LastRead 0 FirstWrite -1}
		svs0_pack_V_0 {Type I LastRead -1 FirstWrite -1}
		svs0_pack_V_1 {Type I LastRead -1 FirstWrite -1}
		svs0_pack_V_2 {Type I LastRead -1 FirstWrite -1}
		svs0_pack_V_3 {Type I LastRead -1 FirstWrite -1}
		svs0_pack_V_4 {Type I LastRead -1 FirstWrite -1}
		svs0_pack_V_5 {Type I LastRead -1 FirstWrite -1}
		svs0_pack_V_6 {Type I LastRead -1 FirstWrite -1}
		svs0_pack_V_7 {Type I LastRead -1 FirstWrite -1}
		svs0_pack_V_8 {Type I LastRead -1 FirstWrite -1}
		svs0_pack_V_9 {Type I LastRead -1 FirstWrite -1}
		svs0_pack_V_10 {Type I LastRead -1 FirstWrite -1}
		svs0_pack_V_11 {Type I LastRead -1 FirstWrite -1}
		svs0_pack_V_12 {Type I LastRead -1 FirstWrite -1}
		svs0_pack_V_13 {Type I LastRead -1 FirstWrite -1}
		svs0_pack_V_14 {Type I LastRead -1 FirstWrite -1}
		svs0_pack_V_15 {Type I LastRead -1 FirstWrite -1}
		svs1_pack_V_0 {Type I LastRead -1 FirstWrite -1}
		svs1_pack_V_1 {Type I LastRead -1 FirstWrite -1}
		svs1_pack_V_2 {Type I LastRead -1 FirstWrite -1}
		svs1_pack_V_3 {Type I LastRead -1 FirstWrite -1}
		svs1_pack_V_4 {Type I LastRead -1 FirstWrite -1}
		svs1_pack_V_5 {Type I LastRead -1 FirstWrite -1}
		svs1_pack_V_6 {Type I LastRead -1 FirstWrite -1}
		svs1_pack_V_7 {Type I LastRead -1 FirstWrite -1}
		svs1_pack_V_8 {Type I LastRead -1 FirstWrite -1}
		svs1_pack_V_9 {Type I LastRead -1 FirstWrite -1}
		svs1_pack_V_10 {Type I LastRead -1 FirstWrite -1}
		svs1_pack_V_11 {Type I LastRead -1 FirstWrite -1}
		svs1_pack_V_12 {Type I LastRead -1 FirstWrite -1}
		svs1_pack_V_13 {Type I LastRead -1 FirstWrite -1}
		svs1_pack_V_14 {Type I LastRead -1 FirstWrite -1}
		svs1_pack_V_15 {Type I LastRead -1 FirstWrite -1}
		sv_norms_0_padded_V_s {Type I LastRead -1 FirstWrite -1}
		alphas_0_padded_V_0 {Type I LastRead -1 FirstWrite -1}
		EXP_LUT_V {Type I LastRead -1 FirstWrite -1}
		sv_norms_0_padded_V_1 {Type I LastRead -1 FirstWrite -1}
		alphas_0_padded_V_1 {Type I LastRead -1 FirstWrite -1}
		sv_norms_0_padded_V_2 {Type I LastRead -1 FirstWrite -1}
		alphas_0_padded_V_2 {Type I LastRead -1 FirstWrite -1}
		sv_norms_0_padded_V_3 {Type I LastRead -1 FirstWrite -1}
		alphas_0_padded_V_3 {Type I LastRead -1 FirstWrite -1}
		sv_norms_0_padded_V_4 {Type I LastRead -1 FirstWrite -1}
		alphas_0_padded_V_4 {Type I LastRead -1 FirstWrite -1}
		sv_norms_0_padded_V_5 {Type I LastRead -1 FirstWrite -1}
		alphas_0_padded_V_5 {Type I LastRead -1 FirstWrite -1}
		sv_norms_0_padded_V_6 {Type I LastRead -1 FirstWrite -1}
		alphas_0_padded_V_6 {Type I LastRead -1 FirstWrite -1}
		sv_norms_0_padded_V_7 {Type I LastRead -1 FirstWrite -1}
		alphas_0_padded_V_7 {Type I LastRead -1 FirstWrite -1}
		sv_norms_1_padded_V_s {Type I LastRead -1 FirstWrite -1}
		alphas_1_padded_V_0 {Type I LastRead -1 FirstWrite -1}
		sv_norms_1_padded_V_1 {Type I LastRead -1 FirstWrite -1}
		alphas_1_padded_V_1 {Type I LastRead -1 FirstWrite -1}
		sv_norms_1_padded_V_2 {Type I LastRead -1 FirstWrite -1}
		alphas_1_padded_V_2 {Type I LastRead -1 FirstWrite -1}
		sv_norms_1_padded_V_3 {Type I LastRead -1 FirstWrite -1}
		alphas_1_padded_V_3 {Type I LastRead -1 FirstWrite -1}
		sv_norms_1_padded_V_4 {Type I LastRead -1 FirstWrite -1}
		alphas_1_padded_V_4 {Type I LastRead -1 FirstWrite -1}
		sv_norms_1_padded_V_5 {Type I LastRead -1 FirstWrite -1}
		alphas_1_padded_V_5 {Type I LastRead -1 FirstWrite -1}
		sv_norms_1_padded_V_6 {Type I LastRead -1 FirstWrite -1}
		alphas_1_padded_V_6 {Type I LastRead -1 FirstWrite -1}
		sv_norms_1_padded_V_7 {Type I LastRead -1 FirstWrite -1}
		alphas_1_padded_V_7 {Type I LastRead -1 FirstWrite -1}}
	load_and_calc_norm51 {
		in_stream_V_data_V {Type I LastRead 2 FirstWrite -1}
		in_stream_V_keep_V {Type I LastRead 2 FirstWrite -1}
		in_stream_V_strb_V {Type I LastRead 2 FirstWrite -1}
		in_stream_V_user_V {Type I LastRead 2 FirstWrite -1}
		in_stream_V_last_V {Type I LastRead 2 FirstWrite -1}
		in_stream_V_id_V {Type I LastRead 2 FirstWrite -1}
		in_stream_V_dest_V {Type I LastRead 2 FirstWrite -1}
		x_pack_V {Type O LastRead -1 FirstWrite 3}
		n {Type I LastRead 0 FirstWrite -1}
		num_images {Type I LastRead 0 FirstWrite -1}
		n_out {Type O LastRead -1 FirstWrite 0}
		num_images_out {Type O LastRead -1 FirstWrite 0}}
	compute_and_output {
		x_pack_V {Type I LastRead 2 FirstWrite -1}
		p_read {Type I LastRead 0 FirstWrite -1}
		out_stream_V_data_V {Type O LastRead -1 FirstWrite 3}
		out_stream_V_keep_V {Type O LastRead -1 FirstWrite 3}
		out_stream_V_strb_V {Type O LastRead -1 FirstWrite 3}
		out_stream_V_last_V {Type O LastRead -1 FirstWrite 3}
		n {Type I LastRead 0 FirstWrite -1}
		num_images {Type I LastRead 0 FirstWrite -1}
		svs0_pack_V_0 {Type I LastRead -1 FirstWrite -1}
		svs0_pack_V_1 {Type I LastRead -1 FirstWrite -1}
		svs0_pack_V_2 {Type I LastRead -1 FirstWrite -1}
		svs0_pack_V_3 {Type I LastRead -1 FirstWrite -1}
		svs0_pack_V_4 {Type I LastRead -1 FirstWrite -1}
		svs0_pack_V_5 {Type I LastRead -1 FirstWrite -1}
		svs0_pack_V_6 {Type I LastRead -1 FirstWrite -1}
		svs0_pack_V_7 {Type I LastRead -1 FirstWrite -1}
		svs0_pack_V_8 {Type I LastRead -1 FirstWrite -1}
		svs0_pack_V_9 {Type I LastRead -1 FirstWrite -1}
		svs0_pack_V_10 {Type I LastRead -1 FirstWrite -1}
		svs0_pack_V_11 {Type I LastRead -1 FirstWrite -1}
		svs0_pack_V_12 {Type I LastRead -1 FirstWrite -1}
		svs0_pack_V_13 {Type I LastRead -1 FirstWrite -1}
		svs0_pack_V_14 {Type I LastRead -1 FirstWrite -1}
		svs0_pack_V_15 {Type I LastRead -1 FirstWrite -1}
		svs1_pack_V_0 {Type I LastRead -1 FirstWrite -1}
		svs1_pack_V_1 {Type I LastRead -1 FirstWrite -1}
		svs1_pack_V_2 {Type I LastRead -1 FirstWrite -1}
		svs1_pack_V_3 {Type I LastRead -1 FirstWrite -1}
		svs1_pack_V_4 {Type I LastRead -1 FirstWrite -1}
		svs1_pack_V_5 {Type I LastRead -1 FirstWrite -1}
		svs1_pack_V_6 {Type I LastRead -1 FirstWrite -1}
		svs1_pack_V_7 {Type I LastRead -1 FirstWrite -1}
		svs1_pack_V_8 {Type I LastRead -1 FirstWrite -1}
		svs1_pack_V_9 {Type I LastRead -1 FirstWrite -1}
		svs1_pack_V_10 {Type I LastRead -1 FirstWrite -1}
		svs1_pack_V_11 {Type I LastRead -1 FirstWrite -1}
		svs1_pack_V_12 {Type I LastRead -1 FirstWrite -1}
		svs1_pack_V_13 {Type I LastRead -1 FirstWrite -1}
		svs1_pack_V_14 {Type I LastRead -1 FirstWrite -1}
		svs1_pack_V_15 {Type I LastRead -1 FirstWrite -1}
		sv_norms_0_padded_V_s {Type I LastRead -1 FirstWrite -1}
		alphas_0_padded_V_0 {Type I LastRead -1 FirstWrite -1}
		EXP_LUT_V {Type I LastRead -1 FirstWrite -1}
		sv_norms_0_padded_V_1 {Type I LastRead -1 FirstWrite -1}
		alphas_0_padded_V_1 {Type I LastRead -1 FirstWrite -1}
		sv_norms_0_padded_V_2 {Type I LastRead -1 FirstWrite -1}
		alphas_0_padded_V_2 {Type I LastRead -1 FirstWrite -1}
		sv_norms_0_padded_V_3 {Type I LastRead -1 FirstWrite -1}
		alphas_0_padded_V_3 {Type I LastRead -1 FirstWrite -1}
		sv_norms_0_padded_V_4 {Type I LastRead -1 FirstWrite -1}
		alphas_0_padded_V_4 {Type I LastRead -1 FirstWrite -1}
		sv_norms_0_padded_V_5 {Type I LastRead -1 FirstWrite -1}
		alphas_0_padded_V_5 {Type I LastRead -1 FirstWrite -1}
		sv_norms_0_padded_V_6 {Type I LastRead -1 FirstWrite -1}
		alphas_0_padded_V_6 {Type I LastRead -1 FirstWrite -1}
		sv_norms_0_padded_V_7 {Type I LastRead -1 FirstWrite -1}
		alphas_0_padded_V_7 {Type I LastRead -1 FirstWrite -1}
		sv_norms_1_padded_V_s {Type I LastRead -1 FirstWrite -1}
		alphas_1_padded_V_0 {Type I LastRead -1 FirstWrite -1}
		sv_norms_1_padded_V_1 {Type I LastRead -1 FirstWrite -1}
		alphas_1_padded_V_1 {Type I LastRead -1 FirstWrite -1}
		sv_norms_1_padded_V_2 {Type I LastRead -1 FirstWrite -1}
		alphas_1_padded_V_2 {Type I LastRead -1 FirstWrite -1}
		sv_norms_1_padded_V_3 {Type I LastRead -1 FirstWrite -1}
		alphas_1_padded_V_3 {Type I LastRead -1 FirstWrite -1}
		sv_norms_1_padded_V_4 {Type I LastRead -1 FirstWrite -1}
		alphas_1_padded_V_4 {Type I LastRead -1 FirstWrite -1}
		sv_norms_1_padded_V_5 {Type I LastRead -1 FirstWrite -1}
		alphas_1_padded_V_5 {Type I LastRead -1 FirstWrite -1}
		sv_norms_1_padded_V_6 {Type I LastRead -1 FirstWrite -1}
		alphas_1_padded_V_6 {Type I LastRead -1 FirstWrite -1}
		sv_norms_1_padded_V_7 {Type I LastRead -1 FirstWrite -1}
		alphas_1_padded_V_7 {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "352", "Max" : "352"}
	, {"Name" : "Interval", "Min" : "286", "Max" : "286"}
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
	n { ap_none {  { n in_data 0 31 }  { n_ap_vld in_vld 0 1 } } }
	num_images { ap_none {  { num_images in_data 0 32 }  { num_images_ap_vld in_vld 0 1 } } }
}
