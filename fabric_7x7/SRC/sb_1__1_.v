//-------------------------------------------
//	FPGA Synthesizable Verilog Netlist
//	Description: Verilog modules for Unique Switch Blocks[1][1]
//	Author: Xifan TANG
//	Organization: University of Utah
//	Date: Wed May 26 01:10:41 2021
//-------------------------------------------
//----- Time scale -----
`timescale 1ns / 1ps

//----- Default net type -----
//`default_nettype none

// ----- Verilog module for sb_1__1_ -----
module sb_1__1_(prog_clk,
                chany_top_in,
                top_left_grid_right_width_0_height_0_subtile_0__pin_O_8_,
                top_left_grid_right_width_0_height_0_subtile_0__pin_O_9_,
                top_left_grid_right_width_0_height_0_subtile_0__pin_O_10_,
                top_left_grid_right_width_0_height_0_subtile_0__pin_O_11_,
                top_left_grid_right_width_0_height_0_subtile_0__pin_O_12_,
                top_left_grid_right_width_0_height_0_subtile_0__pin_O_13_,
                top_left_grid_right_width_0_height_0_subtile_0__pin_O_14_,
                top_left_grid_right_width_0_height_0_subtile_0__pin_O_15_,
                chanx_right_in,
                right_bottom_grid_top_width_0_height_0_subtile_0__pin_O_0_,
                right_bottom_grid_top_width_0_height_0_subtile_0__pin_O_1_,
                right_bottom_grid_top_width_0_height_0_subtile_0__pin_O_2_,
                right_bottom_grid_top_width_0_height_0_subtile_0__pin_O_3_,
                right_bottom_grid_top_width_0_height_0_subtile_0__pin_O_4_,
                right_bottom_grid_top_width_0_height_0_subtile_0__pin_O_5_,
                right_bottom_grid_top_width_0_height_0_subtile_0__pin_O_6_,
                right_bottom_grid_top_width_0_height_0_subtile_0__pin_O_7_,
                chany_bottom_in,
                bottom_left_grid_right_width_0_height_0_subtile_0__pin_O_8_,
                bottom_left_grid_right_width_0_height_0_subtile_0__pin_O_9_,
                bottom_left_grid_right_width_0_height_0_subtile_0__pin_O_10_,
                bottom_left_grid_right_width_0_height_0_subtile_0__pin_O_11_,
                bottom_left_grid_right_width_0_height_0_subtile_0__pin_O_12_,
                bottom_left_grid_right_width_0_height_0_subtile_0__pin_O_13_,
                bottom_left_grid_right_width_0_height_0_subtile_0__pin_O_14_,
                bottom_left_grid_right_width_0_height_0_subtile_0__pin_O_15_,
                chanx_left_in,
                left_bottom_grid_top_width_0_height_0_subtile_0__pin_O_0_,
                left_bottom_grid_top_width_0_height_0_subtile_0__pin_O_1_,
                left_bottom_grid_top_width_0_height_0_subtile_0__pin_O_2_,
                left_bottom_grid_top_width_0_height_0_subtile_0__pin_O_3_,
                left_bottom_grid_top_width_0_height_0_subtile_0__pin_O_4_,
                left_bottom_grid_top_width_0_height_0_subtile_0__pin_O_5_,
                left_bottom_grid_top_width_0_height_0_subtile_0__pin_O_6_,
                left_bottom_grid_top_width_0_height_0_subtile_0__pin_O_7_,
                ccff_head,
                chany_top_out,
                chanx_right_out,
                chany_bottom_out,
                chanx_left_out,
                ccff_tail);
//----- GLOBAL PORTS -----
input [0:0] prog_clk;
//----- INPUT PORTS -----
input [0:13] chany_top_in;
//----- INPUT PORTS -----
input [0:0] top_left_grid_right_width_0_height_0_subtile_0__pin_O_8_;
//----- INPUT PORTS -----
input [0:0] top_left_grid_right_width_0_height_0_subtile_0__pin_O_9_;
//----- INPUT PORTS -----
input [0:0] top_left_grid_right_width_0_height_0_subtile_0__pin_O_10_;
//----- INPUT PORTS -----
input [0:0] top_left_grid_right_width_0_height_0_subtile_0__pin_O_11_;
//----- INPUT PORTS -----
input [0:0] top_left_grid_right_width_0_height_0_subtile_0__pin_O_12_;
//----- INPUT PORTS -----
input [0:0] top_left_grid_right_width_0_height_0_subtile_0__pin_O_13_;
//----- INPUT PORTS -----
input [0:0] top_left_grid_right_width_0_height_0_subtile_0__pin_O_14_;
//----- INPUT PORTS -----
input [0:0] top_left_grid_right_width_0_height_0_subtile_0__pin_O_15_;
//----- INPUT PORTS -----
input [0:13] chanx_right_in;
//----- INPUT PORTS -----
input [0:0] right_bottom_grid_top_width_0_height_0_subtile_0__pin_O_0_;
//----- INPUT PORTS -----
input [0:0] right_bottom_grid_top_width_0_height_0_subtile_0__pin_O_1_;
//----- INPUT PORTS -----
input [0:0] right_bottom_grid_top_width_0_height_0_subtile_0__pin_O_2_;
//----- INPUT PORTS -----
input [0:0] right_bottom_grid_top_width_0_height_0_subtile_0__pin_O_3_;
//----- INPUT PORTS -----
input [0:0] right_bottom_grid_top_width_0_height_0_subtile_0__pin_O_4_;
//----- INPUT PORTS -----
input [0:0] right_bottom_grid_top_width_0_height_0_subtile_0__pin_O_5_;
//----- INPUT PORTS -----
input [0:0] right_bottom_grid_top_width_0_height_0_subtile_0__pin_O_6_;
//----- INPUT PORTS -----
input [0:0] right_bottom_grid_top_width_0_height_0_subtile_0__pin_O_7_;
//----- INPUT PORTS -----
input [0:13] chany_bottom_in;
//----- INPUT PORTS -----
input [0:0] bottom_left_grid_right_width_0_height_0_subtile_0__pin_O_8_;
//----- INPUT PORTS -----
input [0:0] bottom_left_grid_right_width_0_height_0_subtile_0__pin_O_9_;
//----- INPUT PORTS -----
input [0:0] bottom_left_grid_right_width_0_height_0_subtile_0__pin_O_10_;
//----- INPUT PORTS -----
input [0:0] bottom_left_grid_right_width_0_height_0_subtile_0__pin_O_11_;
//----- INPUT PORTS -----
input [0:0] bottom_left_grid_right_width_0_height_0_subtile_0__pin_O_12_;
//----- INPUT PORTS -----
input [0:0] bottom_left_grid_right_width_0_height_0_subtile_0__pin_O_13_;
//----- INPUT PORTS -----
input [0:0] bottom_left_grid_right_width_0_height_0_subtile_0__pin_O_14_;
//----- INPUT PORTS -----
input [0:0] bottom_left_grid_right_width_0_height_0_subtile_0__pin_O_15_;
//----- INPUT PORTS -----
input [0:13] chanx_left_in;
//----- INPUT PORTS -----
input [0:0] left_bottom_grid_top_width_0_height_0_subtile_0__pin_O_0_;
//----- INPUT PORTS -----
input [0:0] left_bottom_grid_top_width_0_height_0_subtile_0__pin_O_1_;
//----- INPUT PORTS -----
input [0:0] left_bottom_grid_top_width_0_height_0_subtile_0__pin_O_2_;
//----- INPUT PORTS -----
input [0:0] left_bottom_grid_top_width_0_height_0_subtile_0__pin_O_3_;
//----- INPUT PORTS -----
input [0:0] left_bottom_grid_top_width_0_height_0_subtile_0__pin_O_4_;
//----- INPUT PORTS -----
input [0:0] left_bottom_grid_top_width_0_height_0_subtile_0__pin_O_5_;
//----- INPUT PORTS -----
input [0:0] left_bottom_grid_top_width_0_height_0_subtile_0__pin_O_6_;
//----- INPUT PORTS -----
input [0:0] left_bottom_grid_top_width_0_height_0_subtile_0__pin_O_7_;
//----- INPUT PORTS -----
input [0:0] ccff_head;
//----- OUTPUT PORTS -----
output [0:13] chany_top_out;
//----- OUTPUT PORTS -----
output [0:13] chanx_right_out;
//----- OUTPUT PORTS -----
output [0:13] chany_bottom_out;
//----- OUTPUT PORTS -----
output [0:13] chanx_left_out;
//----- OUTPUT PORTS -----
output [0:0] ccff_tail;

//----- BEGIN wire-connection ports -----
//----- END wire-connection ports -----


//----- BEGIN Registered ports -----
//----- END Registered ports -----


wire [0:3] mux_bottom_track_15_undriven_sram_inv;
wire [0:3] mux_bottom_track_1_undriven_sram_inv;
wire [0:2] mux_bottom_track_23_undriven_sram_inv;
wire [0:3] mux_bottom_track_3_undriven_sram_inv;
wire [0:3] mux_bottom_track_5_undriven_sram_inv;
wire [0:3] mux_bottom_track_7_undriven_sram_inv;
wire [0:3] mux_left_track_15_undriven_sram_inv;
wire [0:3] mux_left_track_1_undriven_sram_inv;
wire [0:2] mux_left_track_23_undriven_sram_inv;
wire [0:3] mux_left_track_3_undriven_sram_inv;
wire [0:3] mux_left_track_5_undriven_sram_inv;
wire [0:3] mux_left_track_7_undriven_sram_inv;
wire [0:3] mux_right_track_0_undriven_sram_inv;
wire [0:3] mux_right_track_14_undriven_sram_inv;
wire [0:2] mux_right_track_22_undriven_sram_inv;
wire [0:3] mux_right_track_2_undriven_sram_inv;
wire [0:3] mux_right_track_4_undriven_sram_inv;
wire [0:3] mux_right_track_6_undriven_sram_inv;
wire [0:3] mux_top_track_0_undriven_sram_inv;
wire [0:3] mux_top_track_14_undriven_sram_inv;
wire [0:2] mux_top_track_22_undriven_sram_inv;
wire [0:3] mux_top_track_2_undriven_sram_inv;
wire [0:3] mux_top_track_4_undriven_sram_inv;
wire [0:3] mux_top_track_6_undriven_sram_inv;
wire [0:3] mux_tree_tapbuf_size12_0_sram;
wire [0:3] mux_tree_tapbuf_size12_1_sram;
wire [0:3] mux_tree_tapbuf_size12_2_sram;
wire [0:3] mux_tree_tapbuf_size12_3_sram;
wire [0:3] mux_tree_tapbuf_size12_4_sram;
wire [0:3] mux_tree_tapbuf_size12_5_sram;
wire [0:3] mux_tree_tapbuf_size12_6_sram;
wire [0:3] mux_tree_tapbuf_size12_7_sram;
wire [0:0] mux_tree_tapbuf_size12_mem_0_ccff_tail;
wire [0:0] mux_tree_tapbuf_size12_mem_1_ccff_tail;
wire [0:0] mux_tree_tapbuf_size12_mem_2_ccff_tail;
wire [0:0] mux_tree_tapbuf_size12_mem_3_ccff_tail;
wire [0:0] mux_tree_tapbuf_size12_mem_4_ccff_tail;
wire [0:0] mux_tree_tapbuf_size12_mem_5_ccff_tail;
wire [0:0] mux_tree_tapbuf_size12_mem_6_ccff_tail;
wire [0:0] mux_tree_tapbuf_size12_mem_7_ccff_tail;
wire [0:3] mux_tree_tapbuf_size13_0_sram;
wire [0:3] mux_tree_tapbuf_size13_1_sram;
wire [0:3] mux_tree_tapbuf_size13_2_sram;
wire [0:3] mux_tree_tapbuf_size13_3_sram;
wire [0:0] mux_tree_tapbuf_size13_mem_0_ccff_tail;
wire [0:0] mux_tree_tapbuf_size13_mem_1_ccff_tail;
wire [0:0] mux_tree_tapbuf_size13_mem_2_ccff_tail;
wire [0:0] mux_tree_tapbuf_size13_mem_3_ccff_tail;
wire [0:2] mux_tree_tapbuf_size7_0_sram;
wire [0:2] mux_tree_tapbuf_size7_1_sram;
wire [0:2] mux_tree_tapbuf_size7_2_sram;
wire [0:2] mux_tree_tapbuf_size7_3_sram;
wire [0:0] mux_tree_tapbuf_size7_mem_0_ccff_tail;
wire [0:0] mux_tree_tapbuf_size7_mem_1_ccff_tail;
wire [0:0] mux_tree_tapbuf_size7_mem_2_ccff_tail;
wire [0:3] mux_tree_tapbuf_size8_0_sram;
wire [0:3] mux_tree_tapbuf_size8_1_sram;
wire [0:3] mux_tree_tapbuf_size8_2_sram;
wire [0:3] mux_tree_tapbuf_size8_3_sram;
wire [0:3] mux_tree_tapbuf_size8_4_sram;
wire [0:3] mux_tree_tapbuf_size8_5_sram;
wire [0:3] mux_tree_tapbuf_size8_6_sram;
wire [0:3] mux_tree_tapbuf_size8_7_sram;
wire [0:0] mux_tree_tapbuf_size8_mem_0_ccff_tail;
wire [0:0] mux_tree_tapbuf_size8_mem_1_ccff_tail;
wire [0:0] mux_tree_tapbuf_size8_mem_2_ccff_tail;
wire [0:0] mux_tree_tapbuf_size8_mem_3_ccff_tail;
wire [0:0] mux_tree_tapbuf_size8_mem_4_ccff_tail;
wire [0:0] mux_tree_tapbuf_size8_mem_5_ccff_tail;
wire [0:0] mux_tree_tapbuf_size8_mem_6_ccff_tail;
wire [0:0] mux_tree_tapbuf_size8_mem_7_ccff_tail;

// ----- BEGIN Local short connections -----
// ----- Local connection due to Wire 3 -----
// ----- Net source id 0 -----
// ----- Net sink id 2 -----
	assign chany_bottom_out[4] = chany_top_in[3];
// ----- Local connection due to Wire 4 -----
// ----- Net source id 0 -----
// ----- Net sink id 2 -----
	assign chany_bottom_out[5] = chany_top_in[4];
// ----- Local connection due to Wire 5 -----
// ----- Net source id 0 -----
// ----- Net sink id 2 -----
	assign chany_bottom_out[6] = chany_top_in[5];
// ----- Local connection due to Wire 7 -----
// ----- Net source id 0 -----
// ----- Net sink id 2 -----
	assign chany_bottom_out[8] = chany_top_in[7];
// ----- Local connection due to Wire 8 -----
// ----- Net source id 0 -----
// ----- Net sink id 2 -----
	assign chany_bottom_out[9] = chany_top_in[8];
// ----- Local connection due to Wire 9 -----
// ----- Net source id 0 -----
// ----- Net sink id 1 -----
	assign chany_bottom_out[10] = chany_top_in[9];
// ----- Local connection due to Wire 11 -----
// ----- Net source id 0 -----
// ----- Net sink id 2 -----
	assign chany_bottom_out[12] = chany_top_in[11];
// ----- Local connection due to Wire 12 -----
// ----- Net source id 0 -----
// ----- Net sink id 2 -----
	assign chany_bottom_out[13] = chany_top_in[12];
// ----- Local connection due to Wire 25 -----
// ----- Net source id 0 -----
// ----- Net sink id 3 -----
	assign chanx_left_out[4] = chanx_right_in[3];
// ----- Local connection due to Wire 26 -----
// ----- Net source id 0 -----
// ----- Net sink id 3 -----
	assign chanx_left_out[5] = chanx_right_in[4];
// ----- Local connection due to Wire 27 -----
// ----- Net source id 0 -----
// ----- Net sink id 3 -----
	assign chanx_left_out[6] = chanx_right_in[5];
// ----- Local connection due to Wire 29 -----
// ----- Net source id 0 -----
// ----- Net sink id 3 -----
	assign chanx_left_out[8] = chanx_right_in[7];
// ----- Local connection due to Wire 30 -----
// ----- Net source id 0 -----
// ----- Net sink id 3 -----
	assign chanx_left_out[9] = chanx_right_in[8];
// ----- Local connection due to Wire 31 -----
// ----- Net source id 0 -----
// ----- Net sink id 2 -----
	assign chanx_left_out[10] = chanx_right_in[9];
// ----- Local connection due to Wire 33 -----
// ----- Net source id 0 -----
// ----- Net sink id 3 -----
	assign chanx_left_out[12] = chanx_right_in[11];
// ----- Local connection due to Wire 34 -----
// ----- Net source id 0 -----
// ----- Net sink id 3 -----
	assign chanx_left_out[13] = chanx_right_in[12];
// ----- Local connection due to Wire 47 -----
// ----- Net source id 0 -----
// ----- Net sink id 1 -----
	assign chany_top_out[4] = chany_bottom_in[3];
// ----- Local connection due to Wire 48 -----
// ----- Net source id 0 -----
// ----- Net sink id 1 -----
	assign chany_top_out[5] = chany_bottom_in[4];
// ----- Local connection due to Wire 49 -----
// ----- Net source id 0 -----
// ----- Net sink id 1 -----
	assign chany_top_out[6] = chany_bottom_in[5];
// ----- Local connection due to Wire 51 -----
// ----- Net source id 0 -----
// ----- Net sink id 1 -----
	assign chany_top_out[8] = chany_bottom_in[7];
// ----- Local connection due to Wire 52 -----
// ----- Net source id 0 -----
// ----- Net sink id 1 -----
	assign chany_top_out[9] = chany_bottom_in[8];
// ----- Local connection due to Wire 53 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_top_out[10] = chany_bottom_in[9];
// ----- Local connection due to Wire 55 -----
// ----- Net source id 0 -----
// ----- Net sink id 1 -----
	assign chany_top_out[12] = chany_bottom_in[11];
// ----- Local connection due to Wire 56 -----
// ----- Net source id 0 -----
// ----- Net sink id 1 -----
	assign chany_top_out[13] = chany_bottom_in[12];
// ----- Local connection due to Wire 69 -----
// ----- Net source id 0 -----
// ----- Net sink id 2 -----
	assign chanx_right_out[4] = chanx_left_in[3];
// ----- Local connection due to Wire 70 -----
// ----- Net source id 0 -----
// ----- Net sink id 2 -----
	assign chanx_right_out[5] = chanx_left_in[4];
// ----- Local connection due to Wire 71 -----
// ----- Net source id 0 -----
// ----- Net sink id 2 -----
	assign chanx_right_out[6] = chanx_left_in[5];
// ----- Local connection due to Wire 73 -----
// ----- Net source id 0 -----
// ----- Net sink id 2 -----
	assign chanx_right_out[8] = chanx_left_in[7];
// ----- Local connection due to Wire 74 -----
// ----- Net source id 0 -----
// ----- Net sink id 2 -----
	assign chanx_right_out[9] = chanx_left_in[8];
// ----- Local connection due to Wire 75 -----
// ----- Net source id 0 -----
// ----- Net sink id 1 -----
	assign chanx_right_out[10] = chanx_left_in[9];
// ----- Local connection due to Wire 77 -----
// ----- Net source id 0 -----
// ----- Net sink id 2 -----
	assign chanx_right_out[12] = chanx_left_in[11];
// ----- Local connection due to Wire 78 -----
// ----- Net source id 0 -----
// ----- Net sink id 2 -----
	assign chanx_right_out[13] = chanx_left_in[12];
// ----- END Local short connections -----
// ----- BEGIN Local output short connections -----
// ----- END Local output short connections -----

	mux_tree_tapbuf_size12 mux_top_track_0 (
		.in({top_left_grid_right_width_0_height_0_subtile_0__pin_O_8_, top_left_grid_right_width_0_height_0_subtile_0__pin_O_10_, top_left_grid_right_width_0_height_0_subtile_0__pin_O_12_, top_left_grid_right_width_0_height_0_subtile_0__pin_O_14_, chanx_right_in[1], chanx_right_in[3], chanx_right_in[11], chany_bottom_in[3], chany_bottom_in[11], chanx_left_in[0], chanx_left_in[3], chanx_left_in[11]}),
		.sram(mux_tree_tapbuf_size12_0_sram[0:3]),
		.sram_inv(mux_top_track_0_undriven_sram_inv[0:3]),
		.out(chany_top_out[0]));

	mux_tree_tapbuf_size12 mux_top_track_2 (
		.in({top_left_grid_right_width_0_height_0_subtile_0__pin_O_9_, top_left_grid_right_width_0_height_0_subtile_0__pin_O_11_, top_left_grid_right_width_0_height_0_subtile_0__pin_O_13_, top_left_grid_right_width_0_height_0_subtile_0__pin_O_15_, chanx_right_in[2], chanx_right_in[4], chanx_right_in[12], chany_bottom_in[4], chany_bottom_in[12], chanx_left_in[4], chanx_left_in[12:13]}),
		.sram(mux_tree_tapbuf_size12_1_sram[0:3]),
		.sram_inv(mux_top_track_2_undriven_sram_inv[0:3]),
		.out(chany_top_out[1]));

	mux_tree_tapbuf_size12 mux_right_track_0 (
		.in({chany_top_in[3], chany_top_in[11], chany_top_in[13], right_bottom_grid_top_width_0_height_0_subtile_0__pin_O_0_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_O_2_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_O_4_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_O_6_, chany_bottom_in[3], chany_bottom_in[10:11], chanx_left_in[3], chanx_left_in[11]}),
		.sram(mux_tree_tapbuf_size12_2_sram[0:3]),
		.sram_inv(mux_right_track_0_undriven_sram_inv[0:3]),
		.out(chanx_right_out[0]));

	mux_tree_tapbuf_size12 mux_right_track_2 (
		.in({chany_top_in[0], chany_top_in[4], chany_top_in[12], right_bottom_grid_top_width_0_height_0_subtile_0__pin_O_1_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_O_3_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_O_5_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_O_7_, chany_bottom_in[4], chany_bottom_in[6], chany_bottom_in[12], chanx_left_in[4], chanx_left_in[12]}),
		.sram(mux_tree_tapbuf_size12_3_sram[0:3]),
		.sram_inv(mux_right_track_2_undriven_sram_inv[0:3]),
		.out(chanx_right_out[1]));

	mux_tree_tapbuf_size12 mux_bottom_track_1 (
		.in({chany_top_in[3], chany_top_in[11], chanx_right_in[3], chanx_right_in[10:11], bottom_left_grid_right_width_0_height_0_subtile_0__pin_O_8_, bottom_left_grid_right_width_0_height_0_subtile_0__pin_O_10_, bottom_left_grid_right_width_0_height_0_subtile_0__pin_O_12_, bottom_left_grid_right_width_0_height_0_subtile_0__pin_O_14_, chanx_left_in[1], chanx_left_in[3], chanx_left_in[11]}),
		.sram(mux_tree_tapbuf_size12_4_sram[0:3]),
		.sram_inv(mux_bottom_track_1_undriven_sram_inv[0:3]),
		.out(chany_bottom_out[0]));

	mux_tree_tapbuf_size12 mux_bottom_track_3 (
		.in({chany_top_in[4], chany_top_in[12], chanx_right_in[4], chanx_right_in[6], chanx_right_in[12], bottom_left_grid_right_width_0_height_0_subtile_0__pin_O_9_, bottom_left_grid_right_width_0_height_0_subtile_0__pin_O_11_, bottom_left_grid_right_width_0_height_0_subtile_0__pin_O_13_, bottom_left_grid_right_width_0_height_0_subtile_0__pin_O_15_, chanx_left_in[2], chanx_left_in[4], chanx_left_in[12]}),
		.sram(mux_tree_tapbuf_size12_5_sram[0:3]),
		.sram_inv(mux_bottom_track_3_undriven_sram_inv[0:3]),
		.out(chany_bottom_out[1]));

	mux_tree_tapbuf_size12 mux_left_track_1 (
		.in({chany_top_in[0], chany_top_in[3], chany_top_in[11], chanx_right_in[3], chanx_right_in[11], chany_bottom_in[3], chany_bottom_in[11], chany_bottom_in[13], left_bottom_grid_top_width_0_height_0_subtile_0__pin_O_0_, left_bottom_grid_top_width_0_height_0_subtile_0__pin_O_2_, left_bottom_grid_top_width_0_height_0_subtile_0__pin_O_4_, left_bottom_grid_top_width_0_height_0_subtile_0__pin_O_6_}),
		.sram(mux_tree_tapbuf_size12_6_sram[0:3]),
		.sram_inv(mux_left_track_1_undriven_sram_inv[0:3]),
		.out(chanx_left_out[0]));

	mux_tree_tapbuf_size12 mux_left_track_3 (
		.in({chany_top_in[4], chany_top_in[12:13], chanx_right_in[4], chanx_right_in[12], chany_bottom_in[0], chany_bottom_in[4], chany_bottom_in[12], left_bottom_grid_top_width_0_height_0_subtile_0__pin_O_1_, left_bottom_grid_top_width_0_height_0_subtile_0__pin_O_3_, left_bottom_grid_top_width_0_height_0_subtile_0__pin_O_5_, left_bottom_grid_top_width_0_height_0_subtile_0__pin_O_7_}),
		.sram(mux_tree_tapbuf_size12_7_sram[0:3]),
		.sram_inv(mux_left_track_3_undriven_sram_inv[0:3]),
		.out(chanx_left_out[1]));

	mux_tree_tapbuf_size12_mem mem_top_track_0 (
		.prog_clk(prog_clk),
		.ccff_head(ccff_head),
		.ccff_tail(mux_tree_tapbuf_size12_mem_0_ccff_tail),
		.mem_out(mux_tree_tapbuf_size12_0_sram[0:3]));

	mux_tree_tapbuf_size12_mem mem_top_track_2 (
		.prog_clk(prog_clk),
		.ccff_head(mux_tree_tapbuf_size12_mem_0_ccff_tail),
		.ccff_tail(mux_tree_tapbuf_size12_mem_1_ccff_tail),
		.mem_out(mux_tree_tapbuf_size12_1_sram[0:3]));

	mux_tree_tapbuf_size12_mem mem_right_track_0 (
		.prog_clk(prog_clk),
		.ccff_head(mux_tree_tapbuf_size7_mem_0_ccff_tail),
		.ccff_tail(mux_tree_tapbuf_size12_mem_2_ccff_tail),
		.mem_out(mux_tree_tapbuf_size12_2_sram[0:3]));

	mux_tree_tapbuf_size12_mem mem_right_track_2 (
		.prog_clk(prog_clk),
		.ccff_head(mux_tree_tapbuf_size12_mem_2_ccff_tail),
		.ccff_tail(mux_tree_tapbuf_size12_mem_3_ccff_tail),
		.mem_out(mux_tree_tapbuf_size12_3_sram[0:3]));

	mux_tree_tapbuf_size12_mem mem_bottom_track_1 (
		.prog_clk(prog_clk),
		.ccff_head(mux_tree_tapbuf_size7_mem_1_ccff_tail),
		.ccff_tail(mux_tree_tapbuf_size12_mem_4_ccff_tail),
		.mem_out(mux_tree_tapbuf_size12_4_sram[0:3]));

	mux_tree_tapbuf_size12_mem mem_bottom_track_3 (
		.prog_clk(prog_clk),
		.ccff_head(mux_tree_tapbuf_size12_mem_4_ccff_tail),
		.ccff_tail(mux_tree_tapbuf_size12_mem_5_ccff_tail),
		.mem_out(mux_tree_tapbuf_size12_5_sram[0:3]));

	mux_tree_tapbuf_size12_mem mem_left_track_1 (
		.prog_clk(prog_clk),
		.ccff_head(mux_tree_tapbuf_size7_mem_2_ccff_tail),
		.ccff_tail(mux_tree_tapbuf_size12_mem_6_ccff_tail),
		.mem_out(mux_tree_tapbuf_size12_6_sram[0:3]));

	mux_tree_tapbuf_size12_mem mem_left_track_3 (
		.prog_clk(prog_clk),
		.ccff_head(mux_tree_tapbuf_size12_mem_6_ccff_tail),
		.ccff_tail(mux_tree_tapbuf_size12_mem_7_ccff_tail),
		.mem_out(mux_tree_tapbuf_size12_7_sram[0:3]));

	mux_tree_tapbuf_size13 mux_top_track_4 (
		.in({top_left_grid_right_width_0_height_0_subtile_0__pin_O_8_, top_left_grid_right_width_0_height_0_subtile_0__pin_O_9_, top_left_grid_right_width_0_height_0_subtile_0__pin_O_10_, top_left_grid_right_width_0_height_0_subtile_0__pin_O_11_, top_left_grid_right_width_0_height_0_subtile_0__pin_O_12_, top_left_grid_right_width_0_height_0_subtile_0__pin_O_13_, top_left_grid_right_width_0_height_0_subtile_0__pin_O_14_, top_left_grid_right_width_0_height_0_subtile_0__pin_O_15_, chanx_right_in[5:6], chany_bottom_in[5], chanx_left_in[5], chanx_left_in[10]}),
		.sram(mux_tree_tapbuf_size13_0_sram[0:3]),
		.sram_inv(mux_top_track_4_undriven_sram_inv[0:3]),
		.out(chany_top_out[2]));

	mux_tree_tapbuf_size13 mux_right_track_4 (
		.in({chany_top_in[1], chany_top_in[5], right_bottom_grid_top_width_0_height_0_subtile_0__pin_O_0_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_O_1_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_O_2_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_O_3_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_O_4_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_O_5_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_O_6_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_O_7_, chany_bottom_in[2], chany_bottom_in[5], chanx_left_in[5]}),
		.sram(mux_tree_tapbuf_size13_1_sram[0:3]),
		.sram_inv(mux_right_track_4_undriven_sram_inv[0:3]),
		.out(chanx_right_out[2]));

	mux_tree_tapbuf_size13 mux_bottom_track_5 (
		.in({chany_top_in[5], chanx_right_in[2], chanx_right_in[5], bottom_left_grid_right_width_0_height_0_subtile_0__pin_O_8_, bottom_left_grid_right_width_0_height_0_subtile_0__pin_O_9_, bottom_left_grid_right_width_0_height_0_subtile_0__pin_O_10_, bottom_left_grid_right_width_0_height_0_subtile_0__pin_O_11_, bottom_left_grid_right_width_0_height_0_subtile_0__pin_O_12_, bottom_left_grid_right_width_0_height_0_subtile_0__pin_O_13_, bottom_left_grid_right_width_0_height_0_subtile_0__pin_O_14_, bottom_left_grid_right_width_0_height_0_subtile_0__pin_O_15_, chanx_left_in[5:6]}),
		.sram(mux_tree_tapbuf_size13_2_sram[0:3]),
		.sram_inv(mux_bottom_track_5_undriven_sram_inv[0:3]),
		.out(chany_bottom_out[2]));

	mux_tree_tapbuf_size13 mux_left_track_5 (
		.in({chany_top_in[5], chany_top_in[10], chanx_right_in[5], chany_bottom_in[1], chany_bottom_in[5], left_bottom_grid_top_width_0_height_0_subtile_0__pin_O_0_, left_bottom_grid_top_width_0_height_0_subtile_0__pin_O_1_, left_bottom_grid_top_width_0_height_0_subtile_0__pin_O_2_, left_bottom_grid_top_width_0_height_0_subtile_0__pin_O_3_, left_bottom_grid_top_width_0_height_0_subtile_0__pin_O_4_, left_bottom_grid_top_width_0_height_0_subtile_0__pin_O_5_, left_bottom_grid_top_width_0_height_0_subtile_0__pin_O_6_, left_bottom_grid_top_width_0_height_0_subtile_0__pin_O_7_}),
		.sram(mux_tree_tapbuf_size13_3_sram[0:3]),
		.sram_inv(mux_left_track_5_undriven_sram_inv[0:3]),
		.out(chanx_left_out[2]));

	mux_tree_tapbuf_size13_mem mem_top_track_4 (
		.prog_clk(prog_clk),
		.ccff_head(mux_tree_tapbuf_size12_mem_1_ccff_tail),
		.ccff_tail(mux_tree_tapbuf_size13_mem_0_ccff_tail),
		.mem_out(mux_tree_tapbuf_size13_0_sram[0:3]));

	mux_tree_tapbuf_size13_mem mem_right_track_4 (
		.prog_clk(prog_clk),
		.ccff_head(mux_tree_tapbuf_size12_mem_3_ccff_tail),
		.ccff_tail(mux_tree_tapbuf_size13_mem_1_ccff_tail),
		.mem_out(mux_tree_tapbuf_size13_1_sram[0:3]));

	mux_tree_tapbuf_size13_mem mem_bottom_track_5 (
		.prog_clk(prog_clk),
		.ccff_head(mux_tree_tapbuf_size12_mem_5_ccff_tail),
		.ccff_tail(mux_tree_tapbuf_size13_mem_2_ccff_tail),
		.mem_out(mux_tree_tapbuf_size13_2_sram[0:3]));

	mux_tree_tapbuf_size13_mem mem_left_track_5 (
		.prog_clk(prog_clk),
		.ccff_head(mux_tree_tapbuf_size12_mem_7_ccff_tail),
		.ccff_tail(mux_tree_tapbuf_size13_mem_3_ccff_tail),
		.mem_out(mux_tree_tapbuf_size13_3_sram[0:3]));

	mux_tree_tapbuf_size8 mux_top_track_6 (
		.in({top_left_grid_right_width_0_height_0_subtile_0__pin_O_8_, top_left_grid_right_width_0_height_0_subtile_0__pin_O_11_, top_left_grid_right_width_0_height_0_subtile_0__pin_O_14_, chanx_right_in[7], chanx_right_in[10], chany_bottom_in[7], chanx_left_in[6:7]}),
		.sram(mux_tree_tapbuf_size8_0_sram[0:3]),
		.sram_inv(mux_top_track_6_undriven_sram_inv[0:3]),
		.out(chany_top_out[3]));

	mux_tree_tapbuf_size8 mux_top_track_14 (
		.in({top_left_grid_right_width_0_height_0_subtile_0__pin_O_9_, top_left_grid_right_width_0_height_0_subtile_0__pin_O_12_, top_left_grid_right_width_0_height_0_subtile_0__pin_O_15_, chanx_right_in[8], chanx_right_in[13], chany_bottom_in[8], chanx_left_in[2], chanx_left_in[8]}),
		.sram(mux_tree_tapbuf_size8_1_sram[0:3]),
		.sram_inv(mux_top_track_14_undriven_sram_inv[0:3]),
		.out(chany_top_out[7]));

	mux_tree_tapbuf_size8 mux_right_track_6 (
		.in({chany_top_in[2], chany_top_in[7], right_bottom_grid_top_width_0_height_0_subtile_0__pin_O_0_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_O_3_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_O_6_, chany_bottom_in[1], chany_bottom_in[7], chanx_left_in[7]}),
		.sram(mux_tree_tapbuf_size8_2_sram[0:3]),
		.sram_inv(mux_right_track_6_undriven_sram_inv[0:3]),
		.out(chanx_right_out[3]));

	mux_tree_tapbuf_size8 mux_right_track_14 (
		.in({chany_top_in[6], chany_top_in[8], right_bottom_grid_top_width_0_height_0_subtile_0__pin_O_1_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_O_4_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_O_7_, chany_bottom_in[0], chany_bottom_in[8], chanx_left_in[8]}),
		.sram(mux_tree_tapbuf_size8_3_sram[0:3]),
		.sram_inv(mux_right_track_14_undriven_sram_inv[0:3]),
		.out(chanx_right_out[7]));

	mux_tree_tapbuf_size8 mux_bottom_track_7 (
		.in({chany_top_in[7], chanx_right_in[1], chanx_right_in[7], bottom_left_grid_right_width_0_height_0_subtile_0__pin_O_8_, bottom_left_grid_right_width_0_height_0_subtile_0__pin_O_11_, bottom_left_grid_right_width_0_height_0_subtile_0__pin_O_14_, chanx_left_in[7], chanx_left_in[10]}),
		.sram(mux_tree_tapbuf_size8_4_sram[0:3]),
		.sram_inv(mux_bottom_track_7_undriven_sram_inv[0:3]),
		.out(chany_bottom_out[3]));

	mux_tree_tapbuf_size8 mux_bottom_track_15 (
		.in({chany_top_in[8], chanx_right_in[0], chanx_right_in[8], bottom_left_grid_right_width_0_height_0_subtile_0__pin_O_9_, bottom_left_grid_right_width_0_height_0_subtile_0__pin_O_12_, bottom_left_grid_right_width_0_height_0_subtile_0__pin_O_15_, chanx_left_in[8], chanx_left_in[13]}),
		.sram(mux_tree_tapbuf_size8_5_sram[0:3]),
		.sram_inv(mux_bottom_track_15_undriven_sram_inv[0:3]),
		.out(chany_bottom_out[7]));

	mux_tree_tapbuf_size8 mux_left_track_7 (
		.in({chany_top_in[6:7], chanx_right_in[7], chany_bottom_in[2], chany_bottom_in[7], left_bottom_grid_top_width_0_height_0_subtile_0__pin_O_0_, left_bottom_grid_top_width_0_height_0_subtile_0__pin_O_3_, left_bottom_grid_top_width_0_height_0_subtile_0__pin_O_6_}),
		.sram(mux_tree_tapbuf_size8_6_sram[0:3]),
		.sram_inv(mux_left_track_7_undriven_sram_inv[0:3]),
		.out(chanx_left_out[3]));

	mux_tree_tapbuf_size8 mux_left_track_15 (
		.in({chany_top_in[2], chany_top_in[8], chanx_right_in[8], chany_bottom_in[6], chany_bottom_in[8], left_bottom_grid_top_width_0_height_0_subtile_0__pin_O_1_, left_bottom_grid_top_width_0_height_0_subtile_0__pin_O_4_, left_bottom_grid_top_width_0_height_0_subtile_0__pin_O_7_}),
		.sram(mux_tree_tapbuf_size8_7_sram[0:3]),
		.sram_inv(mux_left_track_15_undriven_sram_inv[0:3]),
		.out(chanx_left_out[7]));

	mux_tree_tapbuf_size8_mem mem_top_track_6 (
		.prog_clk(prog_clk),
		.ccff_head(mux_tree_tapbuf_size13_mem_0_ccff_tail),
		.ccff_tail(mux_tree_tapbuf_size8_mem_0_ccff_tail),
		.mem_out(mux_tree_tapbuf_size8_0_sram[0:3]));

	mux_tree_tapbuf_size8_mem mem_top_track_14 (
		.prog_clk(prog_clk),
		.ccff_head(mux_tree_tapbuf_size8_mem_0_ccff_tail),
		.ccff_tail(mux_tree_tapbuf_size8_mem_1_ccff_tail),
		.mem_out(mux_tree_tapbuf_size8_1_sram[0:3]));

	mux_tree_tapbuf_size8_mem mem_right_track_6 (
		.prog_clk(prog_clk),
		.ccff_head(mux_tree_tapbuf_size13_mem_1_ccff_tail),
		.ccff_tail(mux_tree_tapbuf_size8_mem_2_ccff_tail),
		.mem_out(mux_tree_tapbuf_size8_2_sram[0:3]));

	mux_tree_tapbuf_size8_mem mem_right_track_14 (
		.prog_clk(prog_clk),
		.ccff_head(mux_tree_tapbuf_size8_mem_2_ccff_tail),
		.ccff_tail(mux_tree_tapbuf_size8_mem_3_ccff_tail),
		.mem_out(mux_tree_tapbuf_size8_3_sram[0:3]));

	mux_tree_tapbuf_size8_mem mem_bottom_track_7 (
		.prog_clk(prog_clk),
		.ccff_head(mux_tree_tapbuf_size13_mem_2_ccff_tail),
		.ccff_tail(mux_tree_tapbuf_size8_mem_4_ccff_tail),
		.mem_out(mux_tree_tapbuf_size8_4_sram[0:3]));

	mux_tree_tapbuf_size8_mem mem_bottom_track_15 (
		.prog_clk(prog_clk),
		.ccff_head(mux_tree_tapbuf_size8_mem_4_ccff_tail),
		.ccff_tail(mux_tree_tapbuf_size8_mem_5_ccff_tail),
		.mem_out(mux_tree_tapbuf_size8_5_sram[0:3]));

	mux_tree_tapbuf_size8_mem mem_left_track_7 (
		.prog_clk(prog_clk),
		.ccff_head(mux_tree_tapbuf_size13_mem_3_ccff_tail),
		.ccff_tail(mux_tree_tapbuf_size8_mem_6_ccff_tail),
		.mem_out(mux_tree_tapbuf_size8_6_sram[0:3]));

	mux_tree_tapbuf_size8_mem mem_left_track_15 (
		.prog_clk(prog_clk),
		.ccff_head(mux_tree_tapbuf_size8_mem_6_ccff_tail),
		.ccff_tail(mux_tree_tapbuf_size8_mem_7_ccff_tail),
		.mem_out(mux_tree_tapbuf_size8_7_sram[0:3]));

	mux_tree_tapbuf_size7 mux_top_track_22 (
		.in({top_left_grid_right_width_0_height_0_subtile_0__pin_O_10_, top_left_grid_right_width_0_height_0_subtile_0__pin_O_13_, chanx_right_in[0], chanx_right_in[9], chany_bottom_in[9], chanx_left_in[1], chanx_left_in[9]}),
		.sram(mux_tree_tapbuf_size7_0_sram[0:2]),
		.sram_inv(mux_top_track_22_undriven_sram_inv[0:2]),
		.out(chany_top_out[11]));

	mux_tree_tapbuf_size7 mux_right_track_22 (
		.in({chany_top_in[9:10], right_bottom_grid_top_width_0_height_0_subtile_0__pin_O_2_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_O_5_, chany_bottom_in[9], chany_bottom_in[13], chanx_left_in[9]}),
		.sram(mux_tree_tapbuf_size7_1_sram[0:2]),
		.sram_inv(mux_right_track_22_undriven_sram_inv[0:2]),
		.out(chanx_right_out[11]));

	mux_tree_tapbuf_size7 mux_bottom_track_23 (
		.in({chany_top_in[9], chanx_right_in[9], chanx_right_in[13], bottom_left_grid_right_width_0_height_0_subtile_0__pin_O_10_, bottom_left_grid_right_width_0_height_0_subtile_0__pin_O_13_, chanx_left_in[0], chanx_left_in[9]}),
		.sram(mux_tree_tapbuf_size7_2_sram[0:2]),
		.sram_inv(mux_bottom_track_23_undriven_sram_inv[0:2]),
		.out(chany_bottom_out[11]));

	mux_tree_tapbuf_size7 mux_left_track_23 (
		.in({chany_top_in[1], chany_top_in[9], chanx_right_in[9], chany_bottom_in[9:10], left_bottom_grid_top_width_0_height_0_subtile_0__pin_O_2_, left_bottom_grid_top_width_0_height_0_subtile_0__pin_O_5_}),
		.sram(mux_tree_tapbuf_size7_3_sram[0:2]),
		.sram_inv(mux_left_track_23_undriven_sram_inv[0:2]),
		.out(chanx_left_out[11]));

	mux_tree_tapbuf_size7_mem mem_top_track_22 (
		.prog_clk(prog_clk),
		.ccff_head(mux_tree_tapbuf_size8_mem_1_ccff_tail),
		.ccff_tail(mux_tree_tapbuf_size7_mem_0_ccff_tail),
		.mem_out(mux_tree_tapbuf_size7_0_sram[0:2]));

	mux_tree_tapbuf_size7_mem mem_right_track_22 (
		.prog_clk(prog_clk),
		.ccff_head(mux_tree_tapbuf_size8_mem_3_ccff_tail),
		.ccff_tail(mux_tree_tapbuf_size7_mem_1_ccff_tail),
		.mem_out(mux_tree_tapbuf_size7_1_sram[0:2]));

	mux_tree_tapbuf_size7_mem mem_bottom_track_23 (
		.prog_clk(prog_clk),
		.ccff_head(mux_tree_tapbuf_size8_mem_5_ccff_tail),
		.ccff_tail(mux_tree_tapbuf_size7_mem_2_ccff_tail),
		.mem_out(mux_tree_tapbuf_size7_2_sram[0:2]));

	mux_tree_tapbuf_size7_mem mem_left_track_23 (
		.prog_clk(prog_clk),
		.ccff_head(mux_tree_tapbuf_size8_mem_7_ccff_tail),
		.ccff_tail(ccff_tail),
		.mem_out(mux_tree_tapbuf_size7_3_sram[0:2]));

endmodule
// ----- END Verilog module for sb_1__1_ -----

//----- Default net type -----
//`default_nettype none



