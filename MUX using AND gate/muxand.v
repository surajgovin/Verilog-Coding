`timescale 1ns / 1ps
module muxand(a,b,y);
input a,b;
output reg y;
always@(a,b)
begin
if(a==0)
    y=b;
else 
    y=1;
end 
endmodule
