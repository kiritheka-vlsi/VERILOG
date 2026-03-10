module mealy1100_tb;
reg in,clk,rst;
wire out ;
mealy1100 DUT (.clk(clk),.rst(rst),.in(in),.out(out));

initial begin
       $monitor ( "$time=%0t clk=%b rst=%b in=%b  out =%b ", $time,clk,rst,in ,out);

     end

        initial clk =0;
        always #5 clk =~clk;

initial begin
        rst = 1;
        in =0;#10;

        rst = 0;
   in = 1;#10
   in = 1;#10
  in = 0; #10
  in = 0;#10
  in = 1;#10
   in = 1;#10
  in = 0; #10
  in = 0;#10;
  $finish;
  end

  endmodule
