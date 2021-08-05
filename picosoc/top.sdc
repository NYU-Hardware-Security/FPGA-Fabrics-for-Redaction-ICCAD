create_clock -name prog_clk[0] -period 1.999999988e-08 -waveform {0 9.999999939e-09} [get_ports {prog_clk[0]}]
##################################################
# Create clock
##################################################
create_clock -name clk -period 1.999999988e-08 -waveform {0 9.999999939e-09} [get_ports {clk}]
