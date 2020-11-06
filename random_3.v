module Tb();

reg signed [7:0] address;
//integer address;

initial
begin
    address=0;
end

initial
begin
repeat(10)
#1 address = $random%120;
end

initial
$monitor("address = %d;",address);

endmodule