/*
Random number system function has a argument called seed. The seed 
parameter controls the numbers that $random returns such that different 
seeds generate different random streams. The seed parameter shall be 
either a reg, an integer, or a time variable. The seed value should be 
assigned to this variable prior to calling $random. For each system 
function, the seed parameter is an in-out parameter; that is, a value is  passed to the function
and a different value is returned.
*/


module Tb();
integer num,seed,i,j;

initial
begin
for(j = 0;j<4 ;j=j+1)
begin
seed = j;
$display(" seed is %2d",seed);
for(i = 0;i < 10; i=i+1)
begin
num = { $random(seed) } % 10;
$write("| num=%2d |",num);
end
$display(" ");
end
end
endmodule
