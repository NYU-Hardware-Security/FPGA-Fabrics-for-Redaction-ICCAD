//-------------------------------------------
//	FPGA Synthesizable Verilog Netlist
//	Description: Fabric Netlist Summary
//	Author: Xifan TANG
//	Organization: University of Utah
//	Date: Mon May 24 23:46:00 2021
//-------------------------------------------
//----- Time scale -----
`timescale 1ns / 1ps

// ------ Include defines: preproc flags -----
`include "./SRC/fpga_defines.v"

// ------ Include user-defined netlists -----
`include "/home/abc586/SOFA/verilog/sky130_fd_sc_hd__inv_1.v"
`include "/home/abc586/SOFA/verilog/sky130_fd_sc_hd__buf_2.v"
`include "/home/abc586/SOFA/verilog/sky130_fd_sc_hd__buf_4.v"
`include "/home/abc586/SOFA/verilog/sky130_fd_sc_hd__inv_2.v"
`include "/home/abc586/SOFA/verilog/sky130_fd_sc_hd__or2_1.v"
`include "/home/abc586/SOFA/verilog/sky130_fd_sc_hd__mux2_1.v"
`include "/home/abc586/SOFA/verilog/sky130_fd_sc_hd__sdfxtp_1.v"
`include "/home/abc586/SOFA/verilog/sky130_fd_sc_hd__dfxtp_1.v"
`include "/home/abc586/SOFA/skywater-openfpga/HDL/common/digital_io_hd.v"
// ------ Include primitive module netlists -----
`include "./SRC/sub_module/inv_buf_passgate.v"
`include "./SRC/sub_module/arch_encoder.v"
`include "./SRC/sub_module/local_encoder.v"
`include "./SRC/sub_module/mux_primitives.v"
`include "./SRC/sub_module/muxes.v"
`include "./SRC/sub_module/luts.v"
`include "./SRC/sub_module/wires.v"
`include "./SRC/sub_module/memories.v"

// ------ Include logic block netlists -----
`include "./SRC/lb/logical_tile_io_mode_physical__iopad.v"
`include "./SRC/lb/logical_tile_io_mode_io_.v"
`include "./SRC/lb/logical_tile_clb_mode_default__fle_mode_physical__fabric_mode_default__frac_logic_mode_default__frac_lut4.v"
`include "./SRC/lb/logical_tile_clb_mode_default__fle_mode_physical__fabric_mode_default__frac_logic.v"
`include "./SRC/lb/logical_tile_clb_mode_default__fle_mode_physical__fabric_mode_default__ff.v"
`include "./SRC/lb/logical_tile_clb_mode_default__fle_mode_physical__fabric.v"
`include "./SRC/lb/logical_tile_clb_mode_default__fle.v"
`include "./SRC/lb/logical_tile_clb_mode_clb_.v"
`include "./SRC/lb/grid_io_top_top.v"
`include "./SRC/lb/grid_io_right_right.v"
`include "./SRC/lb/grid_io_bottom_bottom.v"
`include "./SRC/lb/grid_io_left_left.v"
`include "./SRC/lb/grid_clb.v"

// ------ Include routing module netlists -----
`include "./SRC/routing/sb_0__0_.v"
`include "./SRC/routing/sb_0__1_.v"
`include "./SRC/routing/sb_0__4_.v"
`include "./SRC/routing/sb_1__0_.v"
`include "./SRC/routing/sb_1__1_.v"
`include "./SRC/routing/sb_1__4_.v"
`include "./SRC/routing/sb_4__0_.v"
`include "./SRC/routing/sb_4__1_.v"
`include "./SRC/routing/sb_4__4_.v"
`include "./SRC/routing/cbx_1__0_.v"
`include "./SRC/routing/cbx_1__1_.v"
`include "./SRC/routing/cbx_1__4_.v"
`include "./SRC/routing/cby_0__1_.v"
`include "./SRC/routing/cby_1__1_.v"
`include "./SRC/routing/cby_4__1_.v"

// ------ Include fabric top-level netlists -----
`include "./SRC/fpga_top.v"

