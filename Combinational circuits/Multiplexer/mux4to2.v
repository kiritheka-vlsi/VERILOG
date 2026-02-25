module mux4to2(
    input i0,i1,i2,i3,
    input s0,s1,
    output reg y,
);
wire y0,y1;
mux4to2 m1(s0,io,i1,y0);
mux4to2 m2(s0,i3,i2,y1);
mux4to2 m3(s1,y0,y1,y);

assign y = s1?(s0?i1:i0):(s0?i3:i2);
endmodule
