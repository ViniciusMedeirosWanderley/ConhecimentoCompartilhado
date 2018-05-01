transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vcom -93 -work work {sync.vho}

vcom -93 -work work {D:/Relatório 5/sincronizador - sync/testbench_sync.vhd}

vsim -t 1ps +transport_int_delays +transport_path_delays -sdftyp /dut=sync_vhd.sdo -L cycloneii -L gate_work -L work -voptargs="+acc" testbench_sync

add wave *
view structure
view signals
run -all
