#############################################
#	Synopsys Design Constraints (SDC)
#	For FPGA fabric 
#	Description: Timing constraints for Grid logical_tile_clb_mode_clb_ in PnR
#	Author: Xifan TANG 
#	Organization: University of Utah 
#	Date: Mon May 24 18:19:46 2021
#############################################

#############################################
#	Define time unit 
#############################################
set_units -time s

set_max_delay -from fpga_top/grid_clb_*__*_/logical_tile_clb_mode_clb__0/clb_reg_in[0] -to fpga_top/grid_clb_*__*_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_0/fle_reg_in[0] 1.599999994e-10
set_max_delay -from fpga_top/grid_clb_*__*_/logical_tile_clb_mode_clb__0/clb_sc_in[0] -to fpga_top/grid_clb_*__*_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_0/fle_sc_in[0] 1.599999994e-10
