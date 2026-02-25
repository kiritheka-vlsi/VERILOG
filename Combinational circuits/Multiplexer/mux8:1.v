module mux8to1(
        input i0,i1,i2,i3,i4,i5,i6,i7,
        input s0,s1,s2,
        output y);
assign y = (~s0&~s1&~s2)|
(~s0&~s1&s2)|
(~s0&s1&~s2)|
(~s0&s1&s2)|
(s0&~s1&~s2)|
(s0&~s1&s2)|
(s0&s1&~s2)|
(s0&s1&s2);
endmodule
