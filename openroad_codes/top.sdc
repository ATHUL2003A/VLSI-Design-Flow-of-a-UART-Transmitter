set PERIOD    5.0
set EXT_DELAY 2.0

create_clock -name clk -period $PERIOD -waveform [list 0.0 [expr $PERIOD/2.0]] [get_ports clk]

# every input except the clock, and every output, gets 40% of the period
set_input_delay  -clock clk $EXT_DELAY [all_inputs -no_clocks]
set_output_delay -clock clk $EXT_DELAY [all_outputs]

