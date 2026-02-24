module fulladder(
        input wire x,
        input wire y,
        input wire z,
        output wire s,
        output wire c
);
assign s = x^y^z;
assign c = (x^y)&z|(x&y);
endmodule
