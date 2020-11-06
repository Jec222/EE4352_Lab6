`include "RCA_4.v"
module RCA_4_tb;
parameter N=4;
reg [N-1:0] a, b;
reg cin,clock;
wire [N-1:0] sum; 
wire [N:0] k;
wire cout;
integer seed =1;
integer i =10000;
assign k = {cout,sum};
   initial
     begin
        $dumpfile("RCA_test.vcd");
        $dumpvars(0, RCA);
     end

initial
begin
clock = 0;
a=0;
b=0;
cin=0;
forever
#10 clock = ~clock;
end

initial
begin
repeat(i)@(negedge clock)
begin 
    cin= $random(seed) ; 
    a = $random(seed);
    b = $random(seed); 

    end
$finish;
end

initial 
begin
$monitor("%d + %d + %d= %d", a, b, cin, k);
if (a+b+cin != k) $display("ERROR");
end

RCA_4 RCA(a,b,cin,sum,cout);

endmodule
