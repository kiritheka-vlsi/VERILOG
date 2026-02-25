module muxtypes_tb;
reg i0;
reg i1;
reg s;
wire y;
muxtypes DUT(.*);
initial begin
$monitor("$time=%0t i0=%b i1=%b s=%b y=%b",
$time,i0,i1,s,y);
$dumpfile("muxtypes.vcd");
$dumpvars(0,muxtypes_tb);

s=0;i0=0;i1=0;#10;
s=0;i0=0;i1=1;#10;
s=0;i0=1;i1=0;#10;
s=0;i0=1;i1=1;#10;

s=1;i0=0;i1=0;#10;
s=1;i0=0;i1=1;#10;
s=1;i0=1;i1=0;#10;
s=1;i0=1;i1=1;#10;

$finish;
end
endmodule
