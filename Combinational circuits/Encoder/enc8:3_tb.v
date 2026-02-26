module enc8to3_tb;

reg [7:0]a;
reg en;
wire [2:0]y;

enc8to3 DUT(.*);

initial begin

    $monitor("$time=%0t [7:0]a=%b en=%b | [2:0]y=%b",
    $time,a,en,y);
    $dumpfile("enc8to3.vcd");
    $dumpvars(0,enc8to3_tb);
 
      en=1;  a=8'b00000000;#10;
      en=1;  a=8'b00000001;#10;
      en=0;  a=8'b00000010;#10;
      en=1;  a=8'b00000011;#10;
      en=1;  a=8'b00000100;#10;
      en=0;  a=8'b00000101;#10;
      en=1;  a=8'b00000110;#10;
      en=1;  a=8'b00000111;#10;
      en=0;  a=8'b11111111;#10;
end
endmodule
