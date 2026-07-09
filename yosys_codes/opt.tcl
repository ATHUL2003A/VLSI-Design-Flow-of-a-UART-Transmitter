read_liberty -lib -ignore_miss_dir -setattr blackbox /home/ab2003ab/Desktop/NPTEL/OpenROAD/test/Nangate45/Nangate45_fast.lib

read_verilog /home/ab2003ab/Desktop/NPTEL/yosys_codes/uart_transmitter.v

hierarchy -check -top tx_uart

proc

opt

fsm

opt


memory #analyse circuit and create memory design to handle sequential data

opt

techmap

opt

dfflibmap -liberty /home/ab2003ab/Desktop/NPTEL/OpenROAD/test/Nangate45/Nangate45_fast.lib

abc -liberty /home/ab2003ab/Desktop/NPTEL/OpenROAD/test/Nangate45/Nangate45_fast.lib

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

#gate level netlist
write_verilog -noattr /home/ab2003ab/Desktop/NPTEL/yosys_codes/netlist_final.v

#convert to blif format
write_blif -buf BUF_X2 A Z /home/ab2003ab/Desktop/NPTEL/yosys_codes/UART_mapped_withbuf.blif

#schematic show
show -stretch


