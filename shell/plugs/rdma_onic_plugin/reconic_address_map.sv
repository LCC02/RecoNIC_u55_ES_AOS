//==============================================================================
// Copyright (C) 2023, Advanced Micro Devices, Inc. All rights reserved.
// SPDX-License-Identifier: MIT
//
//==============================================================================
//
// Address map for the box running at 250MHz (through PCI-e BAR2 1MB)
//
// System-level address range: 0x500000 - 0x5FFFFF (see C_BOX0_BASE_ADDR in
// system_config_address_map.sv; this module's own addresses below are
// relative to that base)
//
// ----------------------------------------------------------
//   BaseAddr |  HighAddr |  Module
// ----------------------------------------------------------
//   0x0000   |  0x1FFF   |  Table control 0
// ----------------------------------------------------------
//   0x2000   |  0x2FFF   |  RecoNIC Shell Registers 0
// ----------------------------------------------------------
//   0x3000   |  0x3FFF   |  Compute Logic Registers 0
// ----------------------------------------------------------
//   0x4000   |  0x5FFF   |  Table control 1
// ----------------------------------------------------------
//   0x6000   |  0x6FFF   |  RecoNIC Shell Registers 1
// ----------------------------------------------------------
//   0x7000   |  0x7FFF   |  Compute Logic Registers 1
// ----------------------------------------------------------
`timescale 1ns/1ps

module reconic_address_map #(
  parameter int RECONIC_ID = 0
) (
  input         s_axil_awvalid,
  input  [31:0] s_axil_awaddr,
  output        s_axil_awready,
  input         s_axil_wvalid,
  input  [31:0] s_axil_wdata,
  output        s_axil_wready,
  output        s_axil_bvalid,
  output  [1:0] s_axil_bresp,
  input         s_axil_bready,
  input         s_axil_arvalid,
  input  [31:0] s_axil_araddr,
  output        s_axil_arready,
  output        s_axil_rvalid,
  output [31:0] s_axil_rdata,
  output  [1:0] s_axil_rresp,
  input         s_axil_rready,
  
  output        m_axil_ctrl_awvalid,
  output [31:0] m_axil_ctrl_awaddr,
  input         m_axil_ctrl_awready,
  output        m_axil_ctrl_wvalid,
  output [31:0] m_axil_ctrl_wdata,
  input         m_axil_ctrl_wready,
  input         m_axil_ctrl_bvalid,
  input   [1:0] m_axil_ctrl_bresp,
  output        m_axil_ctrl_bready,
  output        m_axil_ctrl_arvalid,
  output [31:0] m_axil_ctrl_araddr,
  input         m_axil_ctrl_arready,
  input         m_axil_ctrl_rvalid,
  input  [31:0] m_axil_ctrl_rdata,
  input   [1:0] m_axil_ctrl_rresp,
  output        m_axil_ctrl_rready,  

  // RecoNIC shell register interface
  output        m_axil_reg_awvalid,
  output [31:0] m_axil_reg_awaddr,
  input         m_axil_reg_awready,
  output        m_axil_reg_wvalid,
  output [31:0] m_axil_reg_wdata,
  input         m_axil_reg_wready,
  input         m_axil_reg_bvalid,
  input   [1:0] m_axil_reg_bresp,
  output        m_axil_reg_bready,
  output        m_axil_reg_arvalid,
  output [31:0] m_axil_reg_araddr,
  input         m_axil_reg_arready,
  input         m_axil_reg_rvalid,
  input  [31:0] m_axil_reg_rdata,
  input   [1:0] m_axil_reg_rresp,
  output        m_axil_reg_rready,

  // Compute Logic register interface
  output        m_axil_cl_reg_awvalid,
  output [31:0] m_axil_cl_reg_awaddr,
  input         m_axil_cl_reg_awready,
  output        m_axil_cl_reg_wvalid,
  output [31:0] m_axil_cl_reg_wdata,
  input         m_axil_cl_reg_wready,
  input         m_axil_cl_reg_bvalid,
  input   [1:0] m_axil_cl_reg_bresp,
  output        m_axil_cl_reg_bready,
  output        m_axil_cl_reg_arvalid,
  output [31:0] m_axil_cl_reg_araddr,
  input         m_axil_cl_reg_arready,
  input         m_axil_cl_reg_rvalid,
  input  [31:0] m_axil_cl_reg_rdata,
  input   [1:0] m_axil_cl_reg_rresp,
  output        m_axil_cl_reg_rready,

  input         aclk,
  input         aresetn
);

localparam C_NUM_SLAVES = 3;

localparam C_CTRL_INDEX   = 0;
localparam C_RN_REG_INDEX = 1;
localparam C_CL_REG_INDEX = 2;

// Each RecoNIC child keeps a dedicated region in the AXI BAR so that
// multiple instances can coexist without overlapping register windows.
// RECONIC_ID 1's range (0x4000-0x6FFF used, out of the 0x4000-0x7FFF window
// reserved for it) sits entirely inside Box0's own 1MB system-level
// allocation (0x500000-0x5FFFFF, see C_BOX0_BASE_ADDR in
// system_config_address_map.sv), so it does not overlap any other module.
localparam C_RECONIC_BASE_ADDR = (RECONIC_ID == 0) ? 32'h0 : 32'h4000;

// rn_axil_xbar_inst below has fixed (not RECONIC_ID-aware) decode windows
// at 0x0/0x2000/0x3000, so it must always see a locally-based-at-0 address
// regardless of which instance this is - strip C_RECONIC_BASE_ADDR here,
// upstream of the crossbar, rather than downstream of it. Feeding it the
// raw (still RECONIC_ID-offset) s_axil_awaddr/araddr instead would mean
// RECONIC_ID 1's addresses (0x4000+) never match any of the crossbar's
// three windows at all, so its ctrl/rn_reg/cl_reg registers would be
// unreachable.
wire                  [31:0] s_axil_awaddr_local = s_axil_awaddr - C_RECONIC_BASE_ADDR;
wire                  [31:0] s_axil_araddr_local = s_axil_araddr - C_RECONIC_BASE_ADDR;

localparam C_CTRL_BASE_ADDR   = 32'h0;
localparam C_RN_REG_BASE_ADDR = 32'h2000;
localparam C_CL_REG_BASE_ADDR = 32'h3000;

wire                  [31:0] axil_ctrl_awaddr;
wire                  [31:0] axil_ctrl_araddr;
wire                  [31:0] axil_reg_awaddr;
wire                  [31:0] axil_reg_araddr;
wire                  [31:0] axil_cl_reg_awaddr;
wire                  [31:0] axil_cl_reg_araddr;

wire  [(1*C_NUM_SLAVES)-1:0] axil_awvalid;
wire [(32*C_NUM_SLAVES)-1:0] axil_awaddr;
wire  [(1*C_NUM_SLAVES)-1:0] axil_awready;
wire  [(1*C_NUM_SLAVES)-1:0] axil_wvalid;
wire [(32*C_NUM_SLAVES)-1:0] axil_wdata;
wire  [(1*C_NUM_SLAVES)-1:0] axil_wready;
wire  [(1*C_NUM_SLAVES)-1:0] axil_bvalid;
wire  [(2*C_NUM_SLAVES)-1:0] axil_bresp;
wire  [(1*C_NUM_SLAVES)-1:0] axil_bready;
wire  [(1*C_NUM_SLAVES)-1:0] axil_arvalid;
wire [(32*C_NUM_SLAVES)-1:0] axil_araddr;
wire  [(1*C_NUM_SLAVES)-1:0] axil_arready;
wire  [(1*C_NUM_SLAVES)-1:0] axil_rvalid;
wire [(32*C_NUM_SLAVES)-1:0] axil_rdata;
wire  [(2*C_NUM_SLAVES)-1:0] axil_rresp;
wire  [(1*C_NUM_SLAVES)-1:0] axil_rready;

// Adjust AXI-Lite address so that each slave can assume a base address of 0x0
assign axil_ctrl_awaddr                    = axil_awaddr[C_CTRL_INDEX*32 +: 32] - C_CTRL_BASE_ADDR;
assign axil_ctrl_araddr                    = axil_araddr[C_CTRL_INDEX*32 +: 32] - C_CTRL_BASE_ADDR;
assign axil_reg_awaddr                     = axil_awaddr[C_RN_REG_INDEX*32 +: 32] - C_RN_REG_BASE_ADDR;
assign axil_reg_araddr                     = axil_araddr[C_RN_REG_INDEX*32 +: 32] - C_RN_REG_BASE_ADDR;
assign axil_cl_reg_awaddr                  = axil_awaddr[C_CL_REG_INDEX*32 +: 32] - C_CL_REG_BASE_ADDR;
assign axil_cl_reg_araddr                  = axil_araddr[C_CL_REG_INDEX*32 +: 32] - C_CL_REG_BASE_ADDR;

assign m_axil_ctrl_awvalid                 = axil_awvalid[C_CTRL_INDEX];
assign m_axil_ctrl_awaddr                  = axil_ctrl_awaddr;
assign axil_awready[C_CTRL_INDEX]          = m_axil_ctrl_awready;
assign m_axil_ctrl_wvalid                  = axil_wvalid[C_CTRL_INDEX];
assign m_axil_ctrl_wdata                   = axil_wdata[C_CTRL_INDEX*32 +: 32];
assign axil_wready[C_CTRL_INDEX]           = m_axil_ctrl_wready;
assign axil_bvalid[C_CTRL_INDEX]           = m_axil_ctrl_bvalid;
assign axil_bresp[C_CTRL_INDEX*2 +: 2]     = m_axil_ctrl_bresp;
assign m_axil_ctrl_bready                  = axil_bready[C_CTRL_INDEX];
assign m_axil_ctrl_arvalid                 = axil_arvalid[C_CTRL_INDEX];
assign m_axil_ctrl_araddr                  = axil_ctrl_araddr;
assign axil_arready[C_CTRL_INDEX]          = m_axil_ctrl_arready;
assign axil_rvalid[C_CTRL_INDEX]           = m_axil_ctrl_rvalid;
assign axil_rdata[C_CTRL_INDEX*32 +: 32]   = m_axil_ctrl_rdata;
assign axil_rresp[C_CTRL_INDEX* 2 +: 2]    = m_axil_ctrl_rresp;
assign m_axil_ctrl_rready                  = axil_rready[C_CTRL_INDEX];

assign m_axil_reg_awvalid                  = axil_awvalid[C_RN_REG_INDEX];
assign m_axil_reg_awaddr                   = axil_reg_awaddr;
assign axil_awready[C_RN_REG_INDEX]        = m_axil_reg_awready;
assign m_axil_reg_wvalid                   = axil_wvalid[C_RN_REG_INDEX];
assign m_axil_reg_wdata                    = axil_wdata[C_RN_REG_INDEX*32 +: 32];
assign axil_wready[C_RN_REG_INDEX]         = m_axil_reg_wready;
assign axil_bvalid[C_RN_REG_INDEX]         = m_axil_reg_bvalid;
assign axil_bresp[C_RN_REG_INDEX*2 +: 2]   = m_axil_reg_bresp;
assign m_axil_reg_bready                   = axil_bready[C_RN_REG_INDEX];
assign m_axil_reg_arvalid                  = axil_arvalid[C_RN_REG_INDEX];
assign m_axil_reg_araddr                   = axil_reg_araddr;
assign axil_arready[C_RN_REG_INDEX]        = m_axil_reg_arready;
assign axil_rvalid[C_RN_REG_INDEX]         = m_axil_reg_rvalid;
assign axil_rdata[C_RN_REG_INDEX*32 +: 32] = m_axil_reg_rdata;
assign axil_rresp[C_RN_REG_INDEX*2 +: 2]   = m_axil_reg_rresp;
assign m_axil_reg_rready                   = axil_rready[C_RN_REG_INDEX];

assign m_axil_cl_reg_awvalid               = axil_awvalid[C_CL_REG_INDEX];
assign m_axil_cl_reg_awaddr                = axil_cl_reg_awaddr;
assign axil_awready[C_CL_REG_INDEX]        = m_axil_cl_reg_awready;
assign m_axil_cl_reg_wvalid                = axil_wvalid[C_CL_REG_INDEX];
assign m_axil_cl_reg_wdata                 = axil_wdata[C_CL_REG_INDEX*32 +: 32];
assign axil_wready[C_CL_REG_INDEX]         = m_axil_cl_reg_wready;
assign axil_bvalid[C_CL_REG_INDEX]         = m_axil_cl_reg_bvalid;
assign axil_bresp[C_CL_REG_INDEX*2 +: 2]   = m_axil_cl_reg_bresp;
assign m_axil_cl_reg_bready                = axil_bready[C_CL_REG_INDEX];
assign m_axil_cl_reg_arvalid               = axil_arvalid[C_CL_REG_INDEX];
assign m_axil_cl_reg_araddr                = axil_cl_reg_araddr;
assign axil_arready[C_CL_REG_INDEX]        = m_axil_cl_reg_arready;
assign axil_rvalid[C_CL_REG_INDEX]         = m_axil_cl_reg_rvalid;
assign axil_rdata[C_CL_REG_INDEX*32 +: 32] = m_axil_cl_reg_rdata;
assign axil_rresp[C_CL_REG_INDEX*2 +: 2]   = m_axil_cl_reg_rresp;
assign m_axil_cl_reg_rready                = axil_rready[C_CL_REG_INDEX];

reconic_axil_crossbar rn_axil_xbar_inst (
  .s_axi_awaddr  (s_axil_awaddr_local),
  .s_axi_awprot  (0),
  .s_axi_awvalid (s_axil_awvalid),
  .s_axi_awready (s_axil_awready),
  .s_axi_wdata   (s_axil_wdata),
  .s_axi_wstrb   (4'hF),
  .s_axi_wvalid  (s_axil_wvalid),
  .s_axi_wready  (s_axil_wready),
  .s_axi_bresp   (s_axil_bresp),
  .s_axi_bvalid  (s_axil_bvalid),
  .s_axi_bready  (s_axil_bready),
  .s_axi_araddr  (s_axil_araddr_local),
  .s_axi_arprot  (0),
  .s_axi_arvalid (s_axil_arvalid),
  .s_axi_arready (s_axil_arready),
  .s_axi_rdata   (s_axil_rdata),
  .s_axi_rresp   (s_axil_rresp),
  .s_axi_rvalid  (s_axil_rvalid),
  .s_axi_rready  (s_axil_rready),

  .m_axi_awaddr  (axil_awaddr),
  .m_axi_awprot  (),
  .m_axi_awvalid (axil_awvalid),
  .m_axi_awready (axil_awready),
  .m_axi_wdata   (axil_wdata),
  .m_axi_wstrb   (),
  .m_axi_wvalid  (axil_wvalid),
  .m_axi_wready  (axil_wready),
  .m_axi_bresp   (axil_bresp),
  .m_axi_bvalid  (axil_bvalid),
  .m_axi_bready  (axil_bready),
  .m_axi_araddr  (axil_araddr),
  .m_axi_arprot  (),
  .m_axi_arvalid (axil_arvalid),
  .m_axi_arready (axil_arready),
  .m_axi_rdata   (axil_rdata),
  .m_axi_rresp   (axil_rresp),
  .m_axi_rvalid  (axil_rvalid),
  .m_axi_rready  (axil_rready),

  .aclk          (aclk),
  .aresetn       (aresetn)
);

endmodule: reconic_address_map