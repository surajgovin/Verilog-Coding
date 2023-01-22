`timescale 1ns / 1ps
module fulladder_tb();
reg a,b,cin;
wire sum,cout;

fulladder uut(.a(a),.b(b),.cin(cin),.sum(sum),.cout(cout));

initial 
begin
$monitor($time ," a=%d, b=%d,cin=%d, sum=%d,cout=%d",a,b,cin,sum,cout);
a=0;b=0;cin=0;#100;
a=0;b=0;cin=1;#100;
a=0;b=1;cin=0;#100;
a=1;b=0;cin=0;#100;
a=1;b=0;cin=1;#100;
a=1;b=1;cin=0;#100;
a=1;b=1;cin=1;#100;
$finish;
end
endmodule
