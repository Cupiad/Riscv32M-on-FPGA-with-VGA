transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

asim +access +r +m+dmem_bram  -L xpm -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.dmem_bram xil_defaultlib.glbl

do {dmem_bram.udo}

run 1000ns

endsim

quit -force
