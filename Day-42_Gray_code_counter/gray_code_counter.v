module gray_counter(clk,reset,gray_count);
parameter N = 4;
    input clk,reset;
    output reg [N-1:0] gray_count;
   

    reg [N-1:0] bin_count;
   
    always@(posedge clk)
    begin 
        if(reset)
            begin
                gray_count=4'b0000;
                bin_count=4'b0000;
            end
        else
            begin
                bin_count = bin_count + 1;
                gray_count = {bin_count[3],bin_count[3]^bin_count[2],bin_count[2]^bin_count[1],bin_count[1]^bin_count[0]};
            end
    end   
endmodule