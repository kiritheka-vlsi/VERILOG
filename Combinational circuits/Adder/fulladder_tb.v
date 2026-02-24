module fulladder_tb;
reg x;
reg y;
reg z;
wire s;
wire c;
fulladder DUT(
        .x(x),
        .y(y),
        .z(z),
        .s(s),
        .c(c)
);
always begin
        $monitor ("$Time=%0t| x=%b y=%b z=%b -> s=%b c=%b",
                $time,x,y,z,s,c);
        x=0; y=0; z=0;
        #10 x=0; y=0; z=1;
        #10 x=0; y=1; z=0;
        #10 x=0; y=1; z=1;
        #10 x=1; y=0; z=0;
        #10 x=1; y=0; z=1;
        #10 x=1; y=1; z=0;
        #10 x=1; y=1; z=1;
        #10

        $finish;
end
endmodule
