#############################################
#	Synopsys Design Constraints (SDC)
#	For FPGA fabric 
#	Description: Clock contraints for PnR
#	Author: Xifan TANG 
#	Organization: University of Utah 
#	Date: Mon May 24 18:19:46 2021
#############################################

##################################################
# Create programmable clock                       
##################################################
create_clock -name prog_clk[0] -period 1.999999988e-08 -waveform {0 9.999999939e-09} [get_ports {prog_clk[0]}]
##################################################
# Create clock                                    
##################################################
create_clock -name clk[0] -period 1.999999988e-08 -waveform {0 9.999999939e-09} [get_ports {clk[0]}]
