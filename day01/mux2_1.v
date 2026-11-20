`timescale 1ns/1ps
module mux2_1(s, a, b, y);
input a, b, s;
output y;
assign y = (~s&a)|(s&b);
endmodule 
