//Q7(ii): implement using non-blocking 

module tb;
integer a,b;
initial begin
a = 15;
b = 30;
$display("value before swapping a = %0d, b=%0d",a,b,$time);
end

initial begin
a <= b;
b <= a;
#5;
$display("value after swapping a = %0d, b=%0d",a,b,$time);
end
endmodule
