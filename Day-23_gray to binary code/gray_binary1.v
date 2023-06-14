`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.06.2023 16:37:05
// Design Name: 
// Module Name: gray_binary1
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


module gray_binary1(G,bin);
input [3:0]G;  
output [3:0]bin;//binary input

assign bin[3] = (G[3]);
assign bin[2] = (G[3] ^ G[2]);
assign bin[1] = (G[2] ^ G[1]);
assign bin[0] = (G[1] ^ G[0]);

endmodule

