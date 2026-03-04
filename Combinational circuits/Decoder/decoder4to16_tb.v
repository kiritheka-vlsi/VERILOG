module decoder4to16_tb;
reg [3:0]a;
wire [15:0]y;

decoder4to16 DUT(.*);

initial begin 
    $monitor("$time=%0t a=%b | y=%b",
    $time,a,y);
    $dumpfile("decoder4to16.vcd");
    $dumpvars(0,decoder4to16_tb);

       /*a = 4'b0000; #10; 
       a = 4'b0001; #10;
       a = 4'b0010; #10; 
       a = 4'b0011; #10;
       a = 4'b0100; #10;
       a = 4'b0101; #10; 
       a = 4'b0110; #10; 
       a = 4'b0111; #10; 
       a = 4'b1000; #10; 
       a = 4'b1001; #10;
       a = 4'b1010; #10;
       a = 4'b1011; #10;
       a = 4'b1100; #10; 
       a = 4'b1101; #10;
       a = 4'b1110; #10; 
       a = 4'b1111; #10;*/

       a = 4'd0; #10; 
       a = 4'd1; #10;
        a = 4'd3; #10; 
       a = 4'd4; #10;
       a = 4'd5; #10; 
       a = 4'd6; #10;
       a = 4'd7; #10; 
       a = 4'd8; #10;
       a = 4'd9; #10; 
       a = 4'd10; #10;
       a = 4'd11; #10; 
       a = 4'd12; #10;
       a = 4'd13; #10; 
       a = 4'd14; #10;
       a = 4'd15; #10; 
       
      
      

       $finish;
end 
endmodule
