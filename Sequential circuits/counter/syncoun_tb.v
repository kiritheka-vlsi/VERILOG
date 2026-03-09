module syncoun_tb;
reg clk;
reg rst;
wire [2:0]q;

syncoun DUT (.clk,
        .rst,
        .q);

always #5 clk=~clk;

initial begin
$monitor("$time=0%t clk=%b rst=%b q=%b",
        $time,clk,rst,q);
$dumpfile("Syncoun.vcd");
$dumpvars(0,syncoun_tb);
end
initial begin
        clk=0;
        #5;
        rst=1;
        #10;
        rst=0;
        #100;
        $finish;
end
endmodule
