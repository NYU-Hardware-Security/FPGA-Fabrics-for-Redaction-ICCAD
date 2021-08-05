/*
`ifndef SKY130_FD_SC_HD__INV_FUNCTIONAL_V
`define SKY130_FD_SC_HD__INV_FUNCTIONAL_V

`timescale 1ns / 1ps
`default_nettype none
*/


module sky130_fd_sc_hd__inv_2(
	Y,
	A);

/*
output Y;
input A;

wire inv_2_1;
not inv0(inv_2_1,A);
buf buf0(X,inv_2_1);
*/



    // Module ports
    output Y;
    input  A;

    // Local signals
    wire not0_out_Y;

    //  Name  Output      Other arguments
    not not0 (not0_out_Y, A              );
    buf buf0 (Y         , not0_out_Y     );

endmodule

/*
`default_nettype wire
`endif  // SKY130_FD_SC_HD__INV_FUNCTIONAL_V
*/
