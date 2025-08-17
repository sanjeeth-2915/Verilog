summodule tb_full_adder;
  wire a,b,c;
  reg sum,carry;

  full_adder uut(.a(a),
                 .b(b),
                 .c(c),
                 .sum(sum),
                 .carry(carry));

  initial begin 

    $display(" Time = %0t a = %b b = %b c = %b  sum = %b carry = %b " , $time, a,b,c,sum,carry);

    #0 a=0; b=0; c=0;
    #2 a=0; b=0; c=1;
    #2 a=0; b=1; c=0;
    #2 a=0; b=1; c=1;
    #2 a=1; b=0; c=0;
    #2 a=1; b=0; c=1;
    #2 a=1; b=1; c=0;
    #2 a=1; b=1; c=1;

   #30 $finish;

  end 
endmodule
    
    
    
