# gcd flow pipe cleaner
source "helpers.tcl"
source "flow_helpers.tcl"
source "Nangate45/Nangate45.vars"

set design "top"
set top_module "top"
set synth_verilog "top.v"
set sdc_file "gcd_nangate45.sdc"
set die_area {0 0 100.13 100.8}
set core_area {10.07 11.2 90.25 91}

source -echo "flow.tcl"
source -echo "flow_floorplan.tcl"
source -echo "flow_powerplacement.tcl"
source -echo "flow_globalplacement.tcl"
source -echo "flow_detailedplacement.tcl"
