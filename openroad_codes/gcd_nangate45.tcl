# gcd flow pipe cleaner
source "helpers.tcl"
source "flow_helpers.tcl"
source "Nangate45.vars"

set design "tx_uart"
set top_module "tx_uart"
set synth_verilog "netlist_final.v"
set sdc_file "top.sdc"
set die_area {0 0 100.13 100.8}
set core_area {10.07 11.2 90.25 91}

source -echo "flow.tcl"
source -echo "flow_floorplan.tcl"
source -echo "flow_powerplacement.tcl"
source -echo "flow_globalplacement.tcl"
source -echo "flow_detailedplacement.tcl"
