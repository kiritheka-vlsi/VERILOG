module demux1to4_tb;
reg d;
reg s;
wire y0,y1,y2,y3;
demux1to4 DUT(.*);
integer i;
initial begin 
    $monitor ("$time=%0t d=%b s=%b  y0=%b y1=%b y2=%b y3=%b ",
    $time,d,s,y0,y1,y2,y3);
    $dumpfile("demux1to4.vcd");
    $dumpvars(0,demux1to4_tb);
   /* d=0;
    s=01; s=0;#10;
    s=0; s=1;#10;
    s=1; s=0;#10;
    s=1; s=11;#10;

    d=1;
    s=10; s=0;#10;
    s=0; s=1;#10;
    s=1; s=01;#10;
    s=1; s=1;#10;*/
    d<=0;
    s<=0;
    for(i=0;i<8;i=i+1)
    begin
        {d,s}= i;
        #10;
    end 
    $finish;
end 
endmodule
