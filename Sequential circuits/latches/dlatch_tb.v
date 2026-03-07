
module dlatch_tb;
  reg d;
  reg en;
  reg rst;
  wire q;
  
  dlatch DUT (.*);
  initial begin
    $monitor("$time=%0t |en=%b | d=%b |rst=%b|  q=%b",
             $time,en,d,q,rst);
           
      rst=1; en=1; d=1; #10;
      rst=0; en=0; d=0; #10;
      en=0; d=1; #10;
      en=1; d=0; #10;
  $finish;
    
  end 
endmodule
