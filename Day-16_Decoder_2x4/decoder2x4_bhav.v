//implement 2x4_decoder using Behavioral Modeling...


module decoder_2x4(en ,a ,b ,D);
input en,a,b;
output reg [3:0]D;

always@(en,a,b)
begin
if(en==0)
begin
if(a==1'b0 & b==1'b0)  D=4'b1110;
else if(a==1'b0 & b==1'b1)  D=4'b1101;
else if(a==1'b1 & b==1'b0)  D=4'b1011;
else if(a==1'b1 & b==1'b1)  D=4'b0111;
else D =4'b0000;
end
else
D=4'b1111;
end

endmodule


