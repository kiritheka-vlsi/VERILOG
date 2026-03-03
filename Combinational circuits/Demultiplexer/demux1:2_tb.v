module demux1to2_tb;
reg d;
reg s;
wire y0,y1;

demux1to2 DUT(.*);

initial begin

    $monitor("$time=%0t d=%b s=%b | y0=%b y1=%b",
    $time,d,s,y0,y1);
    $dumpfile("demux1to2.vcd");
    $dumpvars(0,demux1to2_tb);

    d=0; s=0;#10;
    d=0; s=1;#10;
    d=1; s=0; #10;
    d=1; s=1; #10;

    $finish;
end 
endmodule
