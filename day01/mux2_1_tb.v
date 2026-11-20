`timescale 1ns/1ps
module mux2_1_tb;
reg a, b, s, expected;
wire y;
mux2_1 uut(
	.a(a),
	.b(b),
	.s(s),
	.y(y)
);
integer i;
initial begin
$monitor("Time=%0t a=%b b=%b s=%b y=%b", $time, a, b, s, y);
$dumpfile("mux2.vcd");
$dumpvars(0, mux2_1_tb);
a = 1;
b = 0;
s = 0;

#10; 

a = 1;
b = 0;
s = 0;

#10;
a=1;
b=0;
s=1;
#1;
if (y !== 1'b0)
    $display("FAIL");
else
    $display("PASS");
#10;
for(i=0; i<8; i++) begin
	{a, b, s} = i[2:0];
	expected = s ? b : a; 
#10;
	if(expected !== y)
$display("FAIL");
else $display("PASS"); 
end
$finish;
end
endmodule
