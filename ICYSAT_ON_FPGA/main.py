# This is a sample Python script.

# Press ⌃R to execute it or replace it with your code.
# Press Double ⇧ to search everywhere for classes, files, tool windows, actions, and settings.
from trace_scan_chain import *
from fpga_bench_generator import *
from netlist_and_oracle_generator import *
from icysat_2_unroll import *
from scan_expose_ff import *


def main():
    sys.setrecursionlimit(1000000)
    is_write_scan_chain = True
    is_write_primitive_bench_netlist = True
    input_netlist_filename = "fpga_netlist.v"
    primitive_bench_netlist_filename_before_scan_expose = "fpga_bench_primitive_.bench"
    primitive_bench_netlist_filename_after_scan_expose = "fpga_bench_primitive.bench"
    key_based_netlist_filename = "fpga_bench_exposed_key.bench"
    key_based_unrolled_netlist_filename = "fpga_netlist.bench"
    fpga_oracle_filename = "fpga_oracle.bench"
    input_tb_filename = "fpga_tb.v"
    config_scan_chain_filename = "scan_chain.txt"
    scan_chain_map = trace_scan_chain(input_netlist_filename, config_scan_chain_filename,
                                      input_tb_filename, is_write_scan_chain)
    parse_rtl(primitive_bench_netlist_filename_before_scan_expose, input_netlist_filename,
              is_write_primitive_bench_netlist)
    bench_parsed_rtl = scan_expose(primitive_bench_netlist_filename_before_scan_expose,
                                   primitive_bench_netlist_filename_after_scan_expose)
    #   print (scan_chain_map)
    key_list_map = generate_keybased_netlist(bench_parsed_rtl, key_based_netlist_filename, scan_chain_map)
    icysat_2_unroll(key_based_netlist_filename, key_based_unrolled_netlist_filename)
    icysat_2_unroll(key_based_netlist_filename, fpga_oracle_filename)
    oracle_generator(key_list_map, fpga_oracle_filename, fpga_oracle_filename)


if __name__ == '__main__':
    main()

# See PyCharm help at https://www.jetbrains.com/help/pycharm/
