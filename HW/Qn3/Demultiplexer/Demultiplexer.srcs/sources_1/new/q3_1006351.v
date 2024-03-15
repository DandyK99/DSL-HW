`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.03.2024 13:20:15
// Design Name: 
// Module Name: q3_1006351
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

//!DO NOT MODIFY MODULE NAME AND PORT NAME!
module demultiplexer(
    input [1:0]A,
    input [1:0]SEL,
    output [1:0]W,
    output [1:0]X,
    output [1:0]Y,
    output [1:0]Z
    );

reg [7:0] O_X;
assign W[1:0] = O_X[1:0];
assign X[1:0] = O_X[3:2];
assign Y[1:0] = O_X[5:4];
assign Z[1:0] = O_X[7:6];
 
always @(*)begin
O_X = 0;  
    case(SEL)
        2'b00: O_X[1:0] = A;
        2'b01: O_X[3:2] = A;
        2'b10: O_X[5:4] = A;
        2'b11: O_X[7:6] = A;
        default: O_X = 0;  // Default case, should not be reached
    endcase
end
endmodule