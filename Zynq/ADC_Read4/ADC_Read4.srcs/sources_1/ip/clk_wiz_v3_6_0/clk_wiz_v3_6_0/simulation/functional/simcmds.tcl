# file: simcmds.tcl

# create the simulation script
vcd dumpfile isim.vcd
vcd dumpvars -m /clk_wiz_v3_6_0_tb -l 0
wave add /
run 50000ns
quit
