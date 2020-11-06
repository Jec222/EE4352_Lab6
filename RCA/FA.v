module FA (a,b,cin,sum,cout);
	input a, b, cin;
	output sum, cout;

	assign sum = cin ^ a ^ b; 
	assign cout = (a & b) | (b & cin) | (a & cin); 
endmodule
