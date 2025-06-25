`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.06.2025 15:45:31
// Design Name: 
// Module Name: seven_segment_led
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


module seven_segment_led( input [3:0] in,
                           output reg [6:0] out );
                           
           always @(*) begin
             case(in)
                4'd0: out = 7'b1000000;
                4'd1: out = 7'b1111001;
                4'd2: out = 7'b1000100;
                4'd3: out = 7'b0110000;
                4'd4: out = 7'b0011001;
                4'd5: out = 7'b0010010;
                4'd6: out = 7'b0000010;
                4'd7: out = 7'b1111000;
                4'd8: out = 7'b0000000;
                4'd9: out = 7'b0010000;
                default: out = 7'b0000000;
             endcase
           end
                
endmodule
