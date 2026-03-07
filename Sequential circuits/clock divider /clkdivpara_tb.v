module clkdvN_tb;

parameter n = 8;

reg clk;
reg rst;
wire clkout;
clkdvN #(4) DUT (
    .clk(clk),
    .rst(rst),
    .clkout(clkout)
);
initial begin
    clk = 0;
    forever #5 clk = ~clk;
end
initial begin
    $monitor("time=%0t clk=%b rst=%b clkout=%b",
              $time, clk, rst, clkout);

    rst = 1;
    #5 rst = 0;

    #200;
    $finish;
end

endmodule
