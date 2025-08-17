module half_adder( input a,b, output sum,carry);

  assign sum = a^b;
  assign carry = a&b;

endmodule 

module full_adder ( input a,b,cin, output sum,carry);

  wire x,y,z;

  half_adder a1 (.a(a),.b(b),.sum(x),.carry(y));
  half_adder a2 (.a(x),.b(cin),.sum(sum),.carry(z));

endmodule
