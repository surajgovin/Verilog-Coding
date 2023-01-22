`timescale 1ns / 1ps
module mux8to1_tb();
reg [7:0]in;
reg [2:0]sel;
wire out;

mux8to1 uut(.in(in),.sel(sel),.out(out));

initial
begin
$monitor($time,"in=%b,sel=%b,out=%b",in,sel,out);
in=8'b00011010;
sel=3'b000;
repeat(7)
begin
#10; sel=sel+1;
end
#10; $finish;
end
endmodule
