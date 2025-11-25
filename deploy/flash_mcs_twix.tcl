open_hw_manager
connect_hw_server -allow_non_jtag
open_hw_target {localhost:3121/xilinx_tcf/Xilinx/XFL11ZIPGA2GA}
current_hw_device [get_hw_devices xcu280_u55c_0]
refresh_hw_device -update_hw_probes false [lindex [get_hw_devices xcu280_u55c_0] 0]
create_hw_cfgmem -hw_device [lindex [get_hw_devices xcu280_u55c_0] 0] [lindex [get_cfgmem_parts {mt25qu01g-spi-x1_x2_x4}] 0]
refresh_hw_device [lindex [get_hw_devices xcu280_u55c_0] 0]

cd /home/amotta/srcc/bitstream_u55

write_cfgmem -force -format mcs -interface spix1 -size 128 -loadbit "up 0x01002000 ace_qdma.bit" -file "u55.mcs"

set_property PROGRAM.ADDRESS_RANGE  {use_file} [ get_property PROGRAM.HW_CFGMEM [lindex [get_hw_devices xcu280_u55c_0] 0]]
set_property PROGRAM.FILES [list "/home/amotta/srcc/bitstream_u55/u55.mcs" ] [ get_property PROGRAM.HW_CFGMEM [lindex [get_hw_devices xcu280_u55c_0] 0]]
set_property PROGRAM.UNUSED_PIN_TERMINATION {pull-none} [ get_property PROGRAM.HW_CFGMEM [lindex [get_hw_devices xcu280_u55c_0] 0]]
set_property PROGRAM.BLANK_CHECK  0 [ get_property PROGRAM.HW_CFGMEM [lindex [get_hw_devices xcu280_u55c_0] 0]]
set_property PROGRAM.ERASE  1 [ get_property PROGRAM.HW_CFGMEM [lindex [get_hw_devices xcu280_u55c_0] 0]]
set_property PROGRAM.CFG_PROGRAM  1 [ get_property PROGRAM.HW_CFGMEM [lindex [get_hw_devices xcu280_u55c_0] 0]]
set_property PROGRAM.VERIFY  1 [ get_property PROGRAM.HW_CFGMEM [lindex [get_hw_devices xcu280_u55c_0] 0]]
set_property PROGRAM.CHECKSUM  0 [ get_property PROGRAM.HW_CFGMEM [lindex [get_hw_devices xcu280_u55c_0] 0]]
set_property PROGRAM.PRM_FILES [list "/home/amotta/srcc/bitstream_u55/u55.prm" ] [ get_property PROGRAM.HW_CFGMEM [lindex [get_hw_devices xcu280_u55c_0] 0]]
set_property PROGRAM.ADDRESS_RANGE  {use_file} [ get_property PROGRAM.HW_CFGMEM [lindex [get_hw_devices xcu280_u55c_0] 0]]
startgroup

create_hw_bitstream -hw_device [lindex [get_hw_devices xcu280_u55c_0] 0] [get_property PROGRAM.HW_CFGMEM_BITFILE [ lindex [get_hw_devices xcu280_u55c_0] 0]]; program_hw_devices [lindex [get_hw_devices xcu280_u55c_0] 0]; refresh_hw_device [lindex [get_hw_devices xcu280_u55c_0] 0];

program_hw_cfgmem -hw_cfgmem [ get_property PROGRAM.HW_CFGMEM [lindex [get_hw_devices xcu280_u55c_0] 0]]
