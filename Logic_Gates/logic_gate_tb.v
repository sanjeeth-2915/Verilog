module logic_gate_tb( );
reg a,b;
wire and_gate,or_gate,nand_gate,nor_gate,not_gate,xor_gate,xnor_gate;

logic_gates uut (.a(a),
                .b(b),
                .and_gate(and_gate),
                .or_gate(or_gate),
                .nand_gate(nand_gate),
                .nor_gate(nor_gate),
                .not_gate(not_gate),
                .xor_gate(xor_gate),
                .xnor_gate(xnor_gate));

initial begin 
         a=0; b=0;
    #5   a=0; b=1;
    #5   a=1; b=0;
    #5   a=1; b=1;
    #10 $finish;
end
endmodule
