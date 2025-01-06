module frequency_divider_tb;
reg clk;
reg rst;
wire out_clk;
frequency_divider_rtl uut (
.clk(clk),
.rst(rst),
.out_clk(out_clk)
);
always begin
#5 clk = ~clk;
end

initial begin
clk = 0;
rst = 0;
$monitor("Time: %0t | rst: %b | out_clk: %b", $time, rst,
out_clk);

rst = 1;
#15;
rst = 0;
#10;
rst = 1;
#10;
rst = 0;
#15;
$finish;
end
endmodule