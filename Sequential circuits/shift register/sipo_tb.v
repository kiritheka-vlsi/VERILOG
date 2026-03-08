module sipo_tb;
  reg in, clk, rst;
  wire [3:0] d;

  // Instantiate DUT
  sipo DUT (
    .in(in),
    .clk(clk),
    .rst(rst),
    .d(d)
  );

  // Clock generation
  initial begin
    clk = 0;
    forever #5 clk = ~clk; // 10 ns period
  end

  // Stimulus
  initial begin
    $dumpfile("sipo.vcd");
    $dumpvars(0, sipo_tb);
    $monitor("time=%0t in=%b clk=%b rst=%b d=%b",
             $time, in, clk, rst, d);

    // Reset
    rst = 1; in = 0;
    #10 rst = 0; // release reset

    // Feed serial bits
    in = 1; #10;
    in = 0; #10;
    in = 1; #10;
    in = 1; #10;
    in = 0; #10;

    $finish;
  end
