module Tb_mem();
reg clock;
reg Cin;
reg [3:0] A;
reg [3:0] B;
integer seed;
integer i =10000;
initial
begin
clock = 0;
A=0;
B=0;
Cin=0;
forever
#10 clock = ~clock;
end

initial

begin
seed=$random;
repeat(i)@(negedge clock)
begin 
    Cin= $random(seed) ; 
    A = $random(seed);
    B = $random(seed); 
    end
$finish;
end
initial
$monitor($time,"  A = %d ; B = %d; Cin= %d ",A,B,Cin);

endmodule
