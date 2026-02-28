module dff_tb;
  
  reg d;
  reg clk;
  reg rst;
  wire q;
   
  dff DUT(.*);
  
  initial begin
    
    clk = 0;
   forever #5 clk= ~clk;
  end
  
  initial begin
    
    $monitor("$time=%0t| d=%b |clk=%b rst=%b |q=%b",$time,d,clk,rst,q);
    $dumpfile("dff.vcd");
    $dumpvars(0,dff_tb);
    
    rst=1; d=0;#10;
    d=1;#10;
    rst=0;
    d=1;#20;
    d=0; 
    
    $finish;
