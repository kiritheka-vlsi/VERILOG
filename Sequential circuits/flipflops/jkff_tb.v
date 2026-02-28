module jkff_tb;
  
  reg j;
  reg k;
  reg clk;
  reg rst;
  wire q;
   
  jkff DUT(.*);
  
  initial begin
    
    clk = 0;
   forever #5 clk= ~clk;
  end
  
  initial begin
    
    $monitor("$time=%0t| j=%b k=%b |clk=%b rst=%b |q=%b",$time,j,k,clk,rst,q);
    $dumpfile("jkff.vcd");
    $dumpvars(0,jkff_tb);
    
    rst=1; j=0; k=0;#10;
    rst=0;
    j=0; k=0; #10;
    j=0; k=1; #10;
    j=1; k=0; #10;
    j=1; k=1; #10;
    $finish;
    
  end
endmodule
