# Redaction

The Redaction github repo contains the IPs that has been used for the purpose of study, to show the various aspect of redaction techniques.

The work is done using an Opensource tools to generate fabric (OpenFPGA). To have a better understanding of this tool, one can look into the documentation provided in the 
https://github.com/lnis-uofu/OpenFPGA

For further detail and results, one can refer to paper provided below:

** Exploring eFPGA-based Redaction for IP Protection**

The directory contains the IPs that are mentioned in Table V and Table VI of the above mentioned paper.

To better understand the files in the directory:

1. SDC/SRC: These two subfolders contains the netlists and SDC generated using OpenFPGA Framework(provide the link), they corresponds to different fabric varying from 3x3 to 
            7x7. These two are then used to synthesis the fabric using Synopsys DC and Cadence GENUS.
       
2. fpga_fabric_syn_netlist: This is the synthesised output (Verilog) of the fabric, each subfolder contains different files because of different fabric sizes, corresponding
                            to Table V of the paper.
     
3. redact: This is the sub-module that is being extracted from the IPs, for redaction. The IPs, from where this module has been removed is replaced with fpga_top module,
            that correspond to the fabric used in place of the redacted module.
            
4. (IPs)\_syn_netlist: This files contains the synthesised netlist of the IPs.
