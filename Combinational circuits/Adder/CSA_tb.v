module CSA_tb;
reg [4:0]a;
reg [4:0]b;
reg [4:0]c;
reg [4:0]sum;
reg [4:0]carry;
CSA DUT(.*);
initial begin
    $dumpfile("CSA.vcd");
    $dumpvars(0,CSA_tb);
    $monitor("$time=%0t sum=%b carry=%b",
    $time,sum,carry);
   
    a=5'b00000; b=5'b00001; c=5'b11111;#10;
     a=5'b00001; b=5'b01001; c=5'b00111;#10;
    $finish;
end 
endmodule
