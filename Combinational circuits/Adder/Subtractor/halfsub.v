 module halfadder(
        input wire a,
        input wire b,
        output wire s,
        output wire c
);
assign s = a|b;//sum
assign c = a&b;//carry
endmodule
