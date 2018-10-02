onerror {quit -f}
vlib work
vlog -work work cau1.vo
vlog -work work cau1.vt
vsim -novopt -c -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneii_ver work.cau1_vlg_vec_tst
vcd file -direction cau1.msim.vcd
vcd add -internal cau1_vlg_vec_tst/*
vcd add -internal cau1_vlg_vec_tst/i1/*
add wave /*
run -all
