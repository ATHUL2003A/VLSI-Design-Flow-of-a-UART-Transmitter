# read modules from Verilog file
read_verilog uart_transmitter.v
# translate processes to netlists
proc
# remove unused cells and wires
clean

# show the generic netlist
show

# mapping to internal cell library
techmap
# mapping flip-flops to toy.lib 
dfflibmap -liberty NangateOpenCellLibrary_low_temp.lib
# mapping logic to toy.lib 
abc -liberty NangateOpenCellLibrary_low_temp.lib
# remove unused cells and wires
clean
#report design statistics
stat -liberty NangateOpenCellLibrary_low_temp.lib

# Write the current design to a Verilog file
write_verilog -noattr -noexpr -nohex -nodec netlist_UART_unopt.v 

#Executing verilog backend
write_blif -buf BUF_X2 A Z UART_mapped_withbuf.blif #stores digital design logic comb,seq data in simolified manner. Interchangeability between different eda tools.Easy for different verification and simulation
