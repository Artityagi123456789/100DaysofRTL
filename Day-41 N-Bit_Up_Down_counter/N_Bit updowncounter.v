`timescale 1ns / 1ps
// Module Name: N_Bit updowncounter
module N_Bit_updowncounter(clk,reset ,UpOrDown,count);
     parameter N = 4;   
    //input ports and their sizes
    input clk,reset,UpOrDown;
    //output ports and their size
    output reg[N-1 : 0] count; 
    
     always @(posedge(clk) or posedge(reset))
     begin
        if(reset == 1) 
            count <= 0;
        else    
            if(UpOrDown == 1)   //Up mode selected
                if(count == 2*N-1)
                    count <= 0;
                else
                    count <= count + 1; //Incremend Counter
            else  //Down mode selected
                if(count == 0)
                    count <= 2*N-1;
                else
                    count <= count - 1; //Decrement counter
     end    
    
endmodule
 
