create_clock -name clk -period 10 [get_ports clk]
set_input_delay  -clock clk 2 {start} 
set_input_delay  -clock clk 2 {data}
set_output_delay  -clock clk 2 {done_tx} 
