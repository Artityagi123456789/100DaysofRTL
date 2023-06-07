// 
module decoder_3x8(in,En,D);
input[2:0]in;
input En;
output reg[7:0]D;

//functionality of design..

always@(in or En)
begin

if(En)
case(in)
   3'b000: D=8'b0000_0001;
   3'b001: D=8'b0000_0010;
   3'b010: D=8'b0000_0100;
   3'b011: D=8'b0000_1000;
   3'b100: D=8'b0001_0000;
   3'b101: D=8'b0010_0000;
   3'b110: D=8'b0100_0000;
   3'b111: D=8'b1000_0000;
   endcase
else   
   D=8'b0000_0000;

end
endmodule
