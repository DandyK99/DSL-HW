`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.03.2024 12:21:07
// Design Name: 
// Module Name: q5_1006351
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


module CCTA(
        input [3:0] A,
        input [3:0] B,
        input [3:0] C,
        input rst,
        input ctrl,
        output [4:0] q
); 
reg [4:0] o_x;
assign q[4:0] = o_x[4:0];
always @(*)begin
    if(!rst)begin
        if(!ctrl) begin // reset counter and output
            o_x[4:0] = A + B;
        end
        else if(ctrl) begin // reset counter and raise output
            o_x = A - C;
        end
       
   end

    else begin
        o_x = 0;
    end
end
endmodule