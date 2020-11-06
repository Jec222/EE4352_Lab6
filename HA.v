module HA(A,B,Cout,Sum);

input A,B;
output Sum,Cout;

and a1(Cout,A,B);
xor o1(Sum,A,B);

endmodule