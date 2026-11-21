`timescale 1ns/1ps
module dff(d, clk, q);
input d, clk;
output reg q;
always @(posedge clk) 
begin
	q<=d;
end 
endmodule

