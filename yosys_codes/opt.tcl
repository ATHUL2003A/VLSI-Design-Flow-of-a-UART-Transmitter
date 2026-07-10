read_liberty -lib -ignore_miss_dir -setattr blackbox /home/ab2003ab/Desktop/NPTEL/OpenROAD/test/Nangate45/Nangate45_fast.lib

read_verilog /home/ab2003ab/Desktop/NPTEL/yosys_codes/uart_transmitter.v

hierarchy -check -top tx_uart#resolve hierarchy by fixing the main design unit as top

proc #Convert the process(internal structure or behaviour) of verilog code into multiplexers and registers

opt#do basic optimization and cleanups

fsm #analyse and optimise fsm

opt


memory #analyse circuit and create memory design to handle sequential data

opt

techmap#map coarse-grain RTL cells(adders,etc..) to fine grain logic cells in library(AND,OR,NOT, etc...)

opt

dfflibmap -liberty /home/ab2003ab/Desktop/NPTEL/OpenROAD/test/Nangate45/Nangate45_fast.lib#map registers to available hardware flipflops in library

abc -liberty /home/ab2003ab/Desktop/NPTEL/OpenROAD/test/Nangate45/Nangate45_fast.lib#map comb logic to available hardware gates in library

#flatten_design

flatten

#replacing undef values with defined constants
setundef -zero

#remove unused cells and wires
clean -purge

#perform technology mapping of i/o pads
iopadmap -outpad BUF_X2 A:Z -bits

opt

#print statistics

stat -liberty /home/ab2003ab/Desktop/NPTEL/OpenROAD/test/Nangate45/Nangate45_fast.lib

#assign short auto-generated names to all selected wires and cells with private names
rename -enumerate 

#gate level netlist
write_verilog -noattr /home/ab2003ab/Desktop/NPTEL/yosys_codes/netlist_final.v

#convert to blif format
write_blif -buf BUF_X2 A Z /home/ab2003ab/Desktop/NPTEL/yosys_codes/UART_mapped_withbuf.blif

#schematic show
show -stretch

