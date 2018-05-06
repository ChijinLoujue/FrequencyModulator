`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/05/16 14:36:14
// Design Name: 
// Module Name: FrequencyModulator
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


module FrequencyModulator(
input sysclk,
output [15:0] m_axis_data_tdata_c,
output [15:0] m_axis_data_tdata_b
                          );
//reg sysclk;
/*******************************PLL倍频到400MHz***********************************************************/                    
//      reg reset = 0;
   //   wire aclk;  
//clk_wiz_0 clk_wiz_400MHz (
//                         // Clock in ports
//                          .clk_in1(sysclk),      // input clk_in1
//                          // Clock out ports
//                          .clk_out1(aclk),     // output clk_out1
//                          // Status and control signals
//                          .reset(reset)// input reset
//                          //.locked(locked)
//                          );      // output locked
   /*************************************************************************************************************/       
  
  /************************************DDS输出基带信号***************************************************************/     
                                  
      reg s_axis_config_tvalid_b = 1  ;
      reg [31 : 0] s_axis_config_tdata_b = 32'hD198C; //D198C = baseband_10kHz ;     D198C时大概10k
      wire m_axis_data_tvalid_b   ; 
    //  wire [15 : 0] m_axis_data_tdata_b   ;  
      wire m_axis_phase_tvalid_b ;   
      wire [31 : 0] m_axis_phase_tdata_b ;     
          
dds_compiler_0 dds_compiler_baseband (
          .aclk(sysclk),                                  // input wire aclk
          .s_axis_config_tvalid(s_axis_config_tvalid_b),  // input wire s_axis_config_tvalid
          .s_axis_config_tdata(s_axis_config_tdata_b),    // input wire [31 : 0] s_axis_config_tdata
          .m_axis_data_tvalid(m_axis_data_tvalid_b),      // output wire m_axis_data_tvalid
          .m_axis_data_tdata(m_axis_data_tdata_b),        // output wire [15 : 0] m_axis_data_tdata
          .m_axis_phase_tvalid(m_axis_phase_tvalid_b),    // output wire m_axis_phase_tvalid
          .m_axis_phase_tdata(m_axis_phase_tdata_b)      // output wire [31 : 0] m_axis_phase_tdata
        );
  /*************************************************************************************/ 
  
   /************************************DDS输出基带信号***************************************************************/ 
//reg [31 : 0] s_axis_config_tdata_b = 32'hD1A0A  ; //    D1A0A   时为10Hz
////wire signed [15 : 0] m_axis_data_tdata_b;
//Signal_in Signal_in_sin(
//       .sysclk(sysclk),
//       .FreCrlWord(s_axis_config_tdata_b),
//       .douta(m_axis_data_tdata_b)
//       );
   
/**************************************************************************************/
  
/*********************乘法器*******************/  
  wire signed [31:0] FrequencyOffset;
mult_gen_0 mult_FO (
    .CLK(sysclk),  // input wire CLK
    .A(m_axis_data_tdata_b),      // input wire [15 : 0] A
    .B(16'hfff),      // input wire [15 : 0] B
    .P(FrequencyOffset)      // output wire [31 : 0] P
  );
  /********************加法器********************/   
  reg CE = 1;
  wire [31 : 0] s_axis_config_tdata_c  ;
c_addsub_0 add_FM (
    .A(FrequencyOffset),      // input wire [31 : 0] A
    .B(32'hfffffff),      // input wire [31 : 0] B
    .CLK(sysclk),  // input wire CLK
    .CE(CE),    // input wire CE
    .S(s_axis_config_tdata_c)      // output wire [31 : 0] S
  );
  /****************************************/       
  
 /************************************DDS输出载波信号***************************************************************/                

 reg s_axis_config_tvalid_c   = 1;
 //wire [31 : 0] s_axis_config_tdata_c  ;
 wire m_axis_data_tvalid_c   ; 
//wire [15 : 0] m_axis_data_tdata_c   ;  
 wire m_axis_phase_tvalid_c ;   
 wire [31 : 0] m_axis_phase_tdata_c ;     
     
dds_compiler_0 dds_compiler_carrier (
     .aclk(sysclk),                                  // input wire aclk
     .s_axis_config_tvalid(s_axis_config_tvalid_c),  // input wire s_axis_config_tvalid
     .s_axis_config_tdata(s_axis_config_tdata_c),    // input wire [31 : 0] s_axis_config_tdata
     .m_axis_data_tvalid(m_axis_data_tvalid_c),      // output wire m_axis_data_tvalid
     .m_axis_data_tdata(m_axis_data_tdata_c),        // output wire [15 : 0] m_axis_data_tdata
     .m_axis_phase_tvalid(m_axis_phase_tvalid_c),    // output wire m_axis_phase_tvalid
     .m_axis_phase_tdata(m_axis_phase_tdata_c)      // output wire [31 : 0] m_axis_phase_tdata
   );
  /*************************************************************************************************************/ 

endmodule







