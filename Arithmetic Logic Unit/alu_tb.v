`timescale 1ns / 1ps
module alu_tb();
reg [3:0]a,b,sel;
reg en;
wire [3:0]result;

alu4bit uut(.a(a),.b(b),.sel(sel),.en(en),.result(result));

initial 
begin
$monitor($time," a=%d,b=%d,sel=%d,result=%d",a,b,sel,result);
a=4'b0010;b=4'b0100;en=0;#50;
en=1;#50;
sel=4'b0000;
	#50 sel=4'b0001;
	#50 sel=4'b0010;
	#50 sel=4'b0011;
	#50 sel=4'b0100;
	#50 sel=4'b0101;
	#50 sel=4'b0110;
	#50 sel=4'b0111;
	#50 sel=4'b1000;
	#50 sel=4'b1001;
	#50 sel=4'b1010;
	#50 sel=4'b1011;
	#50 sel=4'b1100;
	#50 sel=4'b1101;
	#50 sel=4'b1110;
	#50 sel=4'b1111;


end
endmodule
