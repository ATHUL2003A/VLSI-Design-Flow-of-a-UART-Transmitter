# VLSI-Design-Flow-of-a-UART-Transmitter
Designed a UART transmitter module, done it's Synthesis,optimization using Yosys Synthesis tool,done STA Analysis using OpenSTA and placement,CTS and routing in OpenROAD using Silvaco 45nm OpenSource PDK
In OpenROAD Analysis
source the helpers.tcl,flow_helpers.tcl,gcd_45.tcl to set variables like netlist,top module name,design name,die area,core area source trackers,source sdc constraint file etc
Then execute the flow script

Pitch is the centre to centre distance between 2 routing tracks
offset is the distance between the core area boundary and very first routing track of each metal layer
changing pitch results in routing congestion

Each metal layer has preferred and non preferred Routing track like vertical and horizontal direction in opposite manner
Power distribution network is important in any physical design.It should be done before placement and routing
In physical design before LVS,DRC,GDSII Pre CTS and Post CTS timing report checks are done,and negative slack and slew repairs done.Pre CTS done after global placement
