module tff_tb;
  
  reg t;
  reg clk;
  reg rst;
  wire q;
   
  tff DUT(.*);
  
  initial begin
    
    clk = 0;
   forever #5 clk= ~clk;
  end
  
  initial begin
    
    $monitor("$time=%0t| t=%b |clk=%b rst=%b |q=%b",$time,t,clk,rst,q);
    $dumpfile("tff.vcd");
    $dumpvars(0,tff_tb);
    
    rst=1; t=0;#10;
    t=1;#10;
    rst=0;
    t=1;#20;
    t=0; 
    
    $finish;
    
  end
endmodule
