# This is a sample Python script.

# Press ⌃R to execute it or replace it with your code.
# Press Double ⇧ to search everywhere for classes, files, tool windows, actions, and settings.


def get_fanin_list(circuit_node):
    fanin_list = circuit_node[circuit_node.find('(') + 1: circuit_node.find(')')].split(',')
    fanin_list = [str.strip(element) for element in fanin_list]
    return fanin_list


def node_rewrite(old_line, config_bit_map):
    fanin_list = get_fanin_list(old_line)
    modified_fanin = "("
    for fanin in fanin_list:
        if config_bit_map.get(fanin.strip()) is not None:
            modified_fanin += config_bit_map[fanin] + ", "
        else:
            modified_fanin += fanin + ", "
    modified_fanin = old_line[0: old_line.find('(')] + modified_fanin[0: len(modified_fanin) - 2] + ")\n"
    return modified_fanin


def rewrite_netlist(input_netlist, output_filename, config_map):
    output_netlist = open(output_filename, "w")
    key_count = 0
    key_map = {}
    config_bit_map = {}
    circuit_node = []
    io_node = []
    for line in input_netlist:
        if line.find("INPUT") == -1 and line.find("OUTPUT") == -1 and line.find("#") == -1:
            circuit_node.append(line)
        if line.find("INPUT") != -1 or line.find("OUTPUT") != -1:
            io_node.append(line)
    for bit in config_map:
        key_name = "key_input_" + str(key_count)
        config_bit_map[bit + "_pi"] = key_name
        key_map[key_name] = config_map[bit]
        key_count += 1

    for io in io_node:
        io_net = io[io.find("(") + 1: io.find(")")].strip()
        if config_bit_map.get(io_net) is not None:
            io = io.replace(io_net, config_bit_map[io_net])
            assert (io.find("OUTPUT") == -1), "key cannot be output! LOL"
        output_netlist.write(io)

    for node in circuit_node:
        modified_node = node_rewrite(node, config_bit_map)
        output_netlist.write(modified_node)
    return key_map


def oracle_generator(key_map, input_netlist_filename, output_filename):
    input_netlist = open(input_netlist_filename, "r")
    input_found_flag = False
    circuit_node = []
    rand_inp = ""
    io_node = []
    for line in input_netlist:
        if line.find("INPUT") != -1 and input_found_flag is False:
            rand_inp = line[line.find('(') + 1: line.find(')')]
            input_found_flag = True
        if line.find("INPUT") == -1 and line.find("OUTPUT") == -1 and line.find("#") == -1:
            circuit_node.append(line)
        if line.find("INPUT") != -1 or line.find("OUTPUT") != -1:
            fanin = line[line.find('(') + 1: line.find(')')].strip()
            if key_map.get(fanin) is None:
                io_node.append(line)

    output_oracle = open(output_filename, "w")
    for io in io_node:
        output_oracle.write(io)
    output_oracle.write("n_i = NOT(%s)\n" % rand_inp)
    output_oracle.write("gnd_rewrite = AND(%s, n_i)\n" % rand_inp)
    output_oracle.write("vcc_rewrite = OR(%s, n_i)\n" % rand_inp)
    for key in key_map:
        if key_map[key].strip() == '1':
            key_logic = "vcc_rewrite"
        else:
            key_logic = "gnd_rewrite"
        output_oracle.write("%s = %s\n" % (key, key_logic))
    for node in circuit_node:
        output_oracle.write(node)


def find_key_string(filename, key_map):
    key_string = ""
    key_file = open(filename, "r")
    for key in key_file:
        if key.find("INPUT") != -1 and key_map.get(key[key.find('(') + 1: key.find(')')]) is not None:
            key_string += key_map[key[key.find('(') + 1: key.find(')')]]
    return key_string


def generate_keybased_netlist(fpga_bench_netlist, output_netlist_file, config_map):
    print ("Exposing all configuration bits as key nets!")
    key_list_map = rewrite_netlist(fpga_bench_netlist, output_netlist_file, config_map)
    print ("Key controlled netlist conversion successful!")
    return key_list_map


def generate_oracle(key_list_map, unrolled_oracle_filename, output_oracle_filename):
    oracle_generator(key_list_map, unrolled_oracle_filename, output_oracle_filename)