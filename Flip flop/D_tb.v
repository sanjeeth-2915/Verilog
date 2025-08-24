module tb_d_ff;
  reg clk, reset, d;
  wire q;
  
  d_ff uut (
    .clk(clk),
    .reset(reset),
    .d(d),
    .q(q)
  );

  
  initial clk = 0;
  always #5 clk = ~clk;

  initial begin
   
    $monitor("Time=%0t | D=%b | Q=%b", $time, d, q);

    
    reset = 1; d = 0; #10;
    reset = 0;

  
    d = 0; #10;  
    d = 1; #10; 
    d = 1; #10;  
    d = 1; #10;

    #20 $finish;
  end
endmodule
