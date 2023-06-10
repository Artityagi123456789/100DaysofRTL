//verilog code for 4-bit Binary to Gray code converter using bhaviour modeling...

module binary_gray(b,g);
input[3:0]b;
output reg [3:0]g;

always@(b)
begin
g[0]=b[1]^b[0];
g[1]=b[2]^b[1];
g[2]=b[3]^b[2];
g[3]=b[3];
end

endmodule


