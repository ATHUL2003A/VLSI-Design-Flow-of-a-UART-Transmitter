read_liberty NangateOpenCellLibrary_low_temp.lib
read_verilog netlist_final.v
link_design tx_uart
read_sdc top.sdc
report_checks
report_checks -path_delay max -format full
#hold time analysis
report_checks -path_delay min -format full
#setup time analysis
report_checks -path_delay max -digits 4
#post route analysis
report_parasitic_annotation #parasitic information gives resistance,capacitance of certain driving nets which are essential to calculate timing calculations
#spef file contain post route information about parasitic information of interconnects from physical design tool
read_spef example1.dspef
report_parasitic_annotation

report_checks -path_delay max -digits 4 -fields capacitance
report_checks -path_delay max -digits 4 -fields [list capacitance, slew, input_pins, nets, fanout] #accuracy to 4 digits
report_checks -path_delay min -digits 4 -fields [list capacitance, slew, input_pins, nets, fanout]
exit

#SDF
report_annotated_check
read_sdf example1.sdf #sdf file generated from sta analysis tool .It annotates unannotated setup,hold time arcs and realistic timing analysis given in short time
report_annotated_check

report_check
#Timing Analysis with Multiple Process Corners
define corners wc typ bc #worst corner,typical corner,best corner. Should be called before lib file call and linking design
read_liberty -corner wc Nangate45_slow.lib
read_liberty -corner typ Nangate45_typ.lib
read_liberty -corner bc Nangate45_fast.lib
read_verilog netlist_final.v
link_design tx_uart
read_sdc top.sdc

#without derate factor
report_checks -path_delay min_max
#with derate
set_timing_derate -early 0.9
set_timing_derate -late 1.1
#scales the value of delays of interconnect and cells by increasing or decreasing them. gives optimistic and pessimistic timing analysic. set_clock_uncertainity -clk 5 {in1,in2}


report_checks -path_delay max -from _239_/CK

