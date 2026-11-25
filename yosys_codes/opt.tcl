read_liberty -lib -ignore_miss_dir -setattr blackbox /home/athul/Desktop/NPTEL/OpenROAD/test/Nangate45/Nangate45_slow.lib

read_verilog /home/athul/Desktop/NPTEL/yosys_codes/uart_transmitter.v

#resolve hierarchy by fixing the main design unit as top
hierarchy -check -top tx_uart

#Convert the procedural blocks like always blocks into mux and registers
proc

#do basic optimization and cleanups
opt

#analyse and optimise fsm,some intom generic gates and namelevel gates
fsm

opt

#analyse circuit and create memory design to handle sequential data,translate memory in design to generic name gates and genreral gates
memory

opt

#map generic namelevel gates like $and,$mux etc.. to tech library or target library
techmap

opt

#map general registers to available hardware flipflops in library
dfflibmap -liberty /home/athul/Desktop/NPTEL/OpenROAD/test/Nangate45/Nangate45_slow.lib

#map generalcomb logic to available hardware gates in library
abc -liberty /home/athul/Desktop/NPTEL/OpenROAD/test/Nangate45/Nangate45_slow.lib

#flatten_design

flatten

#replacing undef values with defined constants
setundef -zero

#remove unused cells and wires
clean -purge

#perform technology mapping of i/o pads
iopadmap -outpad BUF_X2 A:Z -bits

opt

#print statistics like area used by cells,total area,power

stat -liberty /home/athul/Desktop/NPTEL/OpenROAD/test/Nangate45/Nangate45_slow.lib

#assign short auto-generated names to all selected wires and cells with private names
rename -enumerate 

#gate level netlist
write_verilog -noattr /home/athul/Desktop/NPTEL/yosys_codes/netlist_final.v

#convert to blif format
write_blif -buf BUF_X2 A Z /home/athul/Desktop/NPTEL/yosys_codes/UART_mapped_withbuf.blif

#schematic show
show -stretch

