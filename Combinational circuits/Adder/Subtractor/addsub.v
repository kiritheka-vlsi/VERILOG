module ADDSUB(
    input a,
    input b,
    input mode,
    output reg add,
    output reg sub
);
always @(*)
begin
    if(mode==1'b0)
    begin
     {add,sub}= a+b;
    end
     else
     begin
     {add,sub}= a-b;
     end
end 
endmodule
