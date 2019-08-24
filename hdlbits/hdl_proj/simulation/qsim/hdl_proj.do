onerror {quit -f}
vlib work
vlog -work work top_module.vo
vlog -work work hdl_proj.vt
vsim -novopt -c -t 1ps -L cycloneiv_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.top_module_vlg_vec_tst
vcd file -direction hdl_proj.msim.vcd
vcd add -internal top_module_vlg_vec_tst/*
vcd add -internal top_module_vlg_vec_tst/i1/*
add wave /*
run -all
