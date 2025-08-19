module 1:4demux (input wire [1:0]sel,din,
        output reg a,b,c,d);

  always@(*)begin 
        a=0;b=0;c=0;d=0;
    case(s1,s0)
      2'b00: a=din;
      2'b01: b=din;
      2'b10: c=din;
      2'b11: d=din;
    endcase 
  end 
endmodule
      
