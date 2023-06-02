
module Nbit_adder(a,b,cin,sum,cout);
parameter N = 32;
input[31:0] a,b;
input cin;
output[31:0]sum;
output wire cout;
wire[31:0]c;

genvar i;

assign c[0]=cin;
assign cout=c[4];

for(i=0;i<32; i=i+1) begin
//one_bit_fulladder fa1(a[0],b[0],cin,cout[0],sum[0]); 
one_bit_fulladder fa(a[i],b[i],c[i],sum[i],c[i+1]);
end

endmodule


module one_bit_fulladder(a,b,cin,cout,sum);

input a,b;
input cin;
output sum;
output cout;

assign sum = a^b^cin;
assign cout = a&b|b&cin|cin&a;

endmodule


