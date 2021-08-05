//-------------------------------------------
//	FPGA Synthesizable Verilog Netlist
//	Description: Verilog modules for Unique Connection Blocks[5][1]
//	Author: Xifan TANG
//	Organization: University of Utah
//	Date: Wed May 26 01:10:41 2021
//-------------------------------------------
//----- Time scale -----
`timescale 1ns / 1ps

//----- Default net type -----
//`default_nettype none

// ----- Verilog module for cby_5__1_ -----
module cby_5__1_(prog_clk,
                 chany_bottom_in,
                 chany_top_in,
                 ccff_head,
                 chany_bottom_out,
                 chany_top_out,
                 right_grid_left_width_0_height_0_subtile_0__pin_outpad_0_,
                 left_grid_right_width_0_height_0_subtile_0__pin_I4_0_,
                 left_grid_right_width_0_height_0_subtile_0__pin_I4_1_,
                 left_grid_right_width_0_height_0_subtile_0__pin_I4_2_,
                 left_grid_right_width_0_height_0_subtile_0__pin_I4i_0_,
                 left_grid_right_width_0_height_0_subtile_0__pin_I5_0_,
                 left_grid_right_width_0_height_0_subtile_0__pin_I5_1_,
                 left_grid_right_width_0_height_0_subtile_0__pin_I5_2_,
                 left_grid_right_width_0_height_0_subtile_0__pin_I5i_0_,
                 left_grid_right_width_0_height_0_subtile_0__pin_I6_0_,
                 left_grid_right_width_0_height_0_subtile_0__pin_I6_1_,
                 left_grid_right_width_0_height_0_subtile_0__pin_I6_2_,
                 left_grid_right_width_0_height_0_subtile_0__pin_I6i_0_,
                 left_grid_right_width_0_height_0_subtile_0__pin_I7_0_,
                 left_grid_right_width_0_height_0_subtile_0__pin_I7_1_,
                 left_grid_right_width_0_height_0_subtile_0__pin_I7_2_,
                 left_grid_right_width_0_height_0_subtile_0__pin_I7i_0_,
                 ccff_tail);
//----- GLOBAL PORTS -----
input [0:0] prog_clk;
//----- INPUT PORTS -----
input [0:13] chany_bottom_in;
//----- INPUT PORTS -----
input [0:13] chany_top_in;
//----- INPUT PORTS -----
input [0:0] ccff_head;
//----- OUTPUT PORTS -----
output [0:13] chany_bottom_out;
//----- OUTPUT PORTS -----
output [0:13] chany_top_out;
//----- OUTPUT PORTS -----
output [0:0] right_grid_left_width_0_height_0_subtile_0__pin_outpad_0_;
//----- OUTPUT PORTS -----
output [0:0] left_grid_right_width_0_height_0_subtile_0__pin_I4_0_;
//----- OUTPUT PORTS -----
output [0:0] left_grid_right_width_0_height_0_subtile_0__pin_I4_1_;
//----- OUTPUT PORTS -----
output [0:0] left_grid_right_width_0_height_0_subtile_0__pin_I4_2_;
//----- OUTPUT PORTS -----
output [0:0] left_grid_right_width_0_height_0_subtile_0__pin_I4i_0_;
//----- OUTPUT PORTS -----
output [0:0] left_grid_right_width_0_height_0_subtile_0__pin_I5_0_;
//----- OUTPUT PORTS -----
output [0:0] left_grid_right_width_0_height_0_subtile_0__pin_I5_1_;
//----- OUTPUT PORTS -----
output [0:0] left_grid_right_width_0_height_0_subtile_0__pin_I5_2_;
//----- OUTPUT PORTS -----
output [0:0] left_grid_right_width_0_height_0_subtile_0__pin_I5i_0_;
//----- OUTPUT PORTS -----
output [0:0] left_grid_right_width_0_height_0_subtile_0__pin_I6_0_;
//----- OUTPUT PORTS -----
output [0:0] left_grid_right_width_0_height_0_subtile_0__pin_I6_1_;
//----- OUTPUT PORTS -----
output [0:0] left_grid_right_width_0_height_0_subtile_0__pin_I6_2_;
//----- OUTPUT PORTS -----
output [0:0] left_grid_right_width_0_height_0_subtile_0__pin_I6i_0_;
//----- OUTPUT PORTS -----
output [0:0] left_grid_right_width_0_height_0_subtile_0__pin_I7_0_;
//----- OUTPUT PORTS -----
output [0:0] left_grid_right_width_0_height_0_subtile_0__pin_I7_1_;
//----- OUTPUT PORTS -----
output [0:0] left_grid_right_width_0_height_0_subtile_0__pin_I7_2_;
//----- OUTPUT PORTS -----
output [0:0] left_grid_right_width_0_height_0_subtile_0__pin_I7i_0_;
//----- OUTPUT PORTS -----
output [0:0] ccff_tail;

//----- BEGIN wire-connection ports -----
//----- END wire-connection ports -----


//----- BEGIN Registered ports -----
//----- END Registered ports -----


wire [0:3] mux_left_ipin_0_undriven_sram_inv;
wire [0:3] mux_right_ipin_0_undriven_sram_inv;
wire [0:2] mux_right_ipin_10_undriven_sram_inv;
wire [0:3] mux_right_ipin_11_undriven_sram_inv;
wire [0:3] mux_right_ipin_12_undriven_sram_inv;
wire [0:3] mux_right_ipin_13_undriven_sram_inv;
wire [0:2] mux_right_ipin_14_undriven_sram_inv;
wire [0:3] mux_right_ipin_15_undriven_sram_inv;
wire [0:3] mux_right_ipin_1_undriven_sram_inv;
wire [0:2] mux_right_ipin_2_undriven_sram_inv;
wire [0:3] mux_right_ipin_3_undriven_sram_inv;
wire [0:3] mux_right_ipin_4_undriven_sram_inv;
wire [0:3] mux_right_ipin_5_undriven_sram_inv;
wire [0:2] mux_right_ipin_6_undriven_sram_inv;
wire [0:3] mux_right_ipin_7_undriven_sram_inv;
wire [0:3] mux_right_ipin_8_undriven_sram_inv;
wire [0:3] mux_right_ipin_9_undriven_sram_inv;
wire [0:3] mux_tree_tapbuf_size10_0_sram;
wire [0:3] mux_tree_tapbuf_size10_10_sram;
wire [0:3] mux_tree_tapbuf_size10_11_sram;
wire [0:3] mux_tree_tapbuf_size10_12_sram;
wire [0:3] mux_tree_tapbuf_size10_1_sram;
wire [0:3] mux_tree_tapbuf_size10_2_sram;
wire [0:3] mux_tree_tapbuf_size10_3_sram;
wire [0:3] mux_tree_tapbuf_size10_4_sram;
wire [0:3] mux_tree_tapbuf_size10_5_sram;
wire [0:3] mux_tree_tapbuf_size10_6_sram;
wire [0:3] mux_tree_tapbuf_size10_7_sram;
wire [0:3] mux_tree_tapbuf_size10_8_sram;
wire [0:3] mux_tree_tapbuf_size10_9_sram;
wire [0:0] mux_tree_tapbuf_size10_mem_0_ccff_tail;
wire [0:0] mux_tree_tapbuf_size10_mem_10_ccff_tail;
wire [0:0] mux_tree_tapbuf_size10_mem_11_ccff_tail;
wire [0:0] mux_tree_tapbuf_size10_mem_1_ccff_tail;
wire [0:0] mux_tree_tapbuf_size10_mem_2_ccff_tail;
wire [0:0] mux_tree_tapbuf_size10_mem_3_ccff_tail;
wire [0:0] mux_tree_tapbuf_size10_mem_4_ccff_tail;
wire [0:0] mux_tree_tapbuf_size10_mem_5_ccff_tail;
wire [0:0] mux_tree_tapbuf_size10_mem_6_ccff_tail;
wire [0:0] mux_tree_tapbuf_size10_mem_7_ccff_tail;
wire [0:0] mux_tree_tapbuf_size10_mem_8_ccff_tail;
wire [0:0] mux_tree_tapbuf_size10_mem_9_ccff_tail;
wire [0:2] mux_tree_tapbuf_size6_0_sram;
wire [0:2] mux_tree_tapbuf_size6_1_sram;
wire [0:2] mux_tree_tapbuf_size6_2_sram;
wire [0:2] mux_tree_tapbuf_size6_3_sram;
wire [0:0] mux_tree_tapbuf_size6_mem_0_ccff_tail;
wire [0:0] mux_tree_tapbuf_size6_mem_1_ccff_tail;
wire [0:0] mux_tree_tapbuf_size6_mem_2_ccff_tail;
wire [0:0] mux_tree_tapbuf_size6_mem_3_ccff_tail;

// ----- BEGIN Local short connections -----
// ----- Local connection due to Wire 0 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_top_out[0] = chany_bottom_in[0];
// ----- Local connection due to Wire 1 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_top_out[1] = chany_bottom_in[1];
// ----- Local connection due to Wire 2 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_top_out[2] = chany_bottom_in[2];
// ----- Local connection due to Wire 3 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_top_out[3] = chany_bottom_in[3];
// ----- Local connection due to Wire 4 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_top_out[4] = chany_bottom_in[4];
// ----- Local connection due to Wire 5 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_top_out[5] = chany_bottom_in[5];
// ----- Local connection due to Wire 6 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_top_out[6] = chany_bottom_in[6];
// ----- Local connection due to Wire 7 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_top_out[7] = chany_bottom_in[7];
// ----- Local connection due to Wire 8 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_top_out[8] = chany_bottom_in[8];
// ----- Local connection due to Wire 9 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_top_out[9] = chany_bottom_in[9];
// ----- Local connection due to Wire 10 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_top_out[10] = chany_bottom_in[10];
// ----- Local connection due to Wire 11 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_top_out[11] = chany_bottom_in[11];
// ----- Local connection due to Wire 12 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_top_out[12] = chany_bottom_in[12];
// ----- Local connection due to Wire 13 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_top_out[13] = chany_bottom_in[13];
// ----- Local connection due to Wire 14 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_bottom_out[0] = chany_top_in[0];
// ----- Local connection due to Wire 15 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_bottom_out[1] = chany_top_in[1];
// ----- Local connection due to Wire 16 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_bottom_out[2] = chany_top_in[2];
// ----- Local connection due to Wire 17 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_bottom_out[3] = chany_top_in[3];
// ----- Local connection due to Wire 18 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_bottom_out[4] = chany_top_in[4];
// ----- Local connection due to Wire 19 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_bottom_out[5] = chany_top_in[5];
// ----- Local connection due to Wire 20 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_bottom_out[6] = chany_top_in[6];
// ----- Local connection due to Wire 21 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_bottom_out[7] = chany_top_in[7];
// ----- Local connection due to Wire 22 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_bottom_out[8] = chany_top_in[8];
// ----- Local connection due to Wire 23 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_bottom_out[9] = chany_top_in[9];
// ----- Local connection due to Wire 24 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_bottom_out[10] = chany_top_in[10];
// ----- Local connection due to Wire 25 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_bottom_out[11] = chany_top_in[11];
// ----- Local connection due to Wire 26 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_bottom_out[12] = chany_top_in[12];
// ----- Local connection due to Wire 27 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_bottom_out[13] = chany_top_in[13];
// ----- END Local short connections -----
// ----- BEGIN Local output short connections -----
// ----- END Local output short connections -----

	mux_tree_tapbuf_size10 mux_left_ipin_0 (
		.in({chany_bottom_in[0], chany_top_in[0], chany_bottom_in[2], chany_top_in[2], chany_bottom_in[3], chany_top_in[3], chany_bottom_in[8], chany_top_in[8], chany_bottom_in[13], chany_top_in[13]}),
		.sram(mux_tree_tapbuf_size10_0_sram[0:3]),
		.sram_inv(mux_left_ipin_0_undriven_sram_inv[0:3]),
		.out(right_grid_left_width_0_height_0_subtile_0__pin_outpad_0_));

	mux_tree_tapbuf_size10 mux_right_ipin_0 (
		.in({chany_bottom_in[1], chany_top_in[1], chany_bottom_in[2], chany_top_in[2], chany_bottom_in[3], chany_top_in[3], chany_bottom_in[4], chany_top_in[4], chany_bottom_in[9], chany_top_in[9]}),
		.sram(mux_tree_tapbuf_size10_1_sram[0:3]),
		.sram_inv(mux_right_ipin_0_undriven_sram_inv[0:3]),
		.out(left_grid_right_width_0_height_0_subtile_0__pin_I4_0_));

	mux_tree_tapbuf_size10 mux_right_ipin_1 (
		.in({chany_bottom_in[0], chany_top_in[0], chany_bottom_in[2], chany_top_in[2], chany_bottom_in[4], chany_top_in[4], chany_bottom_in[5], chany_top_in[5], chany_bottom_in[10], chany_top_in[10]}),
		.sram(mux_tree_tapbuf_size10_2_sram[0:3]),
		.sram_inv(mux_right_ipin_1_undriven_sram_inv[0:3]),
		.out(left_grid_right_width_0_height_0_subtile_0__pin_I4_1_));

	mux_tree_tapbuf_size10 mux_right_ipin_3 (
		.in({chany_bottom_in[0], chany_top_in[0], chany_bottom_in[2], chany_top_in[2], chany_bottom_in[6], chany_top_in[6], chany_bottom_in[7], chany_top_in[7], chany_bottom_in[12], chany_top_in[12]}),
		.sram(mux_tree_tapbuf_size10_3_sram[0:3]),
		.sram_inv(mux_right_ipin_3_undriven_sram_inv[0:3]),
		.out(left_grid_right_width_0_height_0_subtile_0__pin_I4i_0_));

	mux_tree_tapbuf_size10 mux_right_ipin_4 (
		.in({chany_bottom_in[1], chany_top_in[1], chany_bottom_in[2], chany_top_in[2], chany_bottom_in[7], chany_top_in[7], chany_bottom_in[8], chany_top_in[8], chany_bottom_in[13], chany_top_in[13]}),
		.sram(mux_tree_tapbuf_size10_4_sram[0:3]),
		.sram_inv(mux_right_ipin_4_undriven_sram_inv[0:3]),
		.out(left_grid_right_width_0_height_0_subtile_0__pin_I5_0_));

	mux_tree_tapbuf_size10 mux_right_ipin_5 (
		.in({chany_bottom_in[0], chany_top_in[0], chany_bottom_in[2], chany_top_in[2], chany_bottom_in[3], chany_top_in[3], chany_bottom_in[8], chany_top_in[8], chany_bottom_in[9], chany_top_in[9]}),
		.sram(mux_tree_tapbuf_size10_5_sram[0:3]),
		.sram_inv(mux_right_ipin_5_undriven_sram_inv[0:3]),
		.out(left_grid_right_width_0_height_0_subtile_0__pin_I5_1_));

	mux_tree_tapbuf_size10 mux_right_ipin_7 (
		.in({chany_bottom_in[0], chany_top_in[0], chany_bottom_in[2], chany_top_in[2], chany_bottom_in[5], chany_top_in[5], chany_bottom_in[10], chany_top_in[10], chany_bottom_in[11], chany_top_in[11]}),
		.sram(mux_tree_tapbuf_size10_6_sram[0:3]),
		.sram_inv(mux_right_ipin_7_undriven_sram_inv[0:3]),
		.out(left_grid_right_width_0_height_0_subtile_0__pin_I5i_0_));

	mux_tree_tapbuf_size10 mux_right_ipin_8 (
		.in({chany_bottom_in[1], chany_top_in[1], chany_bottom_in[2], chany_top_in[2], chany_bottom_in[6], chany_top_in[6], chany_bottom_in[11], chany_top_in[11], chany_bottom_in[12], chany_top_in[12]}),
		.sram(mux_tree_tapbuf_size10_7_sram[0:3]),
		.sram_inv(mux_right_ipin_8_undriven_sram_inv[0:3]),
		.out(left_grid_right_width_0_height_0_subtile_0__pin_I6_0_));

	mux_tree_tapbuf_size10 mux_right_ipin_9 (
		.in({chany_bottom_in[0], chany_top_in[0], chany_bottom_in[2], chany_top_in[2], chany_bottom_in[7], chany_top_in[7], chany_bottom_in[12], chany_top_in[12], chany_bottom_in[13], chany_top_in[13]}),
		.sram(mux_tree_tapbuf_size10_8_sram[0:3]),
		.sram_inv(mux_right_ipin_9_undriven_sram_inv[0:3]),
		.out(left_grid_right_width_0_height_0_subtile_0__pin_I6_1_));

	mux_tree_tapbuf_size10 mux_right_ipin_11 (
		.in({chany_bottom_in[0], chany_top_in[0], chany_bottom_in[2], chany_top_in[2], chany_bottom_in[3], chany_top_in[3], chany_bottom_in[4], chany_top_in[4], chany_bottom_in[9], chany_top_in[9]}),
		.sram(mux_tree_tapbuf_size10_9_sram[0:3]),
		.sram_inv(mux_right_ipin_11_undriven_sram_inv[0:3]),
		.out(left_grid_right_width_0_height_0_subtile_0__pin_I6i_0_));

	mux_tree_tapbuf_size10 mux_right_ipin_12 (
		.in({chany_bottom_in[1], chany_top_in[1], chany_bottom_in[2], chany_top_in[2], chany_bottom_in[4], chany_top_in[4], chany_bottom_in[5], chany_top_in[5], chany_bottom_in[10], chany_top_in[10]}),
		.sram(mux_tree_tapbuf_size10_10_sram[0:3]),
		.sram_inv(mux_right_ipin_12_undriven_sram_inv[0:3]),
		.out(left_grid_right_width_0_height_0_subtile_0__pin_I7_0_));

	mux_tree_tapbuf_size10 mux_right_ipin_13 (
		.in({chany_bottom_in[0], chany_top_in[0], chany_bottom_in[2], chany_top_in[2], chany_bottom_in[5], chany_top_in[5], chany_bottom_in[6], chany_top_in[6], chany_bottom_in[11], chany_top_in[11]}),
		.sram(mux_tree_tapbuf_size10_11_sram[0:3]),
		.sram_inv(mux_right_ipin_13_undriven_sram_inv[0:3]),
		.out(left_grid_right_width_0_height_0_subtile_0__pin_I7_1_));

	mux_tree_tapbuf_size10 mux_right_ipin_15 (
		.in({chany_bottom_in[0], chany_top_in[0], chany_bottom_in[2], chany_top_in[2], chany_bottom_in[7], chany_top_in[7], chany_bottom_in[8], chany_top_in[8], chany_bottom_in[13], chany_top_in[13]}),
		.sram(mux_tree_tapbuf_size10_12_sram[0:3]),
		.sram_inv(mux_right_ipin_15_undriven_sram_inv[0:3]),
		.out(left_grid_right_width_0_height_0_subtile_0__pin_I7i_0_));

	mux_tree_tapbuf_size10_mem mem_left_ipin_0 (
		.prog_clk(prog_clk),
		.ccff_head(ccff_head),
		.ccff_tail(mux_tree_tapbuf_size10_mem_0_ccff_tail),
		.mem_out(mux_tree_tapbuf_size10_0_sram[0:3]));

	mux_tree_tapbuf_size10_mem mem_right_ipin_0 (
		.prog_clk(prog_clk),
		.ccff_head(mux_tree_tapbuf_size10_mem_0_ccff_tail),
		.ccff_tail(mux_tree_tapbuf_size10_mem_1_ccff_tail),
		.mem_out(mux_tree_tapbuf_size10_1_sram[0:3]));

	mux_tree_tapbuf_size10_mem mem_right_ipin_1 (
		.prog_clk(prog_clk),
		.ccff_head(mux_tree_tapbuf_size10_mem_1_ccff_tail),
		.ccff_tail(mux_tree_tapbuf_size10_mem_2_ccff_tail),
		.mem_out(mux_tree_tapbuf_size10_2_sram[0:3]));

	mux_tree_tapbuf_size10_mem mem_right_ipin_3 (
		.prog_clk(prog_clk),
		.ccff_head(mux_tree_tapbuf_size6_mem_0_ccff_tail),
		.ccff_tail(mux_tree_tapbuf_size10_mem_3_ccff_tail),
		.mem_out(mux_tree_tapbuf_size10_3_sram[0:3]));

	mux_tree_tapbuf_size10_mem mem_right_ipin_4 (
		.prog_clk(prog_clk),
		.ccff_head(mux_tree_tapbuf_size10_mem_3_ccff_tail),
		.ccff_tail(mux_tree_tapbuf_size10_mem_4_ccff_tail),
		.mem_out(mux_tree_tapbuf_size10_4_sram[0:3]));

	mux_tree_tapbuf_size10_mem mem_right_ipin_5 (
		.prog_clk(prog_clk),
		.ccff_head(mux_tree_tapbuf_size10_mem_4_ccff_tail),
		.ccff_tail(mux_tree_tapbuf_size10_mem_5_ccff_tail),
		.mem_out(mux_tree_tapbuf_size10_5_sram[0:3]));

	mux_tree_tapbuf_size10_mem mem_right_ipin_7 (
		.prog_clk(prog_clk),
		.ccff_head(mux_tree_tapbuf_size6_mem_1_ccff_tail),
		.ccff_tail(mux_tree_tapbuf_size10_mem_6_ccff_tail),
		.mem_out(mux_tree_tapbuf_size10_6_sram[0:3]));

	mux_tree_tapbuf_size10_mem mem_right_ipin_8 (
		.prog_clk(prog_clk),
		.ccff_head(mux_tree_tapbuf_size10_mem_6_ccff_tail),
		.ccff_tail(mux_tree_tapbuf_size10_mem_7_ccff_tail),
		.mem_out(mux_tree_tapbuf_size10_7_sram[0:3]));

	mux_tree_tapbuf_size10_mem mem_right_ipin_9 (
		.prog_clk(prog_clk),
		.ccff_head(mux_tree_tapbuf_size10_mem_7_ccff_tail),
		.ccff_tail(mux_tree_tapbuf_size10_mem_8_ccff_tail),
		.mem_out(mux_tree_tapbuf_size10_8_sram[0:3]));

	mux_tree_tapbuf_size10_mem mem_right_ipin_11 (
		.prog_clk(prog_clk),
		.ccff_head(mux_tree_tapbuf_size6_mem_2_ccff_tail),
		.ccff_tail(mux_tree_tapbuf_size10_mem_9_ccff_tail),
		.mem_out(mux_tree_tapbuf_size10_9_sram[0:3]));

	mux_tree_tapbuf_size10_mem mem_right_ipin_12 (
		.prog_clk(prog_clk),
		.ccff_head(mux_tree_tapbuf_size10_mem_9_ccff_tail),
		.ccff_tail(mux_tree_tapbuf_size10_mem_10_ccff_tail),
		.mem_out(mux_tree_tapbuf_size10_10_sram[0:3]));

	mux_tree_tapbuf_size10_mem mem_right_ipin_13 (
		.prog_clk(prog_clk),
		.ccff_head(mux_tree_tapbuf_size10_mem_10_ccff_tail),
		.ccff_tail(mux_tree_tapbuf_size10_mem_11_ccff_tail),
		.mem_out(mux_tree_tapbuf_size10_11_sram[0:3]));

	mux_tree_tapbuf_size10_mem mem_right_ipin_15 (
		.prog_clk(prog_clk),
		.ccff_head(mux_tree_tapbuf_size6_mem_3_ccff_tail),
		.ccff_tail(ccff_tail),
		.mem_out(mux_tree_tapbuf_size10_12_sram[0:3]));

	mux_tree_tapbuf_size6 mux_right_ipin_2 (
		.in({chany_bottom_in[1], chany_top_in[1], chany_bottom_in[2], chany_top_in[2], chany_bottom_in[6], chany_top_in[6]}),
		.sram(mux_tree_tapbuf_size6_0_sram[0:2]),
		.sram_inv(mux_right_ipin_2_undriven_sram_inv[0:2]),
		.out(left_grid_right_width_0_height_0_subtile_0__pin_I4_2_));

	mux_tree_tapbuf_size6 mux_right_ipin_6 (
		.in({chany_bottom_in[1], chany_top_in[1], chany_bottom_in[2], chany_top_in[2], chany_bottom_in[10], chany_top_in[10]}),
		.sram(mux_tree_tapbuf_size6_1_sram[0:2]),
		.sram_inv(mux_right_ipin_6_undriven_sram_inv[0:2]),
		.out(left_grid_right_width_0_height_0_subtile_0__pin_I5_2_));

	mux_tree_tapbuf_size6 mux_right_ipin_10 (
		.in({chany_bottom_in[1], chany_top_in[1], chany_bottom_in[2], chany_top_in[2], chany_bottom_in[3], chany_top_in[3]}),
		.sram(mux_tree_tapbuf_size6_2_sram[0:2]),
		.sram_inv(mux_right_ipin_10_undriven_sram_inv[0:2]),
		.out(left_grid_right_width_0_height_0_subtile_0__pin_I6_2_));

	mux_tree_tapbuf_size6 mux_right_ipin_14 (
		.in({chany_bottom_in[1], chany_top_in[1], chany_bottom_in[2], chany_top_in[2], chany_bottom_in[7], chany_top_in[7]}),
		.sram(mux_tree_tapbuf_size6_3_sram[0:2]),
		.sram_inv(mux_right_ipin_14_undriven_sram_inv[0:2]),
		.out(left_grid_right_width_0_height_0_subtile_0__pin_I7_2_));

	mux_tree_tapbuf_size6_mem mem_right_ipin_2 (
		.prog_clk(prog_clk),
		.ccff_head(mux_tree_tapbuf_size10_mem_2_ccff_tail),
		.ccff_tail(mux_tree_tapbuf_size6_mem_0_ccff_tail),
		.mem_out(mux_tree_tapbuf_size6_0_sram[0:2]));

	mux_tree_tapbuf_size6_mem mem_right_ipin_6 (
		.prog_clk(prog_clk),
		.ccff_head(mux_tree_tapbuf_size10_mem_5_ccff_tail),
		.ccff_tail(mux_tree_tapbuf_size6_mem_1_ccff_tail),
		.mem_out(mux_tree_tapbuf_size6_1_sram[0:2]));

	mux_tree_tapbuf_size6_mem mem_right_ipin_10 (
		.prog_clk(prog_clk),
		.ccff_head(mux_tree_tapbuf_size10_mem_8_ccff_tail),
		.ccff_tail(mux_tree_tapbuf_size6_mem_2_ccff_tail),
		.mem_out(mux_tree_tapbuf_size6_2_sram[0:2]));

	mux_tree_tapbuf_size6_mem mem_right_ipin_14 (
		.prog_clk(prog_clk),
		.ccff_head(mux_tree_tapbuf_size10_mem_11_ccff_tail),
		.ccff_tail(mux_tree_tapbuf_size6_mem_3_ccff_tail),
		.mem_out(mux_tree_tapbuf_size6_3_sram[0:2]));

endmodule
// ----- END Verilog module for cby_5__1_ -----

//----- Default net type -----
//`default_nettype none




