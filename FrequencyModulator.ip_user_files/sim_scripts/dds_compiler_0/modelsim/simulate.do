onbreak {quit -f}
onerror {quit -f}

vsim -voptargs="+acc" -t 1ps -L secureip -L xbip_utils_v3_0_6 -L axi_utils_v2_0_2 -L xbip_pipe_v3_0_2 -L xbip_bram18k_v3_0_2 -L mult_gen_v12_0_11 -L xbip_dsp48_wrapper_v3_0_4 -L xbip_dsp48_addsub_v3_0_2 -L xbip_dsp48_multadd_v3_0_2 -L dds_compiler_v6_0_12 -L xil_defaultlib -lib xil_defaultlib xil_defaultlib.dds_compiler_0

do {wave.do}

view wave
view structure
view signals

do {dds_compiler_0.udo}

run -all

quit -force
