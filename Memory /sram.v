module sram #(parameter addwidth = 10,
        parameter datawidth = 20)
        (input clk,
                input wren,
                input [datawidth -1:0]datain,
                input [addwidth -1:0] add,
                output reg [datawidth-1:0]dataout );
        reg[datawidth-1:0]mem[0:(2**addwidth-1)];
        always@(posedge clk)begin
                if(wren)begin
                        mem[add] <= datain;
                                dataout <= mem[add];

                        end
                end
                endmodule
