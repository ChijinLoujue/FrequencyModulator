@echo off
set xv_path=D:\\WorkSoftware\\Xilinx\\Vivado\\2016.2\\bin
call %xv_path%/xelab  -wto 2fc9dda731ed4659890e9739943f9fa2 -m64 --debug typical --relax --mt 2 -L xil_defaultlib -L xpm -L xbip_utils_v3_0_6 -L xbip_pipe_v3_0_2 -L xbip_bram18k_v3_0_2 -L mult_gen_v12_0_11 -L axi_utils_v2_0_2 -L xbip_dsp48_wrapper_v3_0_4 -L xbip_dsp48_addsub_v3_0_2 -L xbip_dsp48_multadd_v3_0_2 -L dds_compiler_v6_0_12 -L c_reg_fd_v12_0_2 -L xbip_addsub_v3_0_2 -L c_addsub_v12_0_9 -L unisims_ver -L unimacro_ver -L secureip --snapshot DDSc_st_behav xil_defaultlib.DDSc_st xil_defaultlib.glbl -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
