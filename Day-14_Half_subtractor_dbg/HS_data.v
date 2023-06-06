`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.05.2023 13:58:18
// Design Name: 
// Module Name: HS_data
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


module HS_data(a,b,diff,borrw);
input a,b;
output diff,borrw;

assign diff = a^b;
assign borrw = ~a&b;


endmodule
