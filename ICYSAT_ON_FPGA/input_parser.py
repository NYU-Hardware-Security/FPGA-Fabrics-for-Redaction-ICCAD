def parse_inputs(filename):
    file = open(filename, "r")
    trigger_string = "INPUT"
    key_trigger = "key"
    input_list = []
    for line in file:
        if line.find(trigger_string) != -1 and line.find(key_trigger) == -1:
            start_index = line.find("(")
            end_index = line.find(")")
            input_list.append(line[start_index + 1: end_index])
    return input_list


def parse_outputs(filename):
    file = open(filename, "r")
    trigger_string = "OUTPUT"
    output_list = []
    for line in file:
        if line.find(trigger_string) != -1:
            start_index = line.find("(")
            end_index = line.find(")")
            output_list.append(line[start_index + 1: end_index])
    return output_list


def parse_keys(filename):
    file = open(filename, "r")
    trigger_string = "INPUT"
    key_trigger = "key"
    input_list = []
    for line in file:
        if line.find(trigger_string) != -1 and line.find(key_trigger) != -1:
            start_index = line.find("(")
            end_index = line.find(")")
            input_list.append(line[start_index + 1: end_index])
    return input_list
