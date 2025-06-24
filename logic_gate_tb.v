`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.06.2025 11:51:35
// Design Name: 
// Module Name: logic_gate_tb
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
