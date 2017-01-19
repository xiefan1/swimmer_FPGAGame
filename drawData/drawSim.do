#compile and load simulation
vlog *.v
vsim drawData

#log all signals and add some signals to waveform window
log {/*}
# add wave {/*} would add all items in top level simulation module
add wave {/*}
force -freeze sim:/drawData/CLOCK_50 0 0, 1 {10 ns} -r 20ns

#fps tick every 250 cycles (5000ns) 
#screen size of x = 16, y = 12 (3840ns)
#bubble size of 2x2
#player size of 4x4

force {SW[9]} 0
force {SW[8]} 1
force {SW[7]} 1
force {SW[6]} 0
force {SW[5]} 0
force {SW[4]} 1
force {SW[3]} 1
force {SW[2]} 1
force {SW[1]} 0
force {SW[0]} 0
force {KEY[0]} 1
run 100000ns

force {KEY[0]} 0
run 5000ns

force {SW[9]} 1
force {SW[8]} 1
force {SW[7]} 1
force {SW[6]} 0
force {SW[5]} 0
force {SW[4]} 0
force {SW[3]} 0
force {SW[2]} 0
force {SW[1]} 1
force {SW[0]} 1
force {KEY[0]} 1
run 95000ns