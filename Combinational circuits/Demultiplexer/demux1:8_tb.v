module demux1to8_tb;
reg d;
reg[2:0]s;
wire [7:0]y;

demux1to8 DUT (.*);
initial begin 
    $monitor("$time=%0t d=%b s=%b | y=%b ",
    $time,d,s,y);
    $dumpfile("demux1to8.vcd");
    $dumpvars(0,demux1to8_tb);

    d=1;
    s=3'b000; #10;
    s=3'b001; #10;
    s=3'b010; #10;
    s=3'b011; #10;
    s=3'b100; #10;
    s=3'b101; #10;
    s=3'b110; #10;
    s=3'b111; #10;
    d=0;#10;
    s=3'b000; #10;
    s=3'b001; #10;
    s=3'b010; #10;
    s=3'b011; #10;
    s=3'b100; #10;
    s=3'b101; #10;
    s=3'b110; #10;
    s=3'b111; 
    #10;

    $finish;
end 
endmodule
