`timescale 1ns / 1ps
module hf_add(a,b,sum,cout);
input a,b;
output sum,cout;

assign sum=a^b;
assign cout=a&b;
endmodule
