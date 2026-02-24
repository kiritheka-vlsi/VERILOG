module halfadder_tb;
reg=a;
reg=b;
reg=sum;
reg=carry;
adder DUT(
    .a(a),
    .b(b),
    .sum(sum),
    .carry(carry)
);
  initial begin
$dumpfile("Adder.vcd");
$dumpvars(0,adder_tb);
$monitor("$time=0%t a=%b b=%b -> sum=%b carry = %b",
$time a,b,sum,carry);
a=0; b=0;
#10;
a=1;b=0;
#10;
$finish
  end
endmodule
