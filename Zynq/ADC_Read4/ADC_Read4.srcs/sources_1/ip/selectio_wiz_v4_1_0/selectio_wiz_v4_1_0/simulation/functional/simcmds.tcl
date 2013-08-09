# file: simcmds.tcl

# create the simulation script
vcd dumpfile isim.vcd
vcd dumpvars -m /selectio_wiz_v4_1_0_tb -l 0
wave add /
run 50000ns
quit

