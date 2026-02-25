module mux4to1_tb;
reg i0;
reg i1;
reg i2;
reg i3;
reg s0;
reg s1;
wire y;
mux4to1 DUT(
        .i0(i0),
        .i1(i1),
        .i2(i2),
        .i3(i3),
        .s0(s0),
        .s1(s1),
        .y(y)
);
initial begin
        $monitor("$time=%0t | io=%b i1=%b i2=%b i3=%b s0=%b s1=%b | y=%b",
                $time,i0,i1,i2,i3,s0,s1,y);
        i0=1; i1=1; i2=0; i3=1; s0=0; s1=0;
        #10 s0=0; s1=0;
        #10 s0=0; s1=1;
        #10 s0=1; s1=0;
        #10 s0=1; s1=1;
        #10$finish;

end
endmodule
