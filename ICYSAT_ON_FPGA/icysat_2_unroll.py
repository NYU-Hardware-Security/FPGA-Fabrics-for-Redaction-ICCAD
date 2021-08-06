# This is a sample Python script.

# Press ⌃R to execute it or replace it with your code.
# Press Double ⇧ to search everywhere for classes, files, tool windows, actions, and settings.
from input_parser import *
import random
import os

recursion_stack = []
feedback_list = {}
input_list_hash = {}
circuit_hash = {}
input_list = []
output_list = []


def load_circuit_hash(filename_):
    circuit_file = open(filename_, "r")
    circuit_hash_ = {}
    for line in circuit_file:
        if line.find("INPUT") == -1 and line.find("OUTPUT") == -1 and line.find("#") == -1 and len(line) != 0:
            fanin_list = line[line.find("(") + 1: line.find(")")].split(",")
            fanout = line[0: line.find("=")].strip()
            fanin_list = [str.strip(element) for element in fanin_list]
            if circuit_hash_.get(fanout) is not None:
                print("Multiple assignment to single gate!. Tree enumeration failed!")
                exit()
            else:
                circuit_hash_[fanout] = fanin_list
    circuit_file.close()
    return circuit_hash_


def rewrite_circuit(feedback_edges, output_filename, input_filename):
    in_circuit = open(input_filename, "r")
    out_circuit = open(output_filename, "w")
    modified_node_list = []
    for inp in input_list_hash:
        out_circuit.write("INPUT(%s)\n" % inp)
    for out in output_list:
        out_circuit.write("OUTPUT(%s)\n" % out)
    for line in in_circuit:
        if line.find("INPUT") == -1 and line.find("OUTPUT") == -1 and line.find("#") == -1 and len(line) != 0:
            fanin_list = line[line.find("(") + 1: line.find(")")].split(",")
            fanin_list = [str.strip(element) for element in fanin_list]
            for fanin in fanin_list:
                if feedback_edges.get(fanin) is not None:
                    line = line.replace(fanin, fanin + "_in")

            fanout = line[0: line.find("=")].strip()
            if feedback_edges.get(fanout) is not None:
                line = line.replace(fanout, fanout + "_out")
            modified_node_list.append(line)
            out_circuit.write(line[0: len(line)])
    in_circuit.close()
    out_circuit.close()
    return modified_node_list


def construct_new_node(node, fanin, fanout):
    gate = node[node.find("=") + 1: node.find("(")].strip()
    new_node = "%s = %s(" % (fanout, gate)
    for port in fanin:
        new_node += port + ","
    new_node = new_node[0: len(new_node) - 1] + ")\n"
    return new_node


def circuit_copy_generator(node_copy_list, count, final_round_flag):
    circuit_copy = []
    new_fanin_list = []
    for line_local in node_copy_list:
        fanin_list = line_local[line_local.find("(") + 1: line_local.find(")")].split(",")
        fanin_list = [str.strip(element) for element in fanin_list]
        fanout = line_local[0: line_local.find("=")].strip()
        for fanin in fanin_list:
            if final_round_flag:
                if fanin not in input_list and fanin not in output_list:
                    new_fanin_list.append(fanin + "__" + str(count))
                else:
                    new_fanin_list.append(fanin)
            else:
                if fanin not in input_list:
                    new_fanin_list.append(fanin + "__" + str(count))
                else:
                    new_fanin_list.append(fanin)
        if final_round_flag:
            if fanout not in output_list:
                fanout = fanout + "__" + str(count)
        else:
            fanout = fanout + "__" + str(count)
        circuit_copy.append(construct_new_node(line_local, new_fanin_list, fanout))
        new_fanin_list.clear()
    return circuit_copy


def spurious_input_patch(feed_back_nodes, input_list_local):
    patch_list = []
    random_input = input_list_local[random.randrange(0, len(input_list_local))]
    for node in feed_back_nodes:
        patch_wire = node + "_in__0"
        patch_list.append("%s = buf(%s)\n" % (patch_wire, random_input))
    return patch_list


def stitch_circuits(feedback_wires, circuit_copy_1, circuit_copy_2):
    stitch_circuit = []
    for wire in feedback_wires:
        wire_1 = wire + "_in__" + str(circuit_copy_2)
        wire_2 = wire + "_out__" + str(circuit_copy_1)
        stitch_circuit.append("%s = buf(%s)\n" % (wire_1, wire_2))
    return stitch_circuit


def unrolled_circuit_generator(unroll_factor, node_list):
    unrolled_circuit_copy = []
    final_unrolled_circuit = []
    for unroll_count in range(0, unroll_factor):
        unrolled_circuit_copy.append(
            circuit_copy_generator(node_list, unroll_count, (unroll_count == unroll_factor - 1)))
    final_unrolled_circuit.extend(unrolled_circuit_copy[0])
    for unroll_count in range(1, unroll_factor):
        final_unrolled_circuit.extend(stitch_circuits(feedback_list, unroll_count - 1, unroll_count))
        final_unrolled_circuit.extend(unrolled_circuit_copy[unroll_count])
    return final_unrolled_circuit


def decyclify_node_in_circuit_hash(node):
    for wire in circuit_hash:
        fanin_list = circuit_hash[wire]
        for fanin in fanin_list:
            if fanin == node:
                fanin_list.remove(fanin)
                fanin_list.append(fanin + "_in")
        circuit_hash[wire] = fanin_list
    fanin_list = circuit_hash[node]
    input_list_hash[node + "_in"] = True
    circuit_hash.pop(node)
    circuit_hash[node + "_out"] = fanin_list
    if node in output_list:
        output_list.remove(node)
    output_list.append(node + "_out")


def cyclic_unroll(recursion_stack_local, current_node):
    if input_list_hash.get(current_node) is not None:
        return
    if recursion_stack_local.get(current_node) is not None:
        if feedback_list.get(current_node) is None:
            decyclify_node_in_circuit_hash(current_node)
            feedback_list[current_node] = True
            print("Feedback %s detected" % str(len(feedback_list)))
        return
    recursion_stack_local[current_node] = True
    input_set = circuit_hash[current_node]
    for input_ in input_set:
        cyclic_unroll(recursion_stack_local, input_)
    recursion_stack_local.pop(current_node)
    return


def icysat_2_unroll(filename, unrolled_filename):
    print("Unrolling combinational cycles in %s using ICYSAT!" % filename)
    global input_list, input_list_hash, circuit_hash, output_list
    output_filename = "decyclified_netlist.bench"
    circuit_hash = load_circuit_hash(filename)
    input_list = parse_inputs(filename)
    input_list.extend(parse_keys(filename))
    input_list_hash = {}
    for input in input_list:
        input_list_hash[input] = True
    output_list = parse_outputs(filename)
    for output in output_list:
        print("Traversing %s" % output)
        cyclic_unroll({}, output)
    print("Total number of combinational feedbacks ---> %s" % (str(len(feedback_list))))
    decyclified_circuit = rewrite_circuit(feedback_list, output_filename, filename)
    unrolled_circuit = unrolled_circuit_generator(len(feedback_list), decyclified_circuit)
    unrolled_netlist = open(unrolled_filename, "w")
    for inp in input_list:
        unrolled_netlist.write("INPUT(%s)\n" % inp)
    output_list = parse_outputs(filename)
    for out in output_list:
        unrolled_netlist.write("OUTPUT(%s)\n" % out)
    patch_script = spurious_input_patch(feedback_list, input_list)
    for line in patch_script:
        unrolled_netlist.write(line)
    for line in unrolled_circuit:
        unrolled_netlist.write(line)
    os.remove(output_filename)
    recursion_stack.clear()
    feedback_list.clear()
    input_list_hash.clear()
    circuit_hash.clear()
    input_list.clear()
    output_list.clear()
    print("Unrolling of %s successfully completed!" % filename)
    return
