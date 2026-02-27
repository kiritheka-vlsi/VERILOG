module siso_tb;
  reg clk;
  reg rst;
  reg drt;
  reg lft;
  reg rgt;
  wire [3:0]q;
  
  siso DUT (.*);
  always #5clk=~clk;
  
  initial begin 
      $monitor("$time=%0t  clk=%b rst=%b drt=%b lft=%b rgt=%b q=%b",
             $time,clk,rst,drt,lft,rgt,q);
    
    $dumpfile("siso.vcd");
    $dumpvars(0,siso_tb);
  end
  initial begin  
clk=1;rst=1;lft=0; rgt=0;drt=1;#10;
   
    drt=1;#10;
      
    lft=1; rst=0;#10;
    lft=0; rst=0;#10;
    lft=1; rst=0;#10;
    lft=0; rst=0;#10;
    
    
    drt=0;#10;
      
    rgt=1; rst=0;#10;
    rgt=0; rst=0;#10;
    rgt=1; rst=0;#10;
    rgt=0; rst=0;#10;
    
   
   
    $finish;
  end
endmodule
