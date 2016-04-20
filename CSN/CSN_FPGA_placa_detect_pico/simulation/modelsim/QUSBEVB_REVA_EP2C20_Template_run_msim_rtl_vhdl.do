transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Documents and Settings/rchil/Desktop/DAQ_USB/FPGA/daq_sub_fpga/control_disparo.vhdl}
vcom -93 -work work {C:/Documents and Settings/rchil/Desktop/DAQ_USB/FPGA/daq_sub_fpga/fifo0.vhd}

