transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

asim +access +r +m+picture  -L xpm -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.picture xil_defaultlib.glbl

do {picture.udo}

run 1000ns

endsim

quit -force
