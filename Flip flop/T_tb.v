module tb_t_ff;
  reg clk, reset, T;
  wire Q;
  
  t_ff uut (
    .clk(clk),
    .reset(reset),
    .T(T),
    .Q(Q)
  );

  
  initial begin
    clk = 0;
    forever #5 clk = ~clk;   
  end

  initial begin
    $monitor("Time=%0t | reset=%b T=%b | Q=%b",
             $time, reset, T, Q);


    reset = 1; T = 0; #10; 
    reset = 0;

    T=0; #10;  
    T=1; #10;   
    T=1; #10;   
    T=0; #10;   
    T=1; #20;
    $finish;
  end
endmodule
