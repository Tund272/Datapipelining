onerror {quit -f}
vlib work
vlog -work work DatapathPipelining.vo
vlog -work work DatapathPipelining.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.DatapathPipelining_vlg_vec_tst
vcd file -direction DatapathPipelining.msim.vcd
vcd add -internal DatapathPipelining_vlg_vec_tst/*
vcd add -internal DatapathPipelining_vlg_vec_tst/i1/*
add wave /*
run -all
