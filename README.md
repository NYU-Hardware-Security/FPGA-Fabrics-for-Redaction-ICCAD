# Redaction

The Redaction github repo contains the IPs that has been used for the purpose of study, to show the various aspect of redaction techniques.

The work is done using an Opensource tools to generate fabric (OpenFPGA). To have a better understanding of this tool, one can look into the documentation provided in the 
https://github.com/lnis-uofu/OpenFPGA

For further detail and results, one can refer to paper provided below:

***Exploring eFPGA-based Redaction for IP Protection***
```
@inproceedings{exploring2021,
    address = {Virtual Event},
    title = {Exploring {eFPGA}-based {Redaction} for {IP} {Protection}},
    booktitle = {2021 {IEEE}/{ACM} {International} {Conference} {On} {Computer} {Aided} {Design} ({ICCAD})},
    publisher = {IEEE},
    author = {Bhandari, Jitendra and Khader Thalakkattu Moosa, Abdul and Tan, Benjamin and Pilato, Christian and Gore, Ganesh and Tang, Xifan and Temple, Scott and Gaillardon, Pierre-Emmanuel and Karri, Ramesh},
    year = {2021},
    note = {To Appear},
}
```

*Accepted at ***2021 IEEE/ACM International Conference On Computer Aided Design (ICCAD)***

The directory contains the IPs that are mentioned in Table V and Table VI of the above mentioned paper and the security evaluation script (in ICYSAT\_ON\_FPGA)

To better understand the structure of files in each directory:

1. SDC/SRC: These two subfolders contain the netlists and SDC generated using [OpenFPGA Framework](https://github.com/lnis-uofu/OpenFPGA), they correspond to different fabrics varying from 3x3 to 7x7. These are used to synthesise the fabric using Synopsys DC and Cadence GENUS.
       
2. fpga_fabric_syn_netlist: This is the synthesised output (Verilog) of the fabric, each subfolder contains different files because of different fabric sizes, corresponding to Table V of the paper.
     
3. redact: This is the sub-module that is being extracted from the IPs, for redaction. The IP from where a module has been removed is replaced with the fpga_top module that corresponds to the fabric used in place of the redacted module.
            
4. (IPs)\_syn_netlist: This contains the synthesised netlist of the IPs.

****Some folders contain .zip file to accomodate the space.***
