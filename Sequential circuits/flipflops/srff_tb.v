// Code your testbench here
// or browse Examples
module srff_tb;
  reg s;
  reg r;
  reg clk;
  reg rst;
  wire q;
 
  
  srff DUT(.*);
  
  initial begin
    
    clk = 0;
   forever #5 clk= ~clk;
  end
  
  initial begin
    
    $monitor("$time=%0t| s=%b r=%b |clk=%b rst=%b |q=%b",
             $time,s,r,clk,rst,q);
    rst=1; s=0; r=0;#10;
    rst=0;
    s=0; r=0;#10;
    s=0; r=1; #10;
    s=1; r=0; #10;
    s=1; r=1; #10;
    $finish;
  end
endmodule
