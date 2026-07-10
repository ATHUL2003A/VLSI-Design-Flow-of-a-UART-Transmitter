
#sdf or standard delay format file comes as output from sta tool and used by verification tools for dynamic timing analysis.(calculated rc delays of wires )
#spef file or standard parasitic exchange format comes output from physical design tool which contain actual parasitic res and cap of nodes in gate and wires.used in post timing analysis
#timing analysis with spef file reduces the setup slack and hold slack,difference between calculated and original parasitic delay info
#timing analysis with sdf file timing is fast when compared to spef
#timing analysis with derate factor help to do analysis using on chip variation


read_liberty NangateOpenCellLibrary_low_temp.lib
read_verilog netlist_final.v
link_design tx_uart
read_sdc top.sdc
#without spef
report_checks
report_checks -path_delay max -format full
#SETUP time analysis
report_checks -path_delay min -format full
#HOLD time analysis
report_checks -path_delay max -digits 4

#post route analysis,spef file contain post route information about parasitic information of interconnects from physical design tool
report_parasitic_annotation #parasitic information gives resistance,capacitance of certain driving nets which are essential to calculate timing calculations
read_spef example1.dspef#file from phy syn tool contain rc information
report_parasitic_annotation#all unannotated nodes and wires will be annotate  now
report_checks
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
#set_propagated_clock command used to show clock network delay if clock tree is there

report_checks -path_delay max -from _239_/CK#reg to reg critical patn delay
