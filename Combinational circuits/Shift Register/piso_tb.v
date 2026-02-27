module piso_tb;
reg [3:0]pi;
reg clk;
reg rst;
reg load;
wire so;

pison DUT (.*);

initial begin
 $monitor("$time=%0t pi=%b clk=%b rst=%b  load=%b so=%b",
         $time,pi,clk,rst,load,so);
 $dumpfile("Piso.vcd");
 $dumpvars(0,piso_tb);
 end

 always #5 clk=~clk;

 initial begin
clk=0;
  rst = 1; load = 0;
   pi = 4'b0000;
    #10;
    rst = 0; load = 1;
   #10;
   pi = 4'b1010;
    #10;
    load = 0;
    #40;
$finish;
end
endmodule
