create_clock -name clk -period 10 [get_ports clk]
set_input_delay 2.3 -rise  -clock clk  {start} 
set_input_delay 2.3 -rise  -clock clk  {data}
set_output_delay 3 -fall  -clock clk  {done_tx} 

set_load -pin_load 0.2 [get_ports {done_tx}]
