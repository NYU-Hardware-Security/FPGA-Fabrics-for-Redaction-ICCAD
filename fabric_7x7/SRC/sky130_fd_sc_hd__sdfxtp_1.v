/*
`ifndef SKY130_FD_SC_HD__SDFXTP_FUNCTIONAL_V
`define SKY130_FD_SC_HD__SDFXTP_FUNCTIONAL_V

`timescale 1ns / 1ps
`default_nettype none
*/

/*
module sky130_fd_sc_hd__sdfxtp_1 (
  input D,
  input SCD,
  input SCE,
  input CLK,
  output Q
  
);
*/
module sky130_fd_sc_hd__sdfxtp_1 (
    Q  ,
    CLK,
    D  ,
    SCD,
    SCE
);

    output Q  ;
    input  CLK;
    input  D  ;
    input  SCD;
    input  SCE;

//------------Internal Variables--------
reg q_reg;
wire mux_out;
assign mux_out = (SCE == 1'b1)? SCD : D;
//-------------Code Starts Here---------
always @ ( posedge CLK)
       begin
	     q_reg <= mux_out;
       end
 
assign Q = q_reg;

endmodule

/*
`default_nettype wire
`endif  // SKY130_FD_SC_HD__SDFXTP_FUNCTIONAL_V
*/
