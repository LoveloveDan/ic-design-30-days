`timescale 1ns/1ps
module tb_dff;
reg clk, d;
wire q;
dff uut(
	.clk(clk),
	.d(d),
	.q(q)
);
always #5 clk = ~clk;
initial begin
clk = 0;
d = 0;

#2 d = 1;
#4;
if (q===1'b1) 
$display("PASS");
else $display("FAIL");
#7 d = 0;
#3;
if (q===1'b0) 
$display("PASS");
else $display("FAIL");
#7 d = 1;
#3;
if (q===1'b1) 
$display("PASS");
else $display("FAIL");
#15 $finish;
end
initial begin
$monitor("Time=%0t clk=%b, d=%b, q=%b", $time, clk, d, q);
end 
endmodule
