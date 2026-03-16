module spram #(parameter datawidth = 32,
        parameter addwidth = 8,
        parameter depth = 16)
        (input clk,
                input cs,
                input we,
                input oe,
                input [datawidth-1:0]data,
                input [addwidth-1:0]add);
        reg[datawidth-1:0]mem[depth];
        reg[datawidth-1:0]tempdata;

        always@(posedge clk) begin
                if ( we & cs)
                        mem[add] = data;
        end
        always @(posedge clk) begin
                if( !wr & cs )
                        tempdata = mem[add];
        end
assign data = cs & !we & oe? tempdata : 'hz;
endmodule
