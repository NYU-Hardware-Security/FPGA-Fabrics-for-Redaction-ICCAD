/*
`ifndef SKY130_FD_SC_HD__OR2_FUNCTIONAL_V
`define SKY130_FD_SC_HD__OR2_FUNCTIONAL_V

`timescale 1ns / 1ps
`default_nettype none
*/




module sky130_fd_sc_hd__or2_1(
	X,
	A,
	B);
/*
output X;
input A;
input B;

or or0(X,A,B);
*/

// Module ports
    output X;
    input  A;
    input  B;

    // Local signals
    wire or0_out_X;

    //  Name  Output     Other arguments
    or  or0  (or0_out_X, B, A           );
    buf buf0 (X        , or0_out_X      );

endmodule

/*
`default_nettype wire
`endif  // SKY130_FD_SC_HD__OR2_FUNCTIONAL_V
*/
