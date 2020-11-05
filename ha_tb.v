module ha_tb;
reg A,B;
wire Cout,Sum;

ha HA1(A,B,Cout,Sum);

initial 
begin
$dumpfile("ha.vcd");
$dumpvars(0,HA1);
end

initial
begin
#10  A=0; B=0;
#10 $display($time, " %b+%b=%b%b",A,B,Cout,Sum);
if (Sum==0 && Cout==0) $display("passed");
else $display("failed");
A=0; B=1; 
#10 $display($time, " %b+%b=%b%b",A,B,Cout,Sum);
if (Sum==1 && Cout==0) $display("passed");
else $display("failed");
A=1; B=0;
#10$display($time, " %b+%b=%b%b",A,B,Cout,Sum);
if (Sum==1 && Cout==0) $display("passed");
else $display("failed");
 A=1; B=1;
#10 $display($time, " %b+%b=%b%b",A,B,Cout,Sum);
if (Sum==0 && Cout==1) $display("passed");
else $display("failed");
#10 $finish;
end

endmodule