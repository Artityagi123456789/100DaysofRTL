`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.05.2023 13:10:27
// Design Name: 
// Module Name: mux8x1_2x1
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

module mux_8x1_using_2x1_muxes(D,S,Y

    );
    input [7:0]D;
    input [2:0]S;
    output Y;
    wire [3:0]A;
    wire [1:0]B;
    MUX_2x1 mux_1(D[1:0],A[0],S[0]);
    MUX_2x1 mux_2(D[3:2],A[1],S[0]);
    MUX_2x1 mux_3(D[5:4],A[2],S[0]);
    MUX_2x1 mux_4(D[7:6],A[3],S[0]);
    
    MUX_2x1 mux_5(A[1:0],B[0],S[1]);
    MUX_2x1 mux_6(A[3:2],B[1],S[1]);
    
    MUX_2x1 mux_7(B[1:0],Y,S[2]);
endmodule
module MUX_2x1(I,Y,S

    );
    input [1:0]I;
    input S;
    output Y;
    assign Y = (S == 0)?I[0]:I[1];
endmodule
