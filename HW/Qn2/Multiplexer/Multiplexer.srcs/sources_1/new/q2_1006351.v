`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.03.2024 21:51:32
// Design Name: 
// Module Name: q2_1006351
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


//!DO NOT EDIT MODULE NAME AND PORT NAME!
module multiplexer(
    input [1:0]A,
    input [1:0]B,
    input [1:0]C,
    input [1:0]D,
    input [1:0]SEL,
    output [1:0]X
);
reg [1:0] o_x;
assign X[1:0] = o_x[1:0];
always @(SEL,A,B,C,D)begin
    case(SEL)
        2'b00: o_x = A;
        2'b01: o_x = B;
        2'b10: o_x = C;
        2'b11: o_x = D;
        default: o_x = 2'b00;  // Default case, should not be reached
    endcase
    
end
//TIPS: IN THE VERILOG CASE STATEMENT, YOU HAVE TO LIST ALL CONDITION TO AVIOD ANY AMBIGUOUS STATEMENT;
endmodule