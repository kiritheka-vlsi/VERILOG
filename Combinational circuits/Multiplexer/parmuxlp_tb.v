module paramux1_tb#(
    parameter n = 16;
    parameter m = 4;
);
reg [n:0]in;
reg [m:0]sel;
wire y;

paramux1 DUT(.*);

integer i;

 initial begin
    $monitor("$time=%0t in=%b s=%b y=%b",
    $time,in,s,y);
    $dumpfile("paramux1.vcd");
    $dumpvars(0,paramux1_tb);
 
 in=16'0001101010101001;
 for(i=0;i<=n;i=i+1)
 s=i[m:0];

 if(y!==in[sel])
   $display("$time=%0t in=%b s=%b y=%b",
    $time,in,s,y);
    else
    $display("$time=%0t in=%b s=%b y=%b",
    $time,in,s,y);
 end
 endmodule
