module sw();

initial 
begin
    `ifdef T1
    $display("This is first T1");
    $display("This is first T1");
    `elsif T2
    $display("This is second T2");
    `else 
    $display("This is second T3");
    `endif
end
initial 
begin
    `ifdef T1
    $display("I AM COOL");
    `elsif T2
    $display("NOT MANY");
    `endif
end
endmodule

// run it from terminal
// iverilog '-Wall' -DT2 IF_DEF_01.v  # This is first T2
// iverilog '-Wall' -DT1 IF_DEF_01.v  # This is first T1
// iverilog  IF_DEF_01.v            # no output here. no default