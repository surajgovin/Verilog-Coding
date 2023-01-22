`timescale 1ns / 1ps
module alu4bit(a,b,sel,en,result);
input [3:0]a,b,sel;
input en;
output reg [3:0]result;

always@(a,b,sel,en)
begin
if(en==0)
    result=4'b0000;
else
case(sel)
    4'b0000:result=a+b;
    4'b0001:result=a-b;
    4'b0010:result=a*b;
    4'b0011:result=a/b;
    4'b0100:result=~a;
    4'b0101:result=a&b;
    4'b0110:result=a|b;
    4'b0111:result=~(a&b);
    4'b1000:result=~(a|b);
    4'b1001:result=a^b;
    4'b1010:result=~(a^b);
    4'b1011:result=a%b;
    4'b1100:result=a+1;
    4'b1101:result=a-1;
    4'b1110:result=!a;
    4'b1111:result=a*b;
    default:result=4'b0000;
    endcase
end
endmodule
