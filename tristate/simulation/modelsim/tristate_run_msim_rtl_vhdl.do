transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {D:/Preparação4/tristate/tristate.vhd}

vcom -93 -work work {D:/Preparação4/tristate/testbench/testbench_tristate.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L stratixii -L rtl_work -L work -voptargs="+acc" testbench_tristate

add wave *
view structure
view signals
run -all
