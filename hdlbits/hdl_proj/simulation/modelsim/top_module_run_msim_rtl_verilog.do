transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+D:/Workspace/GIT/IC-Design/hdlbits/hdl_proj {D:/Workspace/GIT/IC-Design/hdlbits/hdl_proj/top_module.v}

