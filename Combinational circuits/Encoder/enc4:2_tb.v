module enc4to2_tb;
reg [3:0]a;
reg en;
wire[1:0]y;

enc4to2 DUT(.*);

initial
 begin 

    $monitor("$time=%0t [3:0]a=%b en=%b [1:0]y=%b",
    $time,a,en,y);
    $dumpfile("enc4to2.vcd");
    $dumpvars(0,enc4to2_tb);
   en=0; a=4'b0000;#10;
   en=1; a=4'b0001;#10;
   en=1; a=4'b0010;#10;
   en=0; a=4'b0011;#10;
    $finish;
end 
endmodule
