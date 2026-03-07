module tlatch_tb;
  
  reg t;
  reg en;
  wire q;
  
  tlatch DUT (.*);
  
  initial begin
    
    $monitor("$time=%0t |en=%b | t=%b | q=%b",
             $time,en,t,q);  
    
    en=1; t=1; #10; // reset 
    en=1; t=0; #10; // disabled
    en=1; t=1; #10; // disabled 
    en=1; t=0; #10; // enabled,T=0 (hold) 
    en=1; t=1; #10; // enabled, T=1 (toggle)
    en=1; t=1; #10; // toggle again 
    en=0; t=0; #10; // disabled (hold)
    en=1; t=0; #10; // enabled, T=0 (hold)
    
  $finish;
    
  end 
endmodule
