`include "Full_sub_Halfsub.v"

module tb;
wire borrow,diff;
reg a,b;
reg bin;

full_sub dut(.borrow(borrow), .diff(diff), .a(a), .b(b),.bin(bin));

initial begin

repeat(8)
begin
a=$random;
b=$random;
bin=$random;
#1;

$monitor("inputs are: ");
$monitor("a=%b\tb=%b\tbin=%b\tborrow=%b\tdiff=%b " ,a,b,bin,borrow,diff);

end
end

endmodule
