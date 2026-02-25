module halfsubtractor(
        input wire x,
        input wire y,
        output wire d,
        output wire b
);
assign d = x^y;
assign b = (~x) & y;
endmodule
