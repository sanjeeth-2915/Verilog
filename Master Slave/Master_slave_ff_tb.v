module tb_ms_d_ff;
  reg D, clk, reset;
  wire Q;


  ms_d_ff uut (
    .D(D),
    .clk(clk),
    .reset(reset),
    .Q(Q)
  );

  initial begin
    clk = 0;
    forever #5 clk = ~clk;  
  end

  // Stimulus
  initial begin
    $monitor("Time=%0t | reset=%b clk=%b D=%b -> Q=%b",
             $time, reset, clk, D, Q);

    reset = 1; D = 0; #10;   
    reset = 0;

    D = 1; #10;   
    D = 0; #10;
    D = 1; #20;
    D = 0; #20;

    $finish;
  end
endmodule
