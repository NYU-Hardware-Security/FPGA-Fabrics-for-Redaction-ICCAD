
module redact(mem_ready , iomem_valid, iomem_ready , spimem_ready , ram_ready , spimemio_cfgreg_sel ,
			simpleuart_reg_div_sel , simpleuart_reg_dat_sel , simpleuart_reg_dat_wait);

output mem_ready;
input iomem_valid;
input iomem_ready;
input spimem_ready;
input ram_ready;
input spimemio_cfgreg_sel;
input simpleuart_reg_div_sel;
input simpleuart_reg_dat_sel;
input simpleuart_reg_dat_wait;

assign mem_ready = (iomem_valid && iomem_ready) || spimem_ready || ram_ready || spimemio_cfgreg_sel ||
			simpleuart_reg_div_sel || (simpleuart_reg_dat_sel && !simpleuart_reg_dat_wait);

endmodule