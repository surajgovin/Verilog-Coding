`timescale 1ns / 1ps
module muxand(a,b,y);
input a,b;
output reg y;
always@(a,b)
begin
if(a==0)
    y=0;
else 
    y=b;
end 
endmodule
