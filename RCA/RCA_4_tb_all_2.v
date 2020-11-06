`include "RCA_4.v"
module RCA_4_tb;
parameter N=4;
reg [N-1:0] a, b;
reg cin;
wire [N-1:0] sum; 
wire cout;


   initial
     begin
        $dumpfile("RCA_test.vcd");
        $dumpvars(0, RCA);
     end
    initial

    begin:apply_stimulus
    reg [N:0] ai;
    reg [N:0] bi;
    reg [1:0] ci;
    for (ai=0; ai<2**(N); ai=ai+1)
        begin
            for (bi=0; bi<2**(N); bi=bi+1)
                begin
                    for (ci=0; ci<2**(1); ci=ci+1)
                    begin
                    a=ai;
                    b=bi;
                    cin=ci;
                    #10 $display("%d + %d + %d= %d %d", a, b, cin, cout,sum);
                    if (cout == 1) $display("Overflow");
                    else
                        if (ai+bi+ci==sum) $display ("No Error");
                        else $display("ERROR");
                    end
                end 
        end 
        

    end

   RCA_4 RCA(a,b,cin,sum,cout);

endmodule

