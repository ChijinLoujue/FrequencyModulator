vlib work
vlib riviera

vlib riviera/xbip_utils_v3_0_6
vlib riviera/axi_utils_v2_0_2
vlib riviera/xbip_pipe_v3_0_2
vlib riviera/xbip_bram18k_v3_0_2
vlib riviera/mult_gen_v12_0_11
vlib riviera/xbip_dsp48_wrapper_v3_0_4
vlib riviera/xbip_dsp48_addsub_v3_0_2
vlib riviera/xbip_dsp48_multadd_v3_0_2
vlib riviera/dds_compiler_v6_0_12
vlib riviera/xil_defaultlib

vmap xbip_utils_v3_0_6 riviera/xbip_utils_v3_0_6
vmap axi_utils_v2_0_2 riviera/axi_utils_v2_0_2
vmap xbip_pipe_v3_0_2 riviera/xbip_pipe_v3_0_2
vmap xbip_bram18k_v3_0_2 riviera/xbip_bram18k_v3_0_2
vmap mult_gen_v12_0_11 riviera/mult_gen_v12_0_11
vmap xbip_dsp48_wrapper_v3_0_4 riviera/xbip_dsp48_wrapper_v3_0_4
vmap xbip_dsp48_addsub_v3_0_2 riviera/xbip_dsp48_addsub_v3_0_2
vmap xbip_dsp48_multadd_v3_0_2 riviera/xbip_dsp48_multadd_v3_0_2
vmap dds_compiler_v6_0_12 riviera/dds_compiler_v6_0_12
vmap xil_defaultlib riviera/xil_defaultlib

vcom -work xbip_utils_v3_0_6 -93 \
"../../../ipstatic/xbip_utils_v3_0_6/hdl/xbip_utils_v3_0_vh_rfs.vhd" \

vcom -work axi_utils_v2_0_2 -93 \
"../../../ipstatic/axi_utils_v2_0_2/hdl/axi_utils_v2_0_vh_rfs.vhd" \

vcom -work xbip_pipe_v3_0_2 -93 \
"../../../ipstatic/xbip_pipe_v3_0_2/hdl/xbip_pipe_v3_0_vh_rfs.vhd" \
"../../../ipstatic/xbip_pipe_v3_0_2/hdl/xbip_pipe_v3_0.vhd" \

vcom -work xbip_bram18k_v3_0_2 -93 \
"../../../ipstatic/xbip_bram18k_v3_0_2/hdl/xbip_bram18k_v3_0_vh_rfs.vhd" \
"../../../ipstatic/xbip_bram18k_v3_0_2/hdl/xbip_bram18k_v3_0.vhd" \

vcom -work mult_gen_v12_0_11 -93 \
"../../../ipstatic/mult_gen_v12_0_11/hdl/mult_gen_v12_0_vh_rfs.vhd" \
"../../../ipstatic/mult_gen_v12_0_11/hdl/mult_gen_v12_0.vhd" \

vcom -work xbip_dsp48_wrapper_v3_0_4 -93 \
"../../../ipstatic/xbip_dsp48_wrapper_v3_0_4/hdl/xbip_dsp48_wrapper_v3_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_addsub_v3_0_2 -93 \
"../../../ipstatic/xbip_dsp48_addsub_v3_0_2/hdl/xbip_dsp48_addsub_v3_0_vh_rfs.vhd" \
"../../../ipstatic/xbip_dsp48_addsub_v3_0_2/hdl/xbip_dsp48_addsub_v3_0.vhd" \

vcom -work xbip_dsp48_multadd_v3_0_2 -93 \
"../../../ipstatic/xbip_dsp48_multadd_v3_0_2/hdl/xbip_dsp48_multadd_v3_0_vh_rfs.vhd" \
"../../../ipstatic/xbip_dsp48_multadd_v3_0_2/hdl/xbip_dsp48_multadd_v3_0.vhd" \

vcom -work dds_compiler_v6_0_12 -93 \
"../../../ipstatic/dds_compiler_v6_0_12/hdl/dds_compiler_v6_0_vh_rfs.vhd" \
"../../../ipstatic/dds_compiler_v6_0_12/hdl/dds_compiler_v6_0.vhd" \

vcom -work xil_defaultlib -93 \
"../../../../FrequencyModulator.srcs/sources_1/ip/dds_compiler_0/sim/dds_compiler_0.vhd" \

