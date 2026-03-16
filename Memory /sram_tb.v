module sram_tb;
 parameter addwidth = 10;
 parameter datawidth = 20;
  reg  clk;
reg [datawidth-1:0]datain;
reg [addwidth-1:0]add;
reg wren;
wire [datawidth-1:0]dataout;

sram #(.addwidth(addwidth),
        .datawidth(datawidth))
        DUT(
                .clk(clk),
                .wren(wren),
                .datain(datain),
                .add(add),
                .dataout(dataout));
integer i;
initial clk=0;
always #5 clk =~clk;
initial begin
        wren = 0;
        clk=0;
        datain = 0;
        add =0;
        #50;
         #200;
         $finish;end
        initial begin
                for (i=0; i < 2**addwidth; i=i+1) begin
                        wren = 1;
                        add = i;
                        datain = 1<< i;
                        #50;
                end
                 for (i=0; i < 2**addwidth; i=i+1) begin
                        wren = 0;
                        add = i;
                      #30;
                end
                for (i=0; i < 2**addwidth; i=i+1) begin
                        wren = 1;
                        add = i;
                        datain = 8'b11111111<< i;
                        #40;
                end
                 for (i=0; i < 2**addwidth; i=i+1) begin
                        wren = 0;
                        add = i;
                        #20;
                end
        end
        initial begin
                $monitor("$time=%0t clk=%b wren=%b datain=%b  add=%b dataout=%b",
                        $time,clk,wren,datain,add,dataout);
        end
                endmodule
