/*

`ifndef SKY130_FD_SC_HD__MUX2_FUNCTIONAL_V
`define SKY130_FD_SC_HD__MUX2_FUNCTIONAL_V

`timescale 1ns / 1ps
`default_nettype none

*/

module sky130_fd_sc_hd__mux2_1(
	X,
	S,
	A1,
	A0);

input S;
input A1;
input A0;
output X;

assign X = (S == 1'b1)? A1:A0;

endmodule

/*
`default_nettype wire
`endif  // SKY130_FD_SC_HD__MUX2_FUNCTIONAL_V
*/
