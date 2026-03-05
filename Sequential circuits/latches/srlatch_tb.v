module srlatch_tb;
  reg s;
  reg r;
  reg en;
  reg rst;
  wire q;
  srlatch DUT (.*);
  initial begin
    $monitor("$time=%0t s=%b r=%b en=%b rst=%b q=%b",
             $time,s,r,en,rst,q);
    en=1; s=0; r=1; #10;
     s=1; r=1; #10;
     s=1; r=0; #10;
     s=0; r=0; #10;
     s=0; r=1; #10;
     s=0; r=0; #10;
  $finish;
  end 
endmodule
