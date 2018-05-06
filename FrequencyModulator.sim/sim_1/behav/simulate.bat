@echo off
set xv_path=D:\\WorkSoftware\\Xilinx\\Vivado\\2016.2\\bin
call %xv_path%/xsim DDSc_st_behav -key {Behavioral:sim_1:Functional:DDSc_st} -tclbatch DDSc_st.tcl -log simulate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
