#==============================================================================
# Copyright (C) 2026, RecoNIC project. All rights reserved.
# SPDX-License-Identifier: MIT
#
#==============================================================================
# Demuxes the single incoming BAR2-mapped AXI4-Lite bus (one PCIe function's
# worth of address space, forwarded as axil_box0_* from open_nic_shell.sv)
# into NUM_PHYS_FUNC independently-addressed 32-bit AXI4-Lite buses, one per
# RECONIC_ID / rdma_onic_plugin instance in box_250mhz.sv - mirrors
# reconic_axil_crossbar.tcl's own internal ctrl/rn_reg/cl_reg split, one
# level up. M00 = RECONIC_ID 0 (addr 0x0000-0x3FFF), M01 = RECONIC_ID 1
# (addr 0x4000-0x7FFF), matching reconic_address_map.sv's C_RECONIC_BASE_ADDR.
set axi_crossbar box0_axil_crossbar
create_ip -name axi_crossbar -vendor xilinx.com -library ip -module_name $axi_crossbar -dir ${ip_build_dir}

set_property -dict {
    CONFIG.ADDR_RANGES {1}
    CONFIG.NUM_MI {2}
    CONFIG.PROTOCOL {AXI4LITE}
    CONFIG.CONNECTIVITY_MODE {SASD}
    CONFIG.R_REGISTER {1}
    CONFIG.S00_WRITE_ACCEPTANCE {1}
    CONFIG.S00_READ_ACCEPTANCE {1}
    CONFIG.M00_WRITE_ISSUING {1}
    CONFIG.M01_WRITE_ISSUING {1}
    CONFIG.M00_READ_ISSUING {1}
    CONFIG.M01_READ_ISSUING {1}
    CONFIG.S00_SINGLE_THREAD {1}
    CONFIG.M01_A00_BASE_ADDR {0x0000000000004000}
    CONFIG.M00_A00_ADDR_WIDTH {14}
} [get_ips $axi_crossbar]
