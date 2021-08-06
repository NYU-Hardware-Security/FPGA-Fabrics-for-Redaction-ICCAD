import sys
import argparse
import re


def process_cell(line):
    newline = ''
    if "input " in line:
        to_process = line.replace("input ", "").replace(' ', '').replace(";", '').split(",")
        for port in to_process:
            newline += "INPUT(" + port + ")\n"
        return newline
    elif "output " in line:
        to_process = line.replace("output ", "").replace(' ', '').replace(";", '').split(",")
        for port in to_process:
            newline += "OUTPUT(" + port + ")\n"
        return newline
    elif "module " in line:
        return "###\n"
    elif "wire " in line:
        return ""

    test = line.split(" ")
    test = test[:2]
    newline = line.replace(' ', '')
    to_process = newline.split(",")

    if "INV" in test[0]:
        newline = (re.search(".ZN\((.*?)\)", str(to_process)).group(1) + " = NOT(" + re.search(".I\((.*?)\)",
                                                                                               str(to_process)).group(
            1) + ")")
    elif "BUF" in test[0]:
        newline = (re.search(".Z\((.*?)\)", str(to_process)).group(1) + " = BUF(" + re.search(".I\((.*?)\)",
                                                                                              str(to_process)).group(
            1) + ")")
    elif "NAND" in test[0]:
        newline = (re.search(".ZN\((.*?)\)", str(to_process)).group(1) + " = NAND(" + re.search(".A1\((.*?)\)",
                                                                                                str(to_process)).group(
            1) + "," + re.search(".A2\((.*?)\)", str(to_process)).group(1) + ")")
    elif "AND" in test[0]:
        newline = (re.search(".Z\((.*?)\)", str(to_process)).group(1) + " = AND(" + re.search(".A1\((.*?)\)",
                                                                                              str(to_process)).group(
            1) + "," + re.search(".A2\((.*?)\)", str(to_process)).group(1) + ")")
    elif "XNOR" in test[0]:
        newline = (re.search(".ZN\((.*?)\)", str(to_process)).group(1) + " = XNOR(" + re.search(".A1\((.*?)\)",
                                                                                                str(to_process)).group(
            1) + "," + re.search(".A2\((.*?)\)", str(to_process)).group(1) + ")")
    elif "XOR" in test[0]:
        newline = (re.search(".Z\((.*?)\)", str(to_process)).group(1) + " = XOR(" + re.search(".A1\((.*?)\)",
                                                                                              str(to_process)).group(
            1) + "," + re.search(".A2\((.*?)\)", str(to_process)).group(1) + ")")
    elif "NOR" in test[0]:
        newline = (re.search(".ZN\((.*?)\)", str(to_process)).group(1) + " = NOR(" + re.search(".A1\((.*?)\)",
                                                                                               str(to_process)).group(
            1) + "," + re.search(".A2\((.*?)\)", str(to_process)).group(1) + ")")
    elif "OR" in test[0]:
        newline = (re.search(".Z\((.*?)\)", str(to_process)).group(1) + " = OR(" + re.search(".A1\((.*?)\)",
                                                                                             str(to_process)).group(
            1) + "," + re.search(".A2\((.*?)\)", str(to_process)).group(1) + ")")
    elif "DFF" in test[0]:
        newline = (re.search(".Q\((.*?)\)", str(to_process)).group(1) + " = DFF(" + re.search(".D\((.*?)\)", str(
            to_process)).group(1) + ")")

    else:
        newline = line
    return newline + '\n'


def parse_rtl(output_filename, input_filename, is_write_to_file):
    print("Parsing RTL to bench...")
    netlist = open(input_filename, "r")
    output_netlist = open(output_filename, "w")
    line = ''
    for node in netlist:
        line += node
        if "endmodule" in line:
            break
        elif "//" == line[:2]:
            line = ''
        elif ";" in line:
            line = ' '.join(line.split())
            line = line.replace('\n', '')
            bench_line = process_cell(line)
            if is_write_to_file:
                output_netlist.write(bench_line)
            line = ''
    print("Parsing Complete!")
