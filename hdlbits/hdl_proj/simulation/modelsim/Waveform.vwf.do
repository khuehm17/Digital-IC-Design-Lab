vlog -work work D:/Workspace/GIT/IC-Design/hdlbits/hdl_proj/simulation/modelsim/Waveform.vwf.vt
vsim -novopt -c -t 1ps -L cycloneiv_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.top_module_vlg_vec_tst
onerror {resume}
add wave {top_module_vlg_vec_tst/i1/x1}
add wave {top_module_vlg_vec_tst/i1/x2}
add wave {top_module_vlg_vec_tst/i1/x3}
add wave {top_module_vlg_vec_tst/i1/y}
run -all
