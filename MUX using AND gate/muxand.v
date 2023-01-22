`timescale 1ns / 1ps
module muxand_tb();
reg a,b;
wire y;

muxand uut(.a(a),.b(b),.y(y));

initial
begin
$monitor($time,"a=%d,b=%b,y=%d",a,b,y);
a=1'b0;b=1'b0;#100;
a=1'b0;b=1'b1;#100;
a=1'b1;b=1'b0;#100;
a=1'b1;b=1'b1;#100;


end
endmodule
