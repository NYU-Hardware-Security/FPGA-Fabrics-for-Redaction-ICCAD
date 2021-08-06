# This is a sample Python script.

# Press ⌃R to execute it or replace it with your code.
# Press Double ⇧ to search everywhere for classes, files, tool windows, actions, and settings.

def populate_scan_ff(filename):
    file = open(filename, "r")
    unified_line_list = []
    unified_line = ""
    incomplete_line = False
    for line in file:
        if line[len(line) - 2] != ';' and incomplete_line is True:
            unified_line += line[0: len(line) - 1].strip()
        elif line[len(line) - 2] == ';' and incomplete_line is True:
            unified_line += line[0: len(line) - 1].strip()
            incomplete_line = False
            unified_line_list.append(unified_line)
        if line.find("DFFSNQ") != -1 or line.find("DFFRNQ") != -1 or line.find("BUF_") != -1:
            assert (incomplete_line is False), "population of scan ff failed!"
            unified_line = line[0: len(line) - 1].strip()
            if line[len(line) - 2] != ';':
                incomplete_line = True
            else:
                unified_line_list.append(unified_line)
    return unified_line_list


def extract_config_bits(filename):
    tb_file = open(filename, "r")
    bit_list = []
    for line in tb_file:
        if line.find("prog_cycle_task(1'b") != -1:
            bit_list.append((line[line.find('\'') + 2: line.find(')')]))
    bit_list.reverse()
    return bit_list


def extract_scan_chain_ffs(unified_line_list):
    scan_chain_dict = {}
    buffer_map = {}
    for dff_line in unified_line_list:
        if dff_line.find("prog_clk") != -1:
            fanin_list = dff_line[dff_line.find('(') + 1: len(dff_line)].split(',')
            fanin_list = [str.strip(element) for element in fanin_list]
            source_ff = fanin_list[0]
            source_ff = source_ff[source_ff.find('(') + 1: source_ff.find(')')]
            destination_ff = fanin_list[len(fanin_list) - 1]
            destination_ff = destination_ff[destination_ff.find('(') + 1: destination_ff.find(')')]
            scan_chain_dict[source_ff] = destination_ff
    for dff_line in unified_line_list:
        if dff_line.find("BUF_") != -1:
            fanin_list_buf = dff_line[dff_line.find('(') + 1: len(dff_line)].split(',')
            fanin_list_buf = [str.strip(element) for element in fanin_list_buf]
            source_buf = fanin_list_buf[0]
            source_buf = source_buf[source_buf.find('(') + 1: source_buf.find(')')]
            destination_buf = fanin_list_buf[len(fanin_list_buf) - 1]
            destination_buf = destination_buf[destination_buf.find('(') + 1: destination_buf.find(')')]
            if scan_chain_dict.get(destination_buf) is not None:
                buffer_map[source_buf] = destination_buf
    return scan_chain_dict, buffer_map


def find_chain_sequence(scan_chain_dict, buf_map):
    chain_head = "ccff_head_0_"
    chain_tail = "ccff_tail_0_"
    chain_sequence = []
    assert (scan_chain_dict.get(chain_head) is not None), "Chain head not found!"
    current_node = chain_head
    while scan_chain_dict.get(current_node) != chain_tail:
        assert (scan_chain_dict.get(current_node) is not None or buf_map.get(current_node) is not None), \
            print(current_node)
        if scan_chain_dict.get(current_node) is None:
            while buf_map.get(current_node) is not None:
                current_node = buf_map[current_node]
        assert (scan_chain_dict.get(current_node) is not None), print(current_node)
        chain_sequence.append(scan_chain_dict.get(current_node))
        current_node = scan_chain_dict.get(current_node)
    chain_sequence.append(chain_tail)
    return chain_sequence


def trace_scan_chain(input_file_name, scan_chain_filename, input_tb_file, is_write_scan_chain):
    print("Tracing out for config bitstream scan chain for scan-expose....")
    scan_chain_file = open(scan_chain_filename, "w")
    uni_line_list = populate_scan_ff(input_file_name)
    scan_chain_ff_list, buf_map = extract_scan_chain_ffs(uni_line_list)
    config_bits_scan_sequence = find_chain_sequence(scan_chain_ff_list, buf_map)
    config_bit_list = extract_config_bits(input_tb_file)
    config_chain_map = {}
    print(len(config_bit_list))
    print(len(config_bits_scan_sequence))
    assert (len(config_bit_list) == len(config_bits_scan_sequence))
    for i in range(len(config_bit_list)):
        if is_write_scan_chain:
            scan_chain_file.write("%s = %s\n" % (config_bits_scan_sequence[i].strip(), config_bit_list[i].strip()))
        config_chain_map[config_bits_scan_sequence[i]] = config_bit_list[i]
    print("Scan chain tracing complete!")
    return config_chain_map
