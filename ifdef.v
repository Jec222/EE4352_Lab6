module sw();

initial 
begin
    `ifdef T1
    $display("This is for T1");
    `endif
    `ifdef T2
    $display("This is for T2"); 
    `endif  
    $display("This is for COOL"); 
end
endmodule

// run it from terminal
// iverilog '-Wall' -DT2 IF_DEF_01.v  # This is first T2
// iverilog '-Wall' -DT1 IF_DEF_01.v  # This is first T1
// iverilog  IF_DEF_01.v            # no output here. no default