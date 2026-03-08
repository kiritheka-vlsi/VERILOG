module pipo_tb;
  reg [3:0]d;
  reg clk;
  reg rst;
  wire [3:0]q;

  pipo DUT(.*);
  always #10 clk=~clk;
  initial begin

    $monitor("$time=%0t d=%b clk=%b rst=%b q=%b",
             $time,d,clk,rst,q);
    $dumpfile("pipo.vcd");
    $dumpvars(0,pipo_tb);

  end


  initial begin

     clk=0;
    rst=1; d=4'b0000;#10;

    rst=0;

    d=4'b0001;#10;
    d=4'b0010;#10;
    d=4'b1011;#10;
    $finish;
  end
endmodule
