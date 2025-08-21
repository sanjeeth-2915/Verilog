module sr_ff_tb;
  reg S,R,clk;
  wire Q;

  sr_ff uut (.S(S),
             .R(R),
             .clk(clk),
             .Q(Q)
            );
  initial begin 
    $monitor("Time = %0t | S=%b,R=%b | Q=%b", $time, S,R,Q);
    





    $finish;
  end
endmodule 

  
