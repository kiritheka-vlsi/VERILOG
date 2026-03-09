module asyncoun_tb;
reg clk;
reg rst;
wire [2:0]q;
asyncoun DUT (
    .clk(clk),
    .rst(rst),
    .q(q)
);
always #5 clk=~clk;
initial begin
        $monitor("$time=%0t clk=%b rst=%b q=%b",
               $time,clk,rst,q);
        $dumpfile("Asyncoun.vcd");
        $dumpvars(0,asyncoun_tb);
end
initial begin
    clk = 0;
    rst = 0;   // activate reset
    #10;
    rst = 1;
// release reset


#100;
$finish;
end
endmodule
