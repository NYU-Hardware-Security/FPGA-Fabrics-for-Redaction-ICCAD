
module sky130_fd_sc_hd__dfxtp_1 (
    Q  ,
    CLK,
    D

);


    output Q  ;
    input  CLK;
    input  D  ;

    reg q_reg;
    wire mux_out;
    assign mux_out = D;
//-------------Code Starts Here---------
always @ ( posedge CLK)
       begin
             q_reg <= mux_out;
       end

assign Q = q_reg;


endmodule

