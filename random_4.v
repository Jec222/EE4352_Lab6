//As a solution, use $urandom to generate unsigned random numbers that you expect between 0 to 10 and 0 to 20.
module test;
reg[15:0]a;
reg [15:0] b;

integer    seed,i,j;

   initial begin

      for (i=0; i<6; i=i+1)
        begin
           a=$urandom%20; 
           #100;
           b=$urandom_range(10,5);
           $display("A %d, B: %d",a,b);    
        end 
      $finish;
   end
endmodule