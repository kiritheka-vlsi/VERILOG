module ADDSUB_tb;
reg a;
reg b;
reg mode;
wire add;
wire sub; 

ADDSUB DUT(.*);

initial begin
    $dumpfile("ADDSUB.vcd");
    $dumpvars(0,ADDSUB_tb);
    $monitor("$time=%0t add=%b sub=%b",
    $time,add,sub);
    a=0; b=1; mode=1;#10;
    a=1; b=1; mode=0;#10;
    $finish;
end 
endmodule
