`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.02.2023 12:25:35
// Design Name: 
// Module Name: decoder_2_to_4
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


module decoder_2_to_4(D,A,B,enable);
output[0:3]D;
input A,B;
input enable;

wire A_not,B_not,enable_not;

not
G1 (A_not,A),
G2 (B_not,B),
G3 (enable_not,enable);

nand
G4 (D[0],A_not,B_not,enable_not),
G5 (D[1],A_not,B,enable_not),
G6 (D[2],A,B_not,enable_not),
G7 (D[3],A,B,enable_not);

endmodule
