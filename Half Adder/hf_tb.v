`timescale 1ns / 1ps
module hf_tb();
reg a,b;
wire sum,cout;

hf_add hf_tb(.a(a),.b(b),.sum(sum),.cout(cout));

initial 
begin
$monitor($time ,"a=%d, b=%d, sum=%d, cout=%d",a,b,sum,cout);
a=1'b0;
b=1'b0;
#100;
a=1'b0;
b=1'b1;
#100;
a=1'b1;
b=1'b0;
#100;
a=1'b1;
b=1'b1;
#100;
$finish;


end
endmodule
