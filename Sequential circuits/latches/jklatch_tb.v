// or browse Examples
module jklatch_tb;
  reg j;
  reg k;
  reg en;
  reg rst;
  wire q;
  jklatch DUT (.*);
  initial begin
    $monitor("$time=%0t |en=%b | j=%b k=%b | q=%b",
             $time,en,j,k,q);
           
      en=1; j=0; k=1; #10;
      en=1; j=1; k=1; #10;
      en=1; j=1; k=0; #10;
      en=1; j=0; k=0; #10;
      en=1; j=0; k=1; #10;
      en=1; j=0; k=0; #10;
  $finish;
  end 
endmodule
