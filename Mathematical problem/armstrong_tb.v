module armstrong_tb;
reg [9:0]n;
wire arm;

armstrong DUT(.*);
initial begin
        $monitor ("$time=%0t,n=%b,arm=%b",
                $time,n,arm);
        n=112; #5;
        n=153; #10;
        n=21; #20;
        $finish;
end
endmodule
