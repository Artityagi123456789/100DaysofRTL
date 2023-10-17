`timescale 1ns / 1ps
// Module Name: tb_ALu

module tb;
parameter n=16;
reg signed [n-1:0]a,b;
reg [2:0]opcode;
wire [2*n-1:0]result;
wire carry;

ALU #(.n(n)) dut(.a(a), .b(b), .opcode(opcode), .result(result), .carry(carry));

initial begin
 opcode=3'b000;
 a=16'b0101100010001011;
 b=16'b0011110010101011; #50;
 a=16'b1101100010001011;
 b=16'b1101110010101011; #50;
 a=16'b1101100010001011;
  b=16'b1101110010101011; #50;
  a=16'b1101100010001011;
  b=16'b1101110010101011; #50;
  
  opcode=3'b001;
  a=16'b0101100010001011;
  b=16'b0011110010101011; #50;
  a=16'b1101100010001011;
  b=16'b1101110010101011; #50;
  a=16'b1101100010001011;
  b=16'b1101110010101011; #50;
  a=16'b1101100010001011;
  b=16'b1101110010101011; #50;
  
  a=16'd10;
  b=16'd5;
  opcode=3'b010; #50;
  
   a=16'd10;
   b=16'd14;
   opcode=3'b011; #50;
    a=16'd13;
     b=16'd14;
     opcode=3'b100; #50;
      a=16'd10;
       b=16'd14;
       opcode=3'b101; #50;
        a=16'd10;
         b=16'd14;
         opcode=3'b011; #50;
          a=16'd10;
           b=16'd14;
           opcode=3'b111; #50;
           
        $display("t=%0t,a=%0d,b=%0d,opcode=%0d,result=%0d,carry=%0d",$time,a,b,opcode,result,carry);  
           
end
endmodule
