`include "FA.v"
module RCA_4 (a,b,cin,sum,cout);
	input [3:0] a, b; 
	input cin;
	output [3:0] sum; 
	output cout;
	wire w[2:0];
	FA	FA0(a[0],b[0],cin,sum[0],w[0]);
	FA	FA1(a[1],b[1],w[0],sum[1],w[1]);
	FA	FA2(a[2],b[2],w[1],sum[2],w[2]);
	FA	FA3(a[3],b[3],w[2],sum[3],cout);	
endmodule

