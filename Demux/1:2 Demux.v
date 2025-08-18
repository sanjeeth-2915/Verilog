module 1:2_demux (inout wire din,sel,
                   output reg y0,y1
                 );

  always@(*) begin 
    case(sel)
      1'b0 : begin 
         y0 = din;
         y1 = 1'b0;
      end 

      1'b1 : begin 
        y1 = din;
        y0 = 1'b0;
      end 

    endcase 
  end 
endmodule
