module decEN_tb;
reg [1:0]a;
reg en;
wire [3:0]y;
decEN DUT(.*);
initial begin 
    $monitor("$time=%0t a=%b en=%b y=%b",$time,a,en,y);
    $dumpfile("decEN.vcd");
    $dumpvars(0,decEN_tb);
       en=0; a=2'b00;#10;
       en=1; a=2'b01;#10;
       en=1; a=2'b10;#10;
       en=0; a=2'b11;#10;
end 
endmodule
