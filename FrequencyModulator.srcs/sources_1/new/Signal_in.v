`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/05/21 09:47:56
// Design Name: 
// Module Name: Signal_in
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


module Signal_in(
    input sysclk,
    input [31:0] FreCrlWord,
    output [15:0]douta
    );
    reg [31:0] ROM = 0;
    wire [11:0]addra;
blk_mem_gen_sin Signal_sin (
      .clka(sysclk),    // input wire clka
      .addra(addra),  // input wire [11 : 0] addra
      .douta(douta)  // output wire [15 : 0] douta
    );
    always@(posedge sysclk)  ROM = ROM + FreCrlWord;
    assign addra = ROM[31:20];
    
    
    
endmodule
