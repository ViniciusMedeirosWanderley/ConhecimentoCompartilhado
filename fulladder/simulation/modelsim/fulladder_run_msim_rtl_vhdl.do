transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {D:/Preparacao3/4.7/fulladder.vhd}

vcom -93 -work work {D:/Preparacao3/4.7/testbench_fulladder.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L cycloneii -L rtl_work -L work -voptargs="+acc" testbench_fulladder

add wave *
view structure
view signals
run -all
