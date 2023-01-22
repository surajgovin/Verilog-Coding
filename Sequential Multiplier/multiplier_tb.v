
`timescale 1ns / 1ps

module multipler_tb();
reg [3:0] A, X;
reg Clock;
wire [7:0] Result, temp;
wire c;
multiplier uut(Result, X, A, Clock, c, temp);
initial
begin
Clock=0;
end
always
#5 Clock=~Clock;
initial
begin
$monitor($time,"a=%b,x=%b,result=%b",A,X,Result);
#12 A=4'b0000; X=4'b0000;
#12 A=4'b1011; X=4'b0011;
#12 A=4'b1111; X=4'b1111;
#12 A=4'b1110; X=4'b1000;
#12 A=4'b1001; X=4'b0011;
#20 $stop;
end
endmodule