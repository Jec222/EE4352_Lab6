module Tb();

reg signed [15:0] address;
integer seed;

initial
begin
    seed=1;
    address=0;
end

initial
begin
repeat(10)
#1 address = $random(seed);
end

initial
$monitor("address = %h;",address);

endmodule