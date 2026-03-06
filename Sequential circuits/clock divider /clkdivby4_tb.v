module fby4_tb;
reg clk;
reg rst;
wire clkout;
 fby4 DUT(.*);
 initial begin
         $monitor ("$time =%0t , clk=%b rst=%b clkout =%b ",
                 $time,clk,rst,clkout);
         clk=0;
         forever #5 clk=~clk;
 end
 initial begin
 rst=1;#5;
 rst=0;
 #100; $finish;
end
 endmodule
