//==============================================================================
// Copyright (C) 2023, Advanced Micro Devices, Inc. All rights reserved.
// Copyright (C) 2022, Xilinx, Inc. All rights reserved.
// SPDX-License-Identifier: MIT
//
//==============================================================================
`include "open_nic_shell_macros.vh"
`timescale 1ns/1ps

module box_250mhz #(
  parameter int MIN_PKT_LEN   = 64,
  parameter int MAX_PKT_LEN   = 1518,
  parameter int USE_PHYS_FUNC = 1,
  parameter int NUM_PHYS_FUNC = 1,
  parameter int NUM_CMAC_PORT = 1
) (
  input      [NUM_PHYS_FUNC-1:0] s_axil_awvalid,
  input   [32*NUM_PHYS_FUNC-1:0] s_axil_awaddr,
  output     [NUM_PHYS_FUNC-1:0] s_axil_awready,
  input      [NUM_PHYS_FUNC-1:0] s_axil_wvalid,
  input   [32*NUM_PHYS_FUNC-1:0] s_axil_wdata,
  output     [NUM_PHYS_FUNC-1:0] s_axil_wready,
  output     [NUM_PHYS_FUNC-1:0] s_axil_bvalid,
  output   [2*NUM_PHYS_FUNC-1:0] s_axil_bresp,
  input      [NUM_PHYS_FUNC-1:0] s_axil_bready,
  input      [NUM_PHYS_FUNC-1:0] s_axil_arvalid,
  input   [32*NUM_PHYS_FUNC-1:0] s_axil_araddr,
  output     [NUM_PHYS_FUNC-1:0] s_axil_arready,
  output     [NUM_PHYS_FUNC-1:0] s_axil_rvalid,
  output  [32*NUM_PHYS_FUNC-1:0] s_axil_rdata,
  output   [2*NUM_PHYS_FUNC-1:0] s_axil_rresp,
  input      [NUM_PHYS_FUNC-1:0] s_axil_rready,

  input      [NUM_PHYS_FUNC-1:0] s_axis_qdma_h2c_tvalid,
  input  [512*NUM_PHYS_FUNC-1:0] s_axis_qdma_h2c_tdata,
  input   [64*NUM_PHYS_FUNC-1:0] s_axis_qdma_h2c_tkeep,
  input      [NUM_PHYS_FUNC-1:0] s_axis_qdma_h2c_tlast,
  input   [16*NUM_PHYS_FUNC-1:0] s_axis_qdma_h2c_tuser_size,
  input   [16*NUM_PHYS_FUNC-1:0] s_axis_qdma_h2c_tuser_src,
  input   [16*NUM_PHYS_FUNC-1:0] s_axis_qdma_h2c_tuser_dst,
  output     [NUM_PHYS_FUNC-1:0] s_axis_qdma_h2c_tready,

  output     [NUM_PHYS_FUNC-1:0] m_axis_qdma_c2h_tvalid,
  output [512*NUM_PHYS_FUNC-1:0] m_axis_qdma_c2h_tdata,
  output  [64*NUM_PHYS_FUNC-1:0] m_axis_qdma_c2h_tkeep,
  output     [NUM_PHYS_FUNC-1:0] m_axis_qdma_c2h_tlast,
  output  [16*NUM_PHYS_FUNC-1:0] m_axis_qdma_c2h_tuser_size,
  output  [16*NUM_PHYS_FUNC-1:0] m_axis_qdma_c2h_tuser_src,
  output  [16*NUM_PHYS_FUNC-1:0] m_axis_qdma_c2h_tuser_dst,
  input      [NUM_PHYS_FUNC-1:0] m_axis_qdma_c2h_tready,

  output     [NUM_CMAC_PORT-1:0] m_axis_adap_tx_250mhz_tvalid,
  output [512*NUM_CMAC_PORT-1:0] m_axis_adap_tx_250mhz_tdata,
  output  [64*NUM_CMAC_PORT-1:0] m_axis_adap_tx_250mhz_tkeep,
  output     [NUM_CMAC_PORT-1:0] m_axis_adap_tx_250mhz_tlast,
  output  [16*NUM_CMAC_PORT-1:0] m_axis_adap_tx_250mhz_tuser_size,
  output  [16*NUM_CMAC_PORT-1:0] m_axis_adap_tx_250mhz_tuser_src,
  output  [16*NUM_CMAC_PORT-1:0] m_axis_adap_tx_250mhz_tuser_dst,
  input      [NUM_CMAC_PORT-1:0] m_axis_adap_tx_250mhz_tready,

  input      [NUM_CMAC_PORT-1:0] s_axis_adap_rx_250mhz_tvalid,
  input  [512*NUM_CMAC_PORT-1:0] s_axis_adap_rx_250mhz_tdata,
  input   [64*NUM_CMAC_PORT-1:0] s_axis_adap_rx_250mhz_tkeep,
  input      [NUM_CMAC_PORT-1:0] s_axis_adap_rx_250mhz_tlast,
  input   [16*NUM_CMAC_PORT-1:0] s_axis_adap_rx_250mhz_tuser_size,
  input   [16*NUM_CMAC_PORT-1:0] s_axis_adap_rx_250mhz_tuser_src,
  input   [16*NUM_CMAC_PORT-1:0] s_axis_adap_rx_250mhz_tuser_dst,
  output     [NUM_CMAC_PORT-1:0] s_axis_adap_rx_250mhz_tready,

  output     [NUM_PHYS_FUNC-1:0] m_axis_user2rdma_roce_from_cmac_rx_tvalid,
  output [512*NUM_PHYS_FUNC-1:0] m_axis_user2rdma_roce_from_cmac_rx_tdata,
  output  [64*NUM_PHYS_FUNC-1:0] m_axis_user2rdma_roce_from_cmac_rx_tkeep,
  output     [NUM_PHYS_FUNC-1:0] m_axis_user2rdma_roce_from_cmac_rx_tlast,
  input      [NUM_PHYS_FUNC-1:0] m_axis_user2rdma_roce_from_cmac_rx_tready,

  input      [NUM_PHYS_FUNC-1:0] s_axis_rdma2user_to_cmac_tx_tvalid,
  input  [512*NUM_PHYS_FUNC-1:0] s_axis_rdma2user_to_cmac_tx_tdata,
  input   [64*NUM_PHYS_FUNC-1:0] s_axis_rdma2user_to_cmac_tx_tkeep,
  input      [NUM_PHYS_FUNC-1:0] s_axis_rdma2user_to_cmac_tx_tlast,
  output     [NUM_PHYS_FUNC-1:0] s_axis_rdma2user_to_cmac_tx_tready,

  output     [NUM_PHYS_FUNC-1:0] m_axis_user2rdma_from_qdma_tx_tvalid,
  output [512*NUM_PHYS_FUNC-1:0] m_axis_user2rdma_from_qdma_tx_tdata,
  output  [64*NUM_PHYS_FUNC-1:0] m_axis_user2rdma_from_qdma_tx_tkeep,
  output     [NUM_PHYS_FUNC-1:0] m_axis_user2rdma_from_qdma_tx_tlast,
  input      [NUM_PHYS_FUNC-1:0] m_axis_user2rdma_from_qdma_tx_tready,

  input   [64*NUM_PHYS_FUNC-1:0] s_axis_rdma2user_ieth_immdt_tdata,
  input      [NUM_PHYS_FUNC-1:0] s_axis_rdma2user_ieth_immdt_tlast,
  input      [NUM_PHYS_FUNC-1:0] s_axis_rdma2user_ieth_immdt_tvalid,
  output     [NUM_PHYS_FUNC-1:0] s_axis_rdma2user_ieth_immdt_trdy,

  input      [NUM_PHYS_FUNC-1:0] s_resp_hndler_i_send_cq_db_cnt_valid,
  input   [10*NUM_PHYS_FUNC-1:0] s_resp_hndler_i_send_cq_db_addr,
  input   [32*NUM_PHYS_FUNC-1:0] s_resp_hndler_i_send_cq_db_cnt,
  output     [NUM_PHYS_FUNC-1:0] s_resp_hndler_o_send_cq_db_rdy,

  output  [16*NUM_PHYS_FUNC-1:0] m_o_qp_sq_pidb_hndshk,
  output  [32*NUM_PHYS_FUNC-1:0] m_o_qp_sq_pidb_wr_addr_hndshk,
  output     [NUM_PHYS_FUNC-1:0] m_o_qp_sq_pidb_wr_valid_hndshk,
  input      [NUM_PHYS_FUNC-1:0] m_i_qp_sq_pidb_wr_rdy,

  output  [16*NUM_PHYS_FUNC-1:0] m_o_qp_rq_cidb_hndshk,
  output  [32*NUM_PHYS_FUNC-1:0] m_o_qp_rq_cidb_wr_addr_hndshk,
  output     [NUM_PHYS_FUNC-1:0] m_o_qp_rq_cidb_wr_valid_hndshk,
  input      [NUM_PHYS_FUNC-1:0] m_i_qp_rq_cidb_wr_rdy,

  input      [NUM_PHYS_FUNC-1:0] s_rx_pkt_hndler_i_rq_db_data_valid,
  input   [10*NUM_PHYS_FUNC-1:0] s_rx_pkt_hndler_i_rq_db_addr,
  input   [32*NUM_PHYS_FUNC-1:0] s_rx_pkt_hndler_i_rq_db_data,
  output     [NUM_PHYS_FUNC-1:0] s_rx_pkt_hndler_o_rq_db_rdy,

  output     [NUM_PHYS_FUNC-1:0] m_axi_compute_logic_awid,
  output  [64*NUM_PHYS_FUNC-1:0] m_axi_compute_logic_awaddr,
  output   [4*NUM_PHYS_FUNC-1:0] m_axi_compute_logic_awqos,
  output   [8*NUM_PHYS_FUNC-1:0] m_axi_compute_logic_awlen,
  output   [3*NUM_PHYS_FUNC-1:0] m_axi_compute_logic_awsize,
  output   [2*NUM_PHYS_FUNC-1:0] m_axi_compute_logic_awburst,
  output   [4*NUM_PHYS_FUNC-1:0] m_axi_compute_logic_awcache,
  output   [3*NUM_PHYS_FUNC-1:0] m_axi_compute_logic_awprot,
  output     [NUM_PHYS_FUNC-1:0] m_axi_compute_logic_awvalid,
  input      [NUM_PHYS_FUNC-1:0] m_axi_compute_logic_awready,
  output [512*NUM_PHYS_FUNC-1:0] m_axi_compute_logic_wdata,
  output  [64*NUM_PHYS_FUNC-1:0] m_axi_compute_logic_wstrb,
  output     [NUM_PHYS_FUNC-1:0] m_axi_compute_logic_wlast,
  output     [NUM_PHYS_FUNC-1:0] m_axi_compute_logic_wvalid,
  input      [NUM_PHYS_FUNC-1:0] m_axi_compute_logic_wready,
  output     [NUM_PHYS_FUNC-1:0] m_axi_compute_logic_awlock,
  input      [NUM_PHYS_FUNC-1:0] m_axi_compute_logic_bid,
  input    [2*NUM_PHYS_FUNC-1:0] m_axi_compute_logic_bresp,
  input      [NUM_PHYS_FUNC-1:0] m_axi_compute_logic_bvalid,
  output     [NUM_PHYS_FUNC-1:0] m_axi_compute_logic_bready,
  output     [NUM_PHYS_FUNC-1:0] m_axi_compute_logic_arid,
  output  [64*NUM_PHYS_FUNC-1:0] m_axi_compute_logic_araddr,
  output   [8*NUM_PHYS_FUNC-1:0] m_axi_compute_logic_arlen,
  output   [3*NUM_PHYS_FUNC-1:0] m_axi_compute_logic_arsize,
  output   [2*NUM_PHYS_FUNC-1:0] m_axi_compute_logic_arburst,
  output   [4*NUM_PHYS_FUNC-1:0] m_axi_compute_logic_arcache,
  output   [3*NUM_PHYS_FUNC-1:0] m_axi_compute_logic_arprot,
  output     [NUM_PHYS_FUNC-1:0] m_axi_compute_logic_arvalid,
  input      [NUM_PHYS_FUNC-1:0] m_axi_compute_logic_arready,
  input      [NUM_PHYS_FUNC-1:0] m_axi_compute_logic_rid,
  input  [512*NUM_PHYS_FUNC-1:0] m_axi_compute_logic_rdata,
  input    [2*NUM_PHYS_FUNC-1:0] m_axi_compute_logic_rresp,
  input      [NUM_PHYS_FUNC-1:0] m_axi_compute_logic_rlast,
  input      [NUM_PHYS_FUNC-1:0] m_axi_compute_logic_rvalid,
  output     [NUM_PHYS_FUNC-1:0] m_axi_compute_logic_rready,
  output     [NUM_PHYS_FUNC-1:0] m_axi_compute_logic_arlock,
  output   [4*NUM_PHYS_FUNC-1:0] m_axi_compute_logic_arqos,

  input                   [15:0] mod_rstn,
  output                  [15:0] mod_rst_done,

  input                          box_rstn,
  output                         box_rst_done,

  input                          axil_aclk,
  input                          axis_aclk
);

// Parameter DRC
initial begin
  if (USE_PHYS_FUNC == 0) begin
    $fatal("No implementation for USE_PHYS_FUNC = %d. USE_PHYS_FUNC must be 1.", USE_PHYS_FUNC);
  end

  if ((NUM_PHYS_FUNC != 1) && (NUM_PHYS_FUNC != 2)) begin
    $fatal("No implementation for NUM_PHYS_FUNC = %d. NUM_PHYS_FUNC must be 1 or 2.", NUM_PHYS_FUNC);
  end

  if ((NUM_CMAC_PORT != 1) && (NUM_CMAC_PORT != 2)) begin
    $fatal("No implementation for NUM_CMAC_PORT = %d. NUM_CMAC_PORT must be 1 or 2.", NUM_CMAC_PORT);
  end

  if (NUM_PHYS_FUNC != NUM_CMAC_PORT) begin
    $fatal("No implementation for NUM_PHYS_FUNC (%d) != NUM_CMAC_PORT (%d). Both must be 1 or 2.", NUM_PHYS_FUNC, NUM_CMAC_PORT);
  end
end

localparam C_NUM_USER_BLOCK = 1;

logic axil_rstn;
logic axis_rstn;

generic_reset #(
  .NUM_INPUT_CLK  (2),
  .RESET_DURATION (100)
) reset_inst (
  .mod_rstn     (box_rstn),
  .mod_rst_done (box_rst_done),
  .clk          ({axis_aclk, axil_aclk}),
  .rstn         ({axis_rstn, axil_rstn})
);

// Make sure for all the unused reset pair, corresponding bits in
// "mod_rst_done" are tied to 0
assign mod_rst_done[15:C_NUM_USER_BLOCK] = {(16-C_NUM_USER_BLOCK){1'b1}};
assign mod_rst_done[0]                   = box_rst_done;

generate for (genvar i = 0; i < NUM_PHYS_FUNC; i++) begin: reconic
  rdma_onic_plugin #(
    .RECONIC_ID (i)
  ) rdma_onic_plugin_inst (
    .s_axil_awvalid                            (s_axil_awvalid[i]),
    .s_axil_awaddr                             (s_axil_awaddr[`getvec(32, i)]),
    .s_axil_awready                            (s_axil_awready[i]),
    .s_axil_wvalid                             (s_axil_wvalid[i]),
    .s_axil_wdata                              (s_axil_wdata[`getvec(32, i)]),
    .s_axil_wready                             (s_axil_wready[i]),
    .s_axil_bvalid                             (s_axil_bvalid[i]),
    .s_axil_bresp                              (s_axil_bresp[`getvec(2, i)]),
    .s_axil_bready                             (s_axil_bready[i]),
    .s_axil_arvalid                            (s_axil_arvalid[i]),
    .s_axil_araddr                             (s_axil_araddr[`getvec(32, i)]),
    .s_axil_arready                            (s_axil_arready[i]),
    .s_axil_rvalid                             (s_axil_rvalid[i]),
    .s_axil_rdata                              (s_axil_rdata[`getvec(32, i)]),
    .s_axil_rresp                              (s_axil_rresp[`getvec(2, i)]),
    .s_axil_rready                             (s_axil_rready[i]),

    // Receive packets from CMAC RX path
    .s_axis_cmac_rx_tvalid                     (s_axis_adap_rx_250mhz_tvalid[i]),
    .s_axis_cmac_rx_tdata                      (s_axis_adap_rx_250mhz_tdata[`getvec(512, i)]),
    .s_axis_cmac_rx_tkeep                      (s_axis_adap_rx_250mhz_tkeep[`getvec(64, i)]),
    .s_axis_cmac_rx_tlast                      (s_axis_adap_rx_250mhz_tlast[i]),
    .s_axis_cmac_rx_tuser_size                 (s_axis_adap_rx_250mhz_tuser_size[`getvec(16, i)]),
    .s_axis_cmac_rx_tready                     (s_axis_adap_rx_250mhz_tready[i]),

    .m_axis_user2rdma_roce_from_cmac_rx_tvalid (m_axis_user2rdma_roce_from_cmac_rx_tvalid[i]),
    .m_axis_user2rdma_roce_from_cmac_rx_tdata  (m_axis_user2rdma_roce_from_cmac_rx_tdata[`getvec(512, i)]),
    .m_axis_user2rdma_roce_from_cmac_rx_tkeep  (m_axis_user2rdma_roce_from_cmac_rx_tkeep[`getvec(64, i)]),
    .m_axis_user2rdma_roce_from_cmac_rx_tlast  (m_axis_user2rdma_roce_from_cmac_rx_tlast[i]),
    .m_axis_user2rdma_roce_from_cmac_rx_tready (m_axis_user2rdma_roce_from_cmac_rx_tready[i]),

    // Send packets to QDMA RX path
    .m_axis_qdma_c2h_tvalid                    (m_axis_qdma_c2h_tvalid[i]),
    .m_axis_qdma_c2h_tdata                     (m_axis_qdma_c2h_tdata[`getvec(512, i)]),
    .m_axis_qdma_c2h_tkeep                     (m_axis_qdma_c2h_tkeep[`getvec(64, i)]),
    .m_axis_qdma_c2h_tlast                     (m_axis_qdma_c2h_tlast[i]),
    .m_axis_qdma_c2h_tuser_size                (m_axis_qdma_c2h_tuser_size[`getvec(16, i)]),
    .m_axis_qdma_c2h_tready                    (m_axis_qdma_c2h_tready[i]),

    // Get packets from QDMA TX path
    .s_axis_qdma_h2c_tvalid                    (s_axis_qdma_h2c_tvalid[i]),
    .s_axis_qdma_h2c_tdata                     (s_axis_qdma_h2c_tdata[`getvec(512, i)]),
    .s_axis_qdma_h2c_tkeep                     (s_axis_qdma_h2c_tkeep[`getvec(64, i)]),
    .s_axis_qdma_h2c_tlast                     (s_axis_qdma_h2c_tlast[i]),
    .s_axis_qdma_h2c_tuser_size                (s_axis_qdma_h2c_tuser_size[`getvec(16, i)]),
    .s_axis_qdma_h2c_tready                    (s_axis_qdma_h2c_tready[i]),

    .m_axis_user2rdma_from_qdma_tx_tvalid      (m_axis_user2rdma_from_qdma_tx_tvalid[i]),
    .m_axis_user2rdma_from_qdma_tx_tdata       (m_axis_user2rdma_from_qdma_tx_tdata[`getvec(512, i)]),
    .m_axis_user2rdma_from_qdma_tx_tkeep       (m_axis_user2rdma_from_qdma_tx_tkeep[`getvec(64, i)]),
    .m_axis_user2rdma_from_qdma_tx_tlast       (m_axis_user2rdma_from_qdma_tx_tlast[i]),
    .m_axis_user2rdma_from_qdma_tx_tready      (m_axis_user2rdma_from_qdma_tx_tready[i]),

    // Send packets to CMAC TX path
    .m_axis_cmac_tx_tvalid                     (m_axis_adap_tx_250mhz_tvalid[i]),
    .m_axis_cmac_tx_tdata                      (m_axis_adap_tx_250mhz_tdata[`getvec(512, i)]),
    .m_axis_cmac_tx_tkeep                      (m_axis_adap_tx_250mhz_tkeep[`getvec(64, i)]),
    .m_axis_cmac_tx_tlast                      (m_axis_adap_tx_250mhz_tlast[i]),
    .m_axis_cmac_tx_tuser_size                 (m_axis_adap_tx_250mhz_tuser_size[`getvec(16, i)]),
    .m_axis_cmac_tx_tready                     (m_axis_adap_tx_250mhz_tready[i]),

    .s_axis_rdma2user_to_cmac_tx_tvalid        (s_axis_rdma2user_to_cmac_tx_tvalid[i]),
    .s_axis_rdma2user_to_cmac_tx_tdata         (s_axis_rdma2user_to_cmac_tx_tdata[`getvec(512, i)]),
    .s_axis_rdma2user_to_cmac_tx_tkeep         (s_axis_rdma2user_to_cmac_tx_tkeep[`getvec(64, i)]),
    .s_axis_rdma2user_to_cmac_tx_tlast         (s_axis_rdma2user_to_cmac_tx_tlast[i]),
    .s_axis_rdma2user_to_cmac_tx_tready        (s_axis_rdma2user_to_cmac_tx_tready[i]),

    .m_axi_compute_logic_awid                  (m_axi_compute_logic_awid[i]),
    .m_axi_compute_logic_awaddr                (m_axi_compute_logic_awaddr[`getvec(64, i)]),
    .m_axi_compute_logic_awqos                 (m_axi_compute_logic_awqos[`getvec(4, i)]),
    .m_axi_compute_logic_awlen                 (m_axi_compute_logic_awlen[`getvec(8, i)]),
    .m_axi_compute_logic_awsize                (m_axi_compute_logic_awsize[`getvec(3, i)]),
    .m_axi_compute_logic_awburst               (m_axi_compute_logic_awburst[`getvec(2, i)]),
    .m_axi_compute_logic_awcache               (m_axi_compute_logic_awcache[`getvec(4, i)]),
    .m_axi_compute_logic_awprot                (m_axi_compute_logic_awprot[`getvec(3, i)]),
    .m_axi_compute_logic_awvalid               (m_axi_compute_logic_awvalid[i]),
    .m_axi_compute_logic_awready               (m_axi_compute_logic_awready[i]),
    .m_axi_compute_logic_wdata                 (m_axi_compute_logic_wdata[`getvec(512, i)]),
    .m_axi_compute_logic_wstrb                 (m_axi_compute_logic_wstrb[`getvec(64, i)]),
    .m_axi_compute_logic_wlast                 (m_axi_compute_logic_wlast[i]),
    .m_axi_compute_logic_wvalid                (m_axi_compute_logic_wvalid[i]),
    .m_axi_compute_logic_wready                (m_axi_compute_logic_wready[i]),
    .m_axi_compute_logic_awlock                (m_axi_compute_logic_awlock[i]),
    .m_axi_compute_logic_bid                   (m_axi_compute_logic_bid[i]),
    .m_axi_compute_logic_bresp                 (m_axi_compute_logic_bresp[`getvec(2, i)]),
    .m_axi_compute_logic_bvalid                (m_axi_compute_logic_bvalid[i]),
    .m_axi_compute_logic_bready                (m_axi_compute_logic_bready[i]),
    .m_axi_compute_logic_arid                  (m_axi_compute_logic_arid[i]),
    .m_axi_compute_logic_araddr                (m_axi_compute_logic_araddr[`getvec(64, i)]),
    .m_axi_compute_logic_arlen                 (m_axi_compute_logic_arlen[`getvec(8, i)]),
    .m_axi_compute_logic_arsize                (m_axi_compute_logic_arsize[`getvec(3, i)]),
    .m_axi_compute_logic_arburst               (m_axi_compute_logic_arburst[`getvec(2, i)]),
    .m_axi_compute_logic_arcache               (m_axi_compute_logic_arcache[`getvec(4, i)]),
    .m_axi_compute_logic_arprot                (m_axi_compute_logic_arprot[`getvec(3, i)]),
    .m_axi_compute_logic_arvalid               (m_axi_compute_logic_arvalid[i]),
    .m_axi_compute_logic_arready               (m_axi_compute_logic_arready[i]),
    .m_axi_compute_logic_rid                   (m_axi_compute_logic_rid[i]),
    .m_axi_compute_logic_rdata                 (m_axi_compute_logic_rdata[`getvec(512, i)]),
    .m_axi_compute_logic_rresp                 (m_axi_compute_logic_rresp[`getvec(2, i)]),
    .m_axi_compute_logic_rlast                 (m_axi_compute_logic_rlast[i]),
    .m_axi_compute_logic_rvalid                (m_axi_compute_logic_rvalid[i]),
    .m_axi_compute_logic_rready                (m_axi_compute_logic_rready[i]),
    .m_axi_compute_logic_arlock                (m_axi_compute_logic_arlock[i]),
    .m_axi_compute_logic_arqos                 (m_axi_compute_logic_arqos[`getvec(4, i)]),

    .axil_aclk                                 (axil_aclk),
    .axil_rstn                                 (axil_rstn),
    .axis_aclk                                 (axis_aclk),
    .axis_rstn                                 (axis_rstn)
  );

  assign m_axis_qdma_c2h_tuser_src[`getvec(16, i)]       = 16'd0;
  assign m_axis_qdma_c2h_tuser_dst[`getvec(16, i)]       = 16'h1 << i;
  assign m_axis_adap_tx_250mhz_tuser_src[`getvec(16, i)] = 16'd0;
  assign m_axis_adap_tx_250mhz_tuser_dst[`getvec(16, i)] = 16'h1 << (6 + i);

  // TODO: Disable hardware handshaking for doorbell ringing in the current implementation
  assign s_resp_hndler_o_send_cq_db_rdy[i]             = 1'b0;
  assign s_rx_pkt_hndler_o_rq_db_rdy[i]                = 1'b0;

  assign m_o_qp_sq_pidb_hndshk[`getvec(16, i)]         = 0;
  assign m_o_qp_sq_pidb_wr_addr_hndshk[`getvec(32, i)] = 0;
  assign m_o_qp_sq_pidb_wr_valid_hndshk[i]             = 0;

  assign m_o_qp_rq_cidb_hndshk[`getvec(16, i)]         = 0;
  assign m_o_qp_rq_cidb_wr_addr_hndshk[`getvec(32, i)] = 0;
  assign m_o_qp_rq_cidb_wr_valid_hndshk[i]             = 0;

  // TODO: Disable ieth and immdt data
  assign s_axis_rdma2user_ieth_immdt_trdy[i] = 1'b1;
end
endgenerate

endmodule: box_250mhz
