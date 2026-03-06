module fby2_tb;
reg clk;
reg rst;
wire clkout;
fby2 DUT(.*);
initial begin
        $monitor("$time=%0t,clk=%b,rst=%b,clkout=%b",$time,clk,rst,clkout);
        rst=1;
        #10;
        rst=0;
        clk=1;
        #5;
        clk=0;
        #5;
        clk=1;
        #5;
        clk=0;
        #5;
        clk=1;
        #5;
        clk=0;
        #5;
        clk=1;
        #5;
        $finish;
end
endmodule
