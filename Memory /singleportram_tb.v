module tb_spram;
parameter datawidth = 32;
parameter addwidth  = 8;
parameter depth     = 16;
reg clk;
reg cs;
reg we;
reg oe;
  reg [addwidth-1:0]add;
wire [datawidth-1:0]data;
reg  [datawidth-1:0]tb_data;

spram #(
    .datawidth(datawidth),
    .addwidth(addwidth),
    .depth(depth)
) DUT (
    .clk(clk),
    .cs(cs),
    .we(we),
    .oe(oe),
    .data(data),
    .add(add)
);
assign data = (!oe) ? tb_data : 'bz;
always #5 clk = ~clk;

initial begin
clk = 0;
cs  = 0;
we  = 0;
oe  = 0;
add = 0;
tb_data = 0;
#10;

cs = 1;
we = 1;
oe = 0;

for(int i=0; i<depth; i=i+1) begin
@(posedge clk);
add = i;
tb_data = i + 100;
end
we = 0;
oe = 1;

for(int i=0; i<depth; i=i+1) begin
@(posedge clk);
add = i;
end
#20;
$finish;
end
endmodule
