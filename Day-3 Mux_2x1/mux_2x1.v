`timescale 1ns / 1ps 
// Module Name: mux_2x1
module mux_2x1(input sel,i0,i1, output out);
	assign out = (~sel&i0)|(sel&i1);
endmodule