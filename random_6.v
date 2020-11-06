module tt;

integer kk,i,seed;
initial
    repeat(2)
begin
    i=0;
    seed=0;
    begin
while (i<3)
    begin
      repeat(5) 
      begin
        kk={$random(seed)} % 10;
        $display("kk=%d and i=%d",kk,i);    
      end
          i=i+1;
          seed=i;
    end
    end

end

endmodule

