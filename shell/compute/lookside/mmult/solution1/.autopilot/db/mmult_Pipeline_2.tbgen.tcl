set moduleName mmult_Pipeline_2
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type loop_auto_rewind
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set DLRegFirstOffset 0
set DLRegItemOffset 0
set svuvm_can_support 1
set cdfgNum 7
set C_modelName {mmult_Pipeline_2}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict localB { MEM_WIDTH 32 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict localB_1 { MEM_WIDTH 32 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict localB_2 { MEM_WIDTH 32 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict localB_3 { MEM_WIDTH 32 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict localB_4 { MEM_WIDTH 32 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict localB_5 { MEM_WIDTH 32 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict localB_6 { MEM_WIDTH 32 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict localB_7 { MEM_WIDTH 32 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict localB_8 { MEM_WIDTH 32 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict localB_9 { MEM_WIDTH 32 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict localB_10 { MEM_WIDTH 32 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict localB_11 { MEM_WIDTH 32 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict localB_12 { MEM_WIDTH 32 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict localB_13 { MEM_WIDTH 32 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict localB_14 { MEM_WIDTH 32 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict localB_15 { MEM_WIDTH 32 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
set C_modelArgList {
	{ systolic int 512 regular {axi_master 0}  }
	{ localB int 32 regular {array 16 { 0 3 } 0 1 }  }
	{ localB_1 int 32 regular {array 16 { 0 3 } 0 1 }  }
	{ localB_2 int 32 regular {array 16 { 0 3 } 0 1 }  }
	{ localB_3 int 32 regular {array 16 { 0 3 } 0 1 }  }
	{ localB_4 int 32 regular {array 16 { 0 3 } 0 1 }  }
	{ localB_5 int 32 regular {array 16 { 0 3 } 0 1 }  }
	{ localB_6 int 32 regular {array 16 { 0 3 } 0 1 }  }
	{ localB_7 int 32 regular {array 16 { 0 3 } 0 1 }  }
	{ localB_8 int 32 regular {array 16 { 0 3 } 0 1 }  }
	{ localB_9 int 32 regular {array 16 { 0 3 } 0 1 }  }
	{ localB_10 int 32 regular {array 16 { 0 3 } 0 1 }  }
	{ localB_11 int 32 regular {array 16 { 0 3 } 0 1 }  }
	{ localB_12 int 32 regular {array 16 { 0 3 } 0 1 }  }
	{ localB_13 int 32 regular {array 16 { 0 3 } 0 1 }  }
	{ localB_14 int 32 regular {array 16 { 0 3 } 0 1 }  }
	{ localB_15 int 32 regular {array 16 { 0 3 } 0 1 }  }
	{ sext_ln108 int 58 regular  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "systolic", "interface" : "axi_master", "bitwidth" : 512, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "a","offset": { "type": "dynamic","port_name": "a"},"direction": "READONLY"},{"cName": "b","offset": { "type": "dynamic","port_name": "b"},"direction": "READONLY"},{"cName": "c","offset": { "type": "dynamic","port_name": "c"},"direction": "WRITEONLY"}]}]} , 
 	{ "Name" : "localB", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "localB_1", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "localB_2", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "localB_3", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "localB_4", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "localB_5", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "localB_6", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "localB_7", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "localB_8", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "localB_9", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "localB_10", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "localB_11", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "localB_12", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "localB_13", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "localB_14", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "localB_15", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "sext_ln108", "interface" : "wire", "bitwidth" : 58, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 117
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ m_axi_systolic_0_AWVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_systolic_0_AWREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_systolic_0_AWADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_systolic_0_AWID sc_out sc_lv 1 signal 0 } 
	{ m_axi_systolic_0_AWLEN sc_out sc_lv 32 signal 0 } 
	{ m_axi_systolic_0_AWSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_systolic_0_AWBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_systolic_0_AWLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_systolic_0_AWCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_systolic_0_AWPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_systolic_0_AWQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_systolic_0_AWREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_systolic_0_AWUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_systolic_0_WVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_systolic_0_WREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_systolic_0_WDATA sc_out sc_lv 512 signal 0 } 
	{ m_axi_systolic_0_WSTRB sc_out sc_lv 64 signal 0 } 
	{ m_axi_systolic_0_WLAST sc_out sc_logic 1 signal 0 } 
	{ m_axi_systolic_0_WID sc_out sc_lv 1 signal 0 } 
	{ m_axi_systolic_0_WUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_systolic_0_ARVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_systolic_0_ARREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_systolic_0_ARADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_systolic_0_ARID sc_out sc_lv 1 signal 0 } 
	{ m_axi_systolic_0_ARLEN sc_out sc_lv 32 signal 0 } 
	{ m_axi_systolic_0_ARSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_systolic_0_ARBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_systolic_0_ARLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_systolic_0_ARCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_systolic_0_ARPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_systolic_0_ARQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_systolic_0_ARREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_systolic_0_ARUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_systolic_0_RVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_systolic_0_RREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_systolic_0_RDATA sc_in sc_lv 512 signal 0 } 
	{ m_axi_systolic_0_RLAST sc_in sc_logic 1 signal 0 } 
	{ m_axi_systolic_0_RID sc_in sc_lv 1 signal 0 } 
	{ m_axi_systolic_0_RFIFONUM sc_in sc_lv 9 signal 0 } 
	{ m_axi_systolic_0_RUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_systolic_0_RRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_systolic_0_BVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_systolic_0_BREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_systolic_0_BRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_systolic_0_BID sc_in sc_lv 1 signal 0 } 
	{ m_axi_systolic_0_BUSER sc_in sc_lv 1 signal 0 } 
	{ localB_address0 sc_out sc_lv 4 signal 1 } 
	{ localB_ce0 sc_out sc_logic 1 signal 1 } 
	{ localB_we0 sc_out sc_logic 1 signal 1 } 
	{ localB_d0 sc_out sc_lv 32 signal 1 } 
	{ localB_1_address0 sc_out sc_lv 4 signal 2 } 
	{ localB_1_ce0 sc_out sc_logic 1 signal 2 } 
	{ localB_1_we0 sc_out sc_logic 1 signal 2 } 
	{ localB_1_d0 sc_out sc_lv 32 signal 2 } 
	{ localB_2_address0 sc_out sc_lv 4 signal 3 } 
	{ localB_2_ce0 sc_out sc_logic 1 signal 3 } 
	{ localB_2_we0 sc_out sc_logic 1 signal 3 } 
	{ localB_2_d0 sc_out sc_lv 32 signal 3 } 
	{ localB_3_address0 sc_out sc_lv 4 signal 4 } 
	{ localB_3_ce0 sc_out sc_logic 1 signal 4 } 
	{ localB_3_we0 sc_out sc_logic 1 signal 4 } 
	{ localB_3_d0 sc_out sc_lv 32 signal 4 } 
	{ localB_4_address0 sc_out sc_lv 4 signal 5 } 
	{ localB_4_ce0 sc_out sc_logic 1 signal 5 } 
	{ localB_4_we0 sc_out sc_logic 1 signal 5 } 
	{ localB_4_d0 sc_out sc_lv 32 signal 5 } 
	{ localB_5_address0 sc_out sc_lv 4 signal 6 } 
	{ localB_5_ce0 sc_out sc_logic 1 signal 6 } 
	{ localB_5_we0 sc_out sc_logic 1 signal 6 } 
	{ localB_5_d0 sc_out sc_lv 32 signal 6 } 
	{ localB_6_address0 sc_out sc_lv 4 signal 7 } 
	{ localB_6_ce0 sc_out sc_logic 1 signal 7 } 
	{ localB_6_we0 sc_out sc_logic 1 signal 7 } 
	{ localB_6_d0 sc_out sc_lv 32 signal 7 } 
	{ localB_7_address0 sc_out sc_lv 4 signal 8 } 
	{ localB_7_ce0 sc_out sc_logic 1 signal 8 } 
	{ localB_7_we0 sc_out sc_logic 1 signal 8 } 
	{ localB_7_d0 sc_out sc_lv 32 signal 8 } 
	{ localB_8_address0 sc_out sc_lv 4 signal 9 } 
	{ localB_8_ce0 sc_out sc_logic 1 signal 9 } 
	{ localB_8_we0 sc_out sc_logic 1 signal 9 } 
	{ localB_8_d0 sc_out sc_lv 32 signal 9 } 
	{ localB_9_address0 sc_out sc_lv 4 signal 10 } 
	{ localB_9_ce0 sc_out sc_logic 1 signal 10 } 
	{ localB_9_we0 sc_out sc_logic 1 signal 10 } 
	{ localB_9_d0 sc_out sc_lv 32 signal 10 } 
	{ localB_10_address0 sc_out sc_lv 4 signal 11 } 
	{ localB_10_ce0 sc_out sc_logic 1 signal 11 } 
	{ localB_10_we0 sc_out sc_logic 1 signal 11 } 
	{ localB_10_d0 sc_out sc_lv 32 signal 11 } 
	{ localB_11_address0 sc_out sc_lv 4 signal 12 } 
	{ localB_11_ce0 sc_out sc_logic 1 signal 12 } 
	{ localB_11_we0 sc_out sc_logic 1 signal 12 } 
	{ localB_11_d0 sc_out sc_lv 32 signal 12 } 
	{ localB_12_address0 sc_out sc_lv 4 signal 13 } 
	{ localB_12_ce0 sc_out sc_logic 1 signal 13 } 
	{ localB_12_we0 sc_out sc_logic 1 signal 13 } 
	{ localB_12_d0 sc_out sc_lv 32 signal 13 } 
	{ localB_13_address0 sc_out sc_lv 4 signal 14 } 
	{ localB_13_ce0 sc_out sc_logic 1 signal 14 } 
	{ localB_13_we0 sc_out sc_logic 1 signal 14 } 
	{ localB_13_d0 sc_out sc_lv 32 signal 14 } 
	{ localB_14_address0 sc_out sc_lv 4 signal 15 } 
	{ localB_14_ce0 sc_out sc_logic 1 signal 15 } 
	{ localB_14_we0 sc_out sc_logic 1 signal 15 } 
	{ localB_14_d0 sc_out sc_lv 32 signal 15 } 
	{ localB_15_address0 sc_out sc_lv 4 signal 16 } 
	{ localB_15_ce0 sc_out sc_logic 1 signal 16 } 
	{ localB_15_we0 sc_out sc_logic 1 signal 16 } 
	{ localB_15_d0 sc_out sc_lv 32 signal 16 } 
	{ sext_ln108 sc_in sc_lv 58 signal 17 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "m_axi_systolic_0_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "systolic", "role": "0_AWVALID" }} , 
 	{ "name": "m_axi_systolic_0_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "systolic", "role": "0_AWREADY" }} , 
 	{ "name": "m_axi_systolic_0_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "systolic", "role": "0_AWADDR" }} , 
 	{ "name": "m_axi_systolic_0_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "systolic", "role": "0_AWID" }} , 
 	{ "name": "m_axi_systolic_0_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "systolic", "role": "0_AWLEN" }} , 
 	{ "name": "m_axi_systolic_0_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "systolic", "role": "0_AWSIZE" }} , 
 	{ "name": "m_axi_systolic_0_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "systolic", "role": "0_AWBURST" }} , 
 	{ "name": "m_axi_systolic_0_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "systolic", "role": "0_AWLOCK" }} , 
 	{ "name": "m_axi_systolic_0_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "systolic", "role": "0_AWCACHE" }} , 
 	{ "name": "m_axi_systolic_0_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "systolic", "role": "0_AWPROT" }} , 
 	{ "name": "m_axi_systolic_0_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "systolic", "role": "0_AWQOS" }} , 
 	{ "name": "m_axi_systolic_0_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "systolic", "role": "0_AWREGION" }} , 
 	{ "name": "m_axi_systolic_0_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "systolic", "role": "0_AWUSER" }} , 
 	{ "name": "m_axi_systolic_0_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "systolic", "role": "0_WVALID" }} , 
 	{ "name": "m_axi_systolic_0_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "systolic", "role": "0_WREADY" }} , 
 	{ "name": "m_axi_systolic_0_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "systolic", "role": "0_WDATA" }} , 
 	{ "name": "m_axi_systolic_0_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "systolic", "role": "0_WSTRB" }} , 
 	{ "name": "m_axi_systolic_0_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "systolic", "role": "0_WLAST" }} , 
 	{ "name": "m_axi_systolic_0_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "systolic", "role": "0_WID" }} , 
 	{ "name": "m_axi_systolic_0_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "systolic", "role": "0_WUSER" }} , 
 	{ "name": "m_axi_systolic_0_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "systolic", "role": "0_ARVALID" }} , 
 	{ "name": "m_axi_systolic_0_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "systolic", "role": "0_ARREADY" }} , 
 	{ "name": "m_axi_systolic_0_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "systolic", "role": "0_ARADDR" }} , 
 	{ "name": "m_axi_systolic_0_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "systolic", "role": "0_ARID" }} , 
 	{ "name": "m_axi_systolic_0_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "systolic", "role": "0_ARLEN" }} , 
 	{ "name": "m_axi_systolic_0_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "systolic", "role": "0_ARSIZE" }} , 
 	{ "name": "m_axi_systolic_0_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "systolic", "role": "0_ARBURST" }} , 
 	{ "name": "m_axi_systolic_0_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "systolic", "role": "0_ARLOCK" }} , 
 	{ "name": "m_axi_systolic_0_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "systolic", "role": "0_ARCACHE" }} , 
 	{ "name": "m_axi_systolic_0_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "systolic", "role": "0_ARPROT" }} , 
 	{ "name": "m_axi_systolic_0_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "systolic", "role": "0_ARQOS" }} , 
 	{ "name": "m_axi_systolic_0_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "systolic", "role": "0_ARREGION" }} , 
 	{ "name": "m_axi_systolic_0_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "systolic", "role": "0_ARUSER" }} , 
 	{ "name": "m_axi_systolic_0_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "systolic", "role": "0_RVALID" }} , 
 	{ "name": "m_axi_systolic_0_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "systolic", "role": "0_RREADY" }} , 
 	{ "name": "m_axi_systolic_0_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "systolic", "role": "0_RDATA" }} , 
 	{ "name": "m_axi_systolic_0_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "systolic", "role": "0_RLAST" }} , 
 	{ "name": "m_axi_systolic_0_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "systolic", "role": "0_RID" }} , 
 	{ "name": "m_axi_systolic_0_RFIFONUM", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "systolic", "role": "0_RFIFONUM" }} , 
 	{ "name": "m_axi_systolic_0_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "systolic", "role": "0_RUSER" }} , 
 	{ "name": "m_axi_systolic_0_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "systolic", "role": "0_RRESP" }} , 
 	{ "name": "m_axi_systolic_0_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "systolic", "role": "0_BVALID" }} , 
 	{ "name": "m_axi_systolic_0_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "systolic", "role": "0_BREADY" }} , 
 	{ "name": "m_axi_systolic_0_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "systolic", "role": "0_BRESP" }} , 
 	{ "name": "m_axi_systolic_0_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "systolic", "role": "0_BID" }} , 
 	{ "name": "m_axi_systolic_0_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "systolic", "role": "0_BUSER" }} , 
 	{ "name": "localB_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "localB", "role": "address0" }} , 
 	{ "name": "localB_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "localB", "role": "ce0" }} , 
 	{ "name": "localB_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "localB", "role": "we0" }} , 
 	{ "name": "localB_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "localB", "role": "d0" }} , 
 	{ "name": "localB_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "localB_1", "role": "address0" }} , 
 	{ "name": "localB_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "localB_1", "role": "ce0" }} , 
 	{ "name": "localB_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "localB_1", "role": "we0" }} , 
 	{ "name": "localB_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "localB_1", "role": "d0" }} , 
 	{ "name": "localB_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "localB_2", "role": "address0" }} , 
 	{ "name": "localB_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "localB_2", "role": "ce0" }} , 
 	{ "name": "localB_2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "localB_2", "role": "we0" }} , 
 	{ "name": "localB_2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "localB_2", "role": "d0" }} , 
 	{ "name": "localB_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "localB_3", "role": "address0" }} , 
 	{ "name": "localB_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "localB_3", "role": "ce0" }} , 
 	{ "name": "localB_3_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "localB_3", "role": "we0" }} , 
 	{ "name": "localB_3_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "localB_3", "role": "d0" }} , 
 	{ "name": "localB_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "localB_4", "role": "address0" }} , 
 	{ "name": "localB_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "localB_4", "role": "ce0" }} , 
 	{ "name": "localB_4_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "localB_4", "role": "we0" }} , 
 	{ "name": "localB_4_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "localB_4", "role": "d0" }} , 
 	{ "name": "localB_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "localB_5", "role": "address0" }} , 
 	{ "name": "localB_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "localB_5", "role": "ce0" }} , 
 	{ "name": "localB_5_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "localB_5", "role": "we0" }} , 
 	{ "name": "localB_5_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "localB_5", "role": "d0" }} , 
 	{ "name": "localB_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "localB_6", "role": "address0" }} , 
 	{ "name": "localB_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "localB_6", "role": "ce0" }} , 
 	{ "name": "localB_6_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "localB_6", "role": "we0" }} , 
 	{ "name": "localB_6_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "localB_6", "role": "d0" }} , 
 	{ "name": "localB_7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "localB_7", "role": "address0" }} , 
 	{ "name": "localB_7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "localB_7", "role": "ce0" }} , 
 	{ "name": "localB_7_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "localB_7", "role": "we0" }} , 
 	{ "name": "localB_7_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "localB_7", "role": "d0" }} , 
 	{ "name": "localB_8_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "localB_8", "role": "address0" }} , 
 	{ "name": "localB_8_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "localB_8", "role": "ce0" }} , 
 	{ "name": "localB_8_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "localB_8", "role": "we0" }} , 
 	{ "name": "localB_8_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "localB_8", "role": "d0" }} , 
 	{ "name": "localB_9_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "localB_9", "role": "address0" }} , 
 	{ "name": "localB_9_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "localB_9", "role": "ce0" }} , 
 	{ "name": "localB_9_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "localB_9", "role": "we0" }} , 
 	{ "name": "localB_9_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "localB_9", "role": "d0" }} , 
 	{ "name": "localB_10_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "localB_10", "role": "address0" }} , 
 	{ "name": "localB_10_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "localB_10", "role": "ce0" }} , 
 	{ "name": "localB_10_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "localB_10", "role": "we0" }} , 
 	{ "name": "localB_10_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "localB_10", "role": "d0" }} , 
 	{ "name": "localB_11_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "localB_11", "role": "address0" }} , 
 	{ "name": "localB_11_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "localB_11", "role": "ce0" }} , 
 	{ "name": "localB_11_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "localB_11", "role": "we0" }} , 
 	{ "name": "localB_11_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "localB_11", "role": "d0" }} , 
 	{ "name": "localB_12_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "localB_12", "role": "address0" }} , 
 	{ "name": "localB_12_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "localB_12", "role": "ce0" }} , 
 	{ "name": "localB_12_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "localB_12", "role": "we0" }} , 
 	{ "name": "localB_12_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "localB_12", "role": "d0" }} , 
 	{ "name": "localB_13_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "localB_13", "role": "address0" }} , 
 	{ "name": "localB_13_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "localB_13", "role": "ce0" }} , 
 	{ "name": "localB_13_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "localB_13", "role": "we0" }} , 
 	{ "name": "localB_13_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "localB_13", "role": "d0" }} , 
 	{ "name": "localB_14_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "localB_14", "role": "address0" }} , 
 	{ "name": "localB_14_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "localB_14", "role": "ce0" }} , 
 	{ "name": "localB_14_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "localB_14", "role": "we0" }} , 
 	{ "name": "localB_14_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "localB_14", "role": "d0" }} , 
 	{ "name": "localB_15_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "localB_15", "role": "address0" }} , 
 	{ "name": "localB_15_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "localB_15", "role": "ce0" }} , 
 	{ "name": "localB_15_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "localB_15", "role": "we0" }} , 
 	{ "name": "localB_15_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "localB_15", "role": "d0" }} , 
 	{ "name": "sext_ln108", "direction": "in", "datatype": "sc_lv", "bitwidth":58, "type": "signal", "bundle":{"name": "sext_ln108", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "mmult_Pipeline_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "259", "EstimateLatencyMax" : "259",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "systolic", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "systolic_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "localB", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "localB_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "localB_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "localB_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "localB_4", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "localB_5", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "localB_6", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "localB_7", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "localB_8", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "localB_9", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "localB_10", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "localB_11", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "localB_12", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "localB_13", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "localB_14", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "localB_15", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "sext_ln108", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "Loop 1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	mmult_Pipeline_2 {
		systolic {Type I LastRead 1 FirstWrite -1}
		localB {Type O LastRead -1 FirstWrite 2}
		localB_1 {Type O LastRead -1 FirstWrite 2}
		localB_2 {Type O LastRead -1 FirstWrite 2}
		localB_3 {Type O LastRead -1 FirstWrite 2}
		localB_4 {Type O LastRead -1 FirstWrite 2}
		localB_5 {Type O LastRead -1 FirstWrite 2}
		localB_6 {Type O LastRead -1 FirstWrite 2}
		localB_7 {Type O LastRead -1 FirstWrite 2}
		localB_8 {Type O LastRead -1 FirstWrite 2}
		localB_9 {Type O LastRead -1 FirstWrite 2}
		localB_10 {Type O LastRead -1 FirstWrite 2}
		localB_11 {Type O LastRead -1 FirstWrite 2}
		localB_12 {Type O LastRead -1 FirstWrite 2}
		localB_13 {Type O LastRead -1 FirstWrite 2}
		localB_14 {Type O LastRead -1 FirstWrite 2}
		localB_15 {Type O LastRead -1 FirstWrite 2}
		sext_ln108 {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "259", "Max" : "259"}
	, {"Name" : "Interval", "Min" : "259", "Max" : "259"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	 { m_axi {  { m_axi_systolic_0_AWVALID VALID 1 1 }  { m_axi_systolic_0_AWREADY READY 0 1 }  { m_axi_systolic_0_AWADDR ADDR 1 64 }  { m_axi_systolic_0_AWID ID 1 1 }  { m_axi_systolic_0_AWLEN SIZE 1 32 }  { m_axi_systolic_0_AWSIZE BURST 1 3 }  { m_axi_systolic_0_AWBURST LOCK 1 2 }  { m_axi_systolic_0_AWLOCK CACHE 1 2 }  { m_axi_systolic_0_AWCACHE PROT 1 4 }  { m_axi_systolic_0_AWPROT QOS 1 3 }  { m_axi_systolic_0_AWQOS REGION 1 4 }  { m_axi_systolic_0_AWREGION USER 1 4 }  { m_axi_systolic_0_AWUSER DATA 1 1 }  { m_axi_systolic_0_WVALID VALID 1 1 }  { m_axi_systolic_0_WREADY READY 0 1 }  { m_axi_systolic_0_WDATA FIFONUM 1 512 }  { m_axi_systolic_0_WSTRB STRB 1 64 }  { m_axi_systolic_0_WLAST LAST 1 1 }  { m_axi_systolic_0_WID ID 1 1 }  { m_axi_systolic_0_WUSER DATA 1 1 }  { m_axi_systolic_0_ARVALID VALID 1 1 }  { m_axi_systolic_0_ARREADY READY 0 1 }  { m_axi_systolic_0_ARADDR ADDR 1 64 }  { m_axi_systolic_0_ARID ID 1 1 }  { m_axi_systolic_0_ARLEN SIZE 1 32 }  { m_axi_systolic_0_ARSIZE BURST 1 3 }  { m_axi_systolic_0_ARBURST LOCK 1 2 }  { m_axi_systolic_0_ARLOCK CACHE 1 2 }  { m_axi_systolic_0_ARCACHE PROT 1 4 }  { m_axi_systolic_0_ARPROT QOS 1 3 }  { m_axi_systolic_0_ARQOS REGION 1 4 }  { m_axi_systolic_0_ARREGION USER 1 4 }  { m_axi_systolic_0_ARUSER DATA 1 1 }  { m_axi_systolic_0_RVALID VALID 0 1 }  { m_axi_systolic_0_RREADY READY 1 1 }  { m_axi_systolic_0_RDATA FIFONUM 0 512 }  { m_axi_systolic_0_RLAST LAST 0 1 }  { m_axi_systolic_0_RID ID 0 1 }  { m_axi_systolic_0_RFIFONUM LEN 0 9 }  { m_axi_systolic_0_RUSER DATA 0 1 }  { m_axi_systolic_0_RRESP RESP 0 2 }  { m_axi_systolic_0_BVALID VALID 0 1 }  { m_axi_systolic_0_BREADY READY 1 1 }  { m_axi_systolic_0_BRESP RESP 0 2 }  { m_axi_systolic_0_BID ID 0 1 }  { m_axi_systolic_0_BUSER DATA 0 1 } } }
	localB { ap_memory {  { localB_address0 mem_address 1 4 }  { localB_ce0 mem_ce 1 1 }  { localB_we0 mem_we 1 1 }  { localB_d0 mem_din 1 32 } } }
	localB_1 { ap_memory {  { localB_1_address0 mem_address 1 4 }  { localB_1_ce0 mem_ce 1 1 }  { localB_1_we0 mem_we 1 1 }  { localB_1_d0 mem_din 1 32 } } }
	localB_2 { ap_memory {  { localB_2_address0 mem_address 1 4 }  { localB_2_ce0 mem_ce 1 1 }  { localB_2_we0 mem_we 1 1 }  { localB_2_d0 mem_din 1 32 } } }
	localB_3 { ap_memory {  { localB_3_address0 mem_address 1 4 }  { localB_3_ce0 mem_ce 1 1 }  { localB_3_we0 mem_we 1 1 }  { localB_3_d0 mem_din 1 32 } } }
	localB_4 { ap_memory {  { localB_4_address0 mem_address 1 4 }  { localB_4_ce0 mem_ce 1 1 }  { localB_4_we0 mem_we 1 1 }  { localB_4_d0 mem_din 1 32 } } }
	localB_5 { ap_memory {  { localB_5_address0 mem_address 1 4 }  { localB_5_ce0 mem_ce 1 1 }  { localB_5_we0 mem_we 1 1 }  { localB_5_d0 mem_din 1 32 } } }
	localB_6 { ap_memory {  { localB_6_address0 mem_address 1 4 }  { localB_6_ce0 mem_ce 1 1 }  { localB_6_we0 mem_we 1 1 }  { localB_6_d0 mem_din 1 32 } } }
	localB_7 { ap_memory {  { localB_7_address0 mem_address 1 4 }  { localB_7_ce0 mem_ce 1 1 }  { localB_7_we0 mem_we 1 1 }  { localB_7_d0 mem_din 1 32 } } }
	localB_8 { ap_memory {  { localB_8_address0 mem_address 1 4 }  { localB_8_ce0 mem_ce 1 1 }  { localB_8_we0 mem_we 1 1 }  { localB_8_d0 mem_din 1 32 } } }
	localB_9 { ap_memory {  { localB_9_address0 mem_address 1 4 }  { localB_9_ce0 mem_ce 1 1 }  { localB_9_we0 mem_we 1 1 }  { localB_9_d0 mem_din 1 32 } } }
	localB_10 { ap_memory {  { localB_10_address0 mem_address 1 4 }  { localB_10_ce0 mem_ce 1 1 }  { localB_10_we0 mem_we 1 1 }  { localB_10_d0 mem_din 1 32 } } }
	localB_11 { ap_memory {  { localB_11_address0 mem_address 1 4 }  { localB_11_ce0 mem_ce 1 1 }  { localB_11_we0 mem_we 1 1 }  { localB_11_d0 mem_din 1 32 } } }
	localB_12 { ap_memory {  { localB_12_address0 mem_address 1 4 }  { localB_12_ce0 mem_ce 1 1 }  { localB_12_we0 mem_we 1 1 }  { localB_12_d0 mem_din 1 32 } } }
	localB_13 { ap_memory {  { localB_13_address0 mem_address 1 4 }  { localB_13_ce0 mem_ce 1 1 }  { localB_13_we0 mem_we 1 1 }  { localB_13_d0 mem_din 1 32 } } }
	localB_14 { ap_memory {  { localB_14_address0 mem_address 1 4 }  { localB_14_ce0 mem_ce 1 1 }  { localB_14_we0 mem_we 1 1 }  { localB_14_d0 mem_din 1 32 } } }
	localB_15 { ap_memory {  { localB_15_address0 mem_address 1 4 }  { localB_15_ce0 mem_ce 1 1 }  { localB_15_we0 mem_we 1 1 }  { localB_15_d0 mem_din 1 32 } } }
	sext_ln108 { ap_none {  { sext_ln108 in_data 0 58 } } }
}
