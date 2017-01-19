#compile and load simulation
vlog dataPrint.v
vsim dataPrint

#log all signals and add some signals to waveform window
log {/*}
# add wave {/*} would add all items in top level simulation module
add wave {/*}
force -freeze sim:/dataPrint/clock 0 0, 1 {10 ns} -r 20ns
force -freeze sim:/dataPrint/fps 0 0, 1 {9980 ns} -r 10000ns
#CLOCK_50, fps_enable, resetn, playerX, playerY, b1X, b1Y, b2X, b2Y, writeEn, xToVGA, yToVGA, cToVGA

force resetn 0
force playerX 10001000
force playerY 1001000
force b1X 10001000
force b1Y 1001000
force b2X 10001000
force b2Y 1001000

run 500ns
force resetn 1

run 100000ns

force playerX 11110000
force playerY 1110000
force b1X 0
force b1Y 0
force b2X 10011111
force b2Y 1001111

run 100000ns