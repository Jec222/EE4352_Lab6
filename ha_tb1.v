`include "HA.v"
module ha_tb;
reg A,B;
reg clk;
wire Cout,Sum;

HA HA1(A,B,Cout,Sum);

initial 
begin
$dumpfile("ha.vcd");
$dumpvars(0,HA1);
end

initial
begin
A=0;
B=0;
clk=0;
forever 
#10 clk=~clk;
end

initial
begin
    repeat(10)@(negedge clk)
    begin
    A=$random;
    B=$random;   
    end
#120 $finish;
end

initial
begin
    $monitor("%b+%b = %b%b", A,B,Cout,Sum);
end

endmodule