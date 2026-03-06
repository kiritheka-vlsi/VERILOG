module fby8_tb;
reg clk;
reg rst;
wire clkout;
fby8 DUT(.*);
initial begin
        $monitor ("$time =%0t , clk=%b rst=%b clkout =%b ", $time,clk,rst,clkout);
        clk=0;
        forever #5 clk=~clk;
end
initial begin
        rst=1;
        #5;
        rst=0;
        #200;
        $finish;
end
endmodule
