module mux4to2_tb;
reg i0;
reg i1;
reg i2;
reg i3;
reg s0;
reg s1;
wire y;
mux4to2 DUT(.*);
initial begin
    $monitor("$time=%0t io=%b i1=%b i2=%b i3=%b s0=%b s1=%b |y=%b",
    $time,i0,i1,i2,i3,s0,s1,y);
    $dumpfile("mux4to2.vcd");
    $dumpvars(0,mux4to2_tb);
    i0=1; i1=0; i2=1; i3=0; 
    s=0; s=0; #10;
    s=0; s=1; #10;
    s=1; s=0; #10;
    s=1; s=1; #10;
    $finish;
end 
endmodule
