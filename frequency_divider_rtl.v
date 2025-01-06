
module frequency_divider_rtl(
input clk,
input rst,
output out_clk);
parameter N=3;
reg a_out;
reg [2:0]d_count;
assign out_clk=a_out;
always@(posedge clk)
begin
if(rst)
d_count <= 3'd0;
else if(d_count==N-1)
d_count <= 3'd0;
else d_count <= d_count+1'b1;
end
always@(posedge clk)
begin
if(rst)
a_out <= 1'b0;
else if(d_count ==0 || d_count==N/2)
a_out <= ~a_out;
else
a_out <= a_out;
end
endmodule