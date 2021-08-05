module EMBEDDED_IO_HD (
  input SOC_IN,   // Input to drive the inpad signal
  output SOC_OUT, // Output the outpad signal
  output SOC_DIR, // Output the directionality
  output FPGA_IN, // Input data to FPGA
  input FPGA_OUT, // Output data from FPGA
  input FPGA_DIR, // direction control
  input IO_ISOL_N    // Isolation enable signal
);

  wire SOC_DIR_N;
  
  wire or_not;

  not not0(or_not,IO_ISOL_N);
  // Use drive-strength 4 for a high fan-out from SoC components
  sky130_fd_sc_hd__or2_1 ISOL_EN_GATE (.B(or_not),
                                        .A(FPGA_DIR),
                                        .X(SOC_DIR)
                                        );

  // Use drive-strength 4 for a high fan-out from global routing architecture
  sky130_fd_sc_hd__inv_1 INV_SOC_DIR (.A(SOC_DIR), .Y(SOC_DIR_N));
  sky130_fd_sc_hd__buf_4 IN_PROTECT_GATE (
                                        .A(SOC_IN),
                                        .X(FPGA_IN)
                                            );

  // Use drive-strength 4 for a potential high fan-out from SoC components
  sky130_fd_sc_hd__buf_4 OUT_PROTECT_GATE (
                                             .A(FPGA_OUT),
                                             .X(SOC_OUT)
                                             );

endmodule

