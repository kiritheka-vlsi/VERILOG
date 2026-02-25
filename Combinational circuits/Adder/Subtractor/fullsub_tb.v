module fullsubtractor_tb;
reg x;
reg y;
reg z;
wire d;
wire b;
fullsubtractor DUT(
        .x(x),
        .y(y),
        .z(z),
        .d(d),
        .b(b)
);
initial begin
        $monitor ("$time=%0t x=%b y=%b z=%b| d=%b b=%b",
                $time,x,y,z,d,b);
        x=0; y=0; z=0;
        #10  x=0; y=0; z=1;
        #10  x=0; y=1; z=0;
        #10  x=0; y=1; z=1;
        #10  x=1; y=0; z=0;
        #10  x=1; y=0; z=1;
        #10  x=1; y=1; z=0;
        #10  x=1; y=1; z=1;
        #10;
        $finish;
end
endmodule
