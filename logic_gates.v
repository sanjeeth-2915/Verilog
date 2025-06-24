`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.06.2025 11:44:53
// Design Name: 
// Module Name: logic_gates
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


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
