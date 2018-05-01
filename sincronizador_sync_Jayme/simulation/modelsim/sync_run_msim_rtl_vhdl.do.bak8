transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {D:/Relatório 5/sincronizador - sync/sync.vhd}

vcom -93 -work work {D:/Relatório 5/sincronizador - sync/testbench_sync.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L cycloneii -L rtl_work -L work -voptargs="+acc" testbench_sync

add wave *
view structure
view signals
run -all
