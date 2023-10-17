`timescale 1ns / 1ps
// Module Name: ALU
module ALU #(parameter n=16 )(
input signed[n-1:0]a,b,
input [2:0]opcode,
output reg [2*n-1:0]result,
output reg carry);

always@(*)begin
    case(opcode)
        3'b000: {carry,result} = a+b;
        3'b001: {carry,result} = a-b;
        3'b010: result = a*b;
        3'b011: result = a/b;
        3'b100: result = a|b;
        3'b101: result = a&b;
        3'b110: result = ~a;
        3'b111: result = ~b;
     endcase 
end  
endmodule
