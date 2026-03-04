module decoder3to8_tb;
reg [2:0]a;
wire [7:0]y;
decoder3to8 DUT (.*);
initial begin
    $monitor("$time=%0t a=%b y=%b",
    $time,a,y);
    $dumpfile("decoder3to8.vcd");
    $dumpvars(0,decoder3to8_tb);
     a = 3'b000; #10; 
     a = 3'b001; #10;
     a = 3'b010; #10; 
     a = 3'b011; #10;
     a = 3'b000; #10; 
     a = 3'b101; #10;
     a = 3'b110; #10; 
     a = 3'b111; #10;
     $finish;
end endmodule
