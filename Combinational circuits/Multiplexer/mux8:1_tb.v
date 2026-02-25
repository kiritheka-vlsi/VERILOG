module mux8to1_tb;
reg i0;
reg i1;
reg i2;
reg i3;
reg i4;
reg i5;
reg i6;
reg i7;
reg s0;
reg s1;
reg s2;
wire y;
mux8to1 DUT (
        .i0(i0),
        .i1(i1),
        .i2(i2),
        .i3(i3),
        .i4(i4),
        .i5(i5),
        .i6(i6),
        .i7(i7),
        .s0(s0),
        .s1(s1),
        .s2(s2),
        .y(y)
);
initial begin
        $monitor("$time=%0t i0=%b i1=%b i2=%b i3=%b i4=%b i5=%b i6=%b i7=%b s0=%b s1=%b s2=%b |y=%b",
                  $time ,i0,i1,i2,i3,i4,i5,i6,i7,s0,s1,s2,y);

         i0=0; i1=1; i2=0; i3=1; i4=0; i5=1; i6=1; i7=0;
         #5 s0=0; s1=0; s2=0;
         #5 s0=0; s1=0; s2=1;
         #5 s0=0; s1=1; s2=0;
         #5 s0=0; s1=1; s2=1;
         #5 s0=1; s1=0; s2=0;
         #5 s0=1; s1=1; s2=0;
         #5 s0=1; s1=1; s2=0;
         #5 s0=1; s1=1; s2=1;
        #5
        $finish;
end
endmodule
        
