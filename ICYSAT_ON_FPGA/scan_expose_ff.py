import os


def scan_expose(input_filename, output_filename):
    print("Exposing all flip-flops to primary input nets assuming test access!")
    input_file = open(input_filename, "r")
    exposed_bench_list = []
    input_list = []
    output_list = []
    line_list = []
    for line in input_file:
        if line.find("INPUT") != -1:
            input_list.append(line[line.find("(") + 1: line.find(")")].strip())
        elif line.find("OUTPUT") != -1:
            output_list.append(line[line.find("(") + 1: line.find(")")].strip())
        elif line.find("dff") != -1 or line.find("DFF") != -1:
            line_list.append(line[0: line.find("=")].strip() + "_po = BUFF(" + line[line.find("(") + 1: line.find(
                ")")].strip() + ")" + "\n")
            line_list.append(
                line[0: line.find("=")].strip() + " = BUFF(" + line[0: line.find("=")].strip() + "_pi)" + "\n")
            input_list.append(line[0: line.find("=")].strip() + "_pi")
            output_list.append(line[0: line.find("=")].strip() + "_po")
        else:
            line_list.append(line)
    input_file.close()
    input_file = open(input_filename, "r")
    output_file = open(output_filename, "w")
    for inp in input_list:
        output_file.write("INPUT(" + str(inp) + ")" + "\n")
        exposed_bench_list.append("INPUT(" + str(inp) + ")" + "\n")
    for out in output_list:
        output_file.write("OUTPUT(" + str(out) + ")" + "\n")
        exposed_bench_list.append("OUTPUT(" + str(out) + ")" + "\n")
    for line in line_list:
        if line.find("INPUT") == -1 and line.find("OUTPUT") == -1 and line.strip()[0] != "#" and \
                line != "\n" and line.find("dff") == -1 and line.find("DFF") == -1:
            new_line = line
            if line.find("nand(") != -1:
                new_line = line.replace("nand(", "NAND(")
            elif line.find("and(") != -1:
                new_line = line.replace("and(", "AND(")
            elif line.find("xnor(") != -1:
                new_line = line.replace("xnor(", "XNOR(")
            elif line.find("xor(") != -1:
                new_line = line.replace("xor(", "XOR(")
            elif line.find("nor(") != -1:
                new_line = line.replace("nor(", "NOR(")
            elif line.find("or(") != -1:
                new_line = line.replace("or(", "OR(")
            elif line.find("buff(") != -1:
                new_line = line.replace("buff(", "BUF(")
            elif line.find("buf(") != -1:
                new_line = line.replace("buf(", "BUF(")
            elif line.find("not(") != -1:
                new_line = line.replace("not(", "NOT(")
            output_file.write(new_line)
            exposed_bench_list.append(new_line)
    input_file.close()
    output_file.close()
    os.remove(input_filename)
    print ("All flip-flops exposed!")
    return exposed_bench_list
