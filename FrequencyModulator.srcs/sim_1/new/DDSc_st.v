`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/05/16 15:41:16
// Design Name: 
// Module Name: DDSc_st
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

//`define carrier_100kHz  200   //   …Ë÷√‘ÿ≤®∆µ¬  

module DDSc_st();
    reg sysclk;
    wire [15:0] m_axis_data_tdata_c;
    wire [15:0] m_axis_data_tdata_b;
FrequencyModulator FM_tb(
     .sysclk(sysclk),
     .m_axis_data_tdata_c(m_axis_data_tdata_c),
     .m_axis_data_tdata_b(m_axis_data_tdata_b)
                          );                                                                  
initial
   begin 
   
        sysclk = 0;
        end
always  #5 sysclk = ~sysclk;
//always  #2.5  s_axis_phase_tdata_c = $signed(m_axis_data_tdata_b) * 57'hfff + 64'h8ffff;
      
        
endmodule







