module CLA_tb;
reg [3:0]a;
reg [3:0]b;
reg cin;
wire[3:0]s;
wire cout;

CLA DUT(
    .a(a),
    .b(b),
    .cin(cin),
    .s(s),
    .cout(cout)
);

initial begin


$dumpfile("CLA.vcd");
$dumpvars(0,CLA_tb);
$monitor("$time=%0t | a=%b b=%b  cin=%b s=%b  cout=%b",
$time,a,b,cin,s,cout);

a=4'b0000; b=4'b0000; cin=1;#10;
a=4'b0001; b=4'b0011; cin=1; #10;
//a=1; b=1; #10;
//a=1;b=1; #10;
$finish;
end 
endmodule
