module halfsubtractor_tb;
reg x;
reg y;
wire d;
wire b;
halfsubtractor DUT(
        .x(x),
        .y(y),
        .d(d),
        .b(b)
);
initial begin
        $monitor ("$time=%0t x=%b y=%b | d=%b b=%b",
                $time,x,y,d,b);
        x=0; y=0;
        #10 x=0; y=1;
        #10 x=1; y=0;
        #10 x=1; y=1;
        #10
        $finish;
end
endmodule
