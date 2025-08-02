module logic_gates(
    input a,b,
    output and_gate,or_gate,nand_gate,nor_gate,not_gate,xor_gate,xnor_gate
    );
    assign and_gate = a&b;                                                         
    assign or_gate = a|b;                                                          
    assign nand_gate = ~(a&b);                                                     
    assign nor_gate = ~(a|b);                                                      
    assign xor_gate = a^b;                                                         
    assign xnor_gate = a ^~ b;                                                    
    assign not_gate = ~a;
endmodule
