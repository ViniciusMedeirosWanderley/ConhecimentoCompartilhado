transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {D:/Relatório 4/mux4_estruturado2/inv.vhd}
vcom -93 -work work {D:/Relatório 4/mux4_estruturado2/mux2_estruturado.vhd}
vcom -93 -work work {D:/Relatório 4/mux4_estruturado2/mux4_estruturado.vhd}
vcom -93 -work work {D:/Relatório 4/mux4_estruturado2/tristate.vhd}

vcom -93 -work work {D:/Relatório 4/mux4_estruturado2/testbench_mux4.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L cycloneii -L rtl_work -L work -voptargs="+acc" testbench_mux4

add wave *
view structure
view signals
run -all
