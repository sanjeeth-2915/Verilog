module 2x1_mux(
        input wire a,b,sel,
        output reg y);

always@(*) begin
        if(sel==1'b0)
                y=a;
        else
                y=b;
end
endmodule
