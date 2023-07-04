//generate random number for array (example how to use for loop)
//a. declare an integer array of 10 size.
//b. Assign random values between 40 to 49 to the array elements(repetition allowed)

module tb;
integer array[19:0];
integer i;

initial begin
for(i=0; i<=10; i = i+1) begin
array[i] = $urandom_range(40 , 49);
$display("array[%0d]", i,array[i]);
#1;
end
end
endmodule

