set moduleName cl_box
set isTopModule 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set DLRegFirstOffset 0
set DLRegItemOffset 0
set svuvm_can_support 1
set cdfgNum 5
set C_modelName {cl_box}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ ctl_cmd_stream int 32 regular {fifo 0 volatile }  }
	{ a_baseaddr int 32 regular {pointer 1}  }
	{ b_baseaddr int 32 regular {pointer 1}  }
	{ c_baseaddr int 32 regular {pointer 1}  }
	{ a_row int 32 regular {pointer 1}  }
	{ a_col int 32 regular {pointer 1}  }
	{ b_col int 32 regular {pointer 1}  }
	{ work_id int 32 regular {pointer 1}  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "ctl_cmd_stream", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "a_baseaddr", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "b_baseaddr", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "c_baseaddr", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "a_row", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "a_col", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "b_col", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "work_id", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 23
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ ctl_cmd_stream_dout sc_in sc_lv 32 signal 0 } 
	{ ctl_cmd_stream_empty_n sc_in sc_logic 1 signal 0 } 
	{ ctl_cmd_stream_read sc_out sc_logic 1 signal 0 } 
	{ a_baseaddr sc_out sc_lv 32 signal 1 } 
	{ a_baseaddr_ap_vld sc_out sc_logic 1 outvld 1 } 
	{ b_baseaddr sc_out sc_lv 32 signal 2 } 
	{ b_baseaddr_ap_vld sc_out sc_logic 1 outvld 2 } 
	{ c_baseaddr sc_out sc_lv 32 signal 3 } 
	{ c_baseaddr_ap_vld sc_out sc_logic 1 outvld 3 } 
	{ a_row sc_out sc_lv 32 signal 4 } 
	{ a_row_ap_vld sc_out sc_logic 1 outvld 4 } 
	{ a_col sc_out sc_lv 32 signal 5 } 
	{ a_col_ap_vld sc_out sc_logic 1 outvld 5 } 
	{ b_col sc_out sc_lv 32 signal 6 } 
	{ b_col_ap_vld sc_out sc_logic 1 outvld 6 } 
	{ work_id sc_out sc_lv 32 signal 7 } 
	{ work_id_ap_vld sc_out sc_logic 1 outvld 7 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ctl_cmd_stream_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ctl_cmd_stream", "role": "dout" }} , 
 	{ "name": "ctl_cmd_stream_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctl_cmd_stream", "role": "empty_n" }} , 
 	{ "name": "ctl_cmd_stream_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctl_cmd_stream", "role": "read" }} , 
 	{ "name": "a_baseaddr", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "a_baseaddr", "role": "default" }} , 
 	{ "name": "a_baseaddr_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "a_baseaddr", "role": "ap_vld" }} , 
 	{ "name": "b_baseaddr", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b_baseaddr", "role": "default" }} , 
 	{ "name": "b_baseaddr_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "b_baseaddr", "role": "ap_vld" }} , 
 	{ "name": "c_baseaddr", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "c_baseaddr", "role": "default" }} , 
 	{ "name": "c_baseaddr_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "c_baseaddr", "role": "ap_vld" }} , 
 	{ "name": "a_row", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "a_row", "role": "default" }} , 
 	{ "name": "a_row_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "a_row", "role": "ap_vld" }} , 
 	{ "name": "a_col", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "a_col", "role": "default" }} , 
 	{ "name": "a_col_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "a_col", "role": "ap_vld" }} , 
 	{ "name": "b_col", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b_col", "role": "default" }} , 
 	{ "name": "b_col_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "b_col", "role": "ap_vld" }} , 
 	{ "name": "work_id", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "work_id", "role": "default" }} , 
 	{ "name": "work_id_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "work_id", "role": "ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "4"],
		"CDFG" : "cl_box",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "18", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "ctl_cmd_stream", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "ctl_cmd_stream_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_cl_box_Pipeline_VITIS_LOOP_22_1_fu_181", "Port" : "ctl_cmd_stream", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "a_baseaddr", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "b_baseaddr", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "c_baseaddr", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "a_row", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "a_col", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "b_col", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "work_id", "Type" : "Vld", "Direction" : "O"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.cmd_array_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_cl_box_Pipeline_1_fu_175", "Parent" : "0", "Child" : ["3"],
		"CDFG" : "cl_box_Pipeline_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "7", "EstimateLatencyMax" : "7",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "cmd_array", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "Loop 1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cl_box_Pipeline_1_fu_175.flow_control_loop_pipe_sequential_init_U", "Parent" : "2"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_cl_box_Pipeline_VITIS_LOOP_22_1_fu_181", "Parent" : "0", "Child" : ["5"],
		"CDFG" : "cl_box_Pipeline_VITIS_LOOP_22_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "add_ln22", "Type" : "None", "Direction" : "I"},
			{"Name" : "ctl_cmd_stream", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "ctl_cmd_stream_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "cmd_array", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_22_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cl_box_Pipeline_VITIS_LOOP_22_1_fu_181.flow_control_loop_pipe_sequential_init_U", "Parent" : "4"}]}


set ArgLastReadFirstWriteLatency {
	cl_box {
		ctl_cmd_stream {Type I LastRead 2 FirstWrite -1}
		a_baseaddr {Type O LastRead -1 FirstWrite 6}
		b_baseaddr {Type O LastRead -1 FirstWrite 6}
		c_baseaddr {Type O LastRead -1 FirstWrite 7}
		a_row {Type O LastRead -1 FirstWrite 7}
		a_col {Type O LastRead -1 FirstWrite 7}
		b_col {Type O LastRead -1 FirstWrite 8}
		work_id {Type O LastRead -1 FirstWrite 8}}
	cl_box_Pipeline_1 {
		cmd_array {Type O LastRead -1 FirstWrite 0}}
	cl_box_Pipeline_VITIS_LOOP_22_1 {
		add_ln22 {Type I LastRead 0 FirstWrite -1}
		ctl_cmd_stream {Type I LastRead 1 FirstWrite -1}
		cmd_array {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "18", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "19", "Max" : "0"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	ctl_cmd_stream { ap_fifo {  { ctl_cmd_stream_dout fifo_data_in 0 32 }  { ctl_cmd_stream_empty_n fifo_status 0 1 }  { ctl_cmd_stream_read fifo_port_we 1 1 } } }
	a_baseaddr { ap_vld {  { a_baseaddr out_data 1 32 }  { a_baseaddr_ap_vld out_vld 1 1 } } }
	b_baseaddr { ap_vld {  { b_baseaddr out_data 1 32 }  { b_baseaddr_ap_vld out_vld 1 1 } } }
	c_baseaddr { ap_vld {  { c_baseaddr out_data 1 32 }  { c_baseaddr_ap_vld out_vld 1 1 } } }
	a_row { ap_vld {  { a_row out_data 1 32 }  { a_row_ap_vld out_vld 1 1 } } }
	a_col { ap_vld {  { a_col out_data 1 32 }  { a_col_ap_vld out_vld 1 1 } } }
	b_col { ap_vld {  { b_col out_data 1 32 }  { b_col_ap_vld out_vld 1 1 } } }
	work_id { ap_vld {  { work_id out_data 1 32 }  { work_id_ap_vld out_vld 1 1 } } }
}

set maxi_interface_dict [dict create]

# RTL port scheduling information:
set fifoSchedulingInfoList { 
	ctl_cmd_stream { fifo_read 2 no_conditional }
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
