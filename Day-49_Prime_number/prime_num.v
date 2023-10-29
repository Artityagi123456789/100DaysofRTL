module tb;
integer i,j,num,prime_count;
reg prime_f;

initial begin
	num = 100;
	prime_count =0;
	for(i=2;i<=num;i=i+1)begin
		prime_f = 1;
		for(j=2;j<=i-1;j=j+1)begin
			if(i%j==0)begin
				prime_f = 0;
				j=i;
			end
		end	
	if(prime_f == 1)begin
		$display("prime number =%0d",i);
		prime_count = prime_count+1;
	end
  end	
	$display("prime number count = %0d",prime_count);
end
endmodule

