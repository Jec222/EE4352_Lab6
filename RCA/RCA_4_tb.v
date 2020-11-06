`include "RCA_4.v"
module RCA_4_tb;

reg [3:0] a, b;
reg cin;
wire [3:0] sum; 
wire cout;

   initial
     begin
        $dumpfile("RCA_test.vcd");
        $dumpvars(0, RCA);
        $monitor("%d + %d + %d= %d%d", a, b, cin, cout,sum);
        #0 	a = 4'd3; 	b = 4'b1010;	cin = 1'b0;
		#100 	a = 4'd8; 	b = 4'b0100;	cin = 1'b0;
		#100 	a = 4'b0010; 	b = 4'b0100;	cin = 1'b0;
        #50 $finish;
     end

   RCA_4 RCA(a,b,cin,sum,cout);

endmodule
