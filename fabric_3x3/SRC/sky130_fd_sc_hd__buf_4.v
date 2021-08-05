/*
`ifndef SKY130_FD_SC_HD__BUF_FUNCTIONAL_V
`define SKY130_FD_SC_HD__BUF_FUNCTIONAL_V

`timescale 1ns / 1ps
`default_nettype none
*/
module sky130_fd_sc_hd__buf_4(
	X,
	A);


/*
output X;
input A;

wire buf_4_1;

buf buf0(buf_4_1,A);
buf buf1(X,buf_4_1);
*/

// Module ports
    output X;
    input  A;

    // Local signals
    wire buf0_out_X;

    //  Name  Output      Other arguments
    buf buf0 (buf0_out_X, A              );
    buf buf1 (X         , buf0_out_X     );

endmodule


//`default_nettype wire
//`endif  // SKY130_FD_SC_HD__BUF_FUNCTIONAL_V

