module halfadder_tb;
reg a;
reg b;
wire s;
wire c;
halfadder DUT(
.a(a),
.b(b),
.s(s),
.c(c)
);
initial begin
        $monitor("$Time=%ot|a=%b b=%b -> s=%b c=%b",
                $time,a,b,s,c);
        a=0; b=0;
        #10 a=0; b=1;
        #10 a=1; b=0;
        #10 a=1; b=1;
        #10
        $finish;
end
endmodule
