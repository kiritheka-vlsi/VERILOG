module fullsubtractor(
        input wire x,
        input wire y,
        input wire z,
        output wire d,
        output wire b
);
assign d = x^y^z;
assign b = ~((x^y)&z) |(~x&y);
endmodule
