`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.03.2024 12:21:07
// Design Name: 
// Module Name: q4_1006351
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
module nibbleadd(
    input [7:0]A,
    input [7:0]B,
    input ctrl,
    output [4:0]q
);
wire [3:0] low_inp_sig_A; 
assign low_inp_sig_A[3:0] = A[3:0]; 
wire [3:0] high_inp_sig_A;
assign high_inp_sig_A[3:0] = A[7:4];
wire [3:0] low_inp_sig_B; 
assign low_inp_sig_B[3:0] = B[3:0]; 
wire [3:0] high_inp_sig_B;
assign high_inp_sig_B[3:0] = B[7:4];  
reg [4:0] o_x;
assign q[4:0] = o_x[4:0];
always @(*)begin
if(ctrl) begin // reset counter and output
        o_x[4:0] = high_inp_sig_A + high_inp_sig_B;
    end
    else if(!ctrl) begin // reset counter and raise output
        o_x = low_inp_sig_A + low_inp_sig_B;
    end
    else begin
        o_x = 0;
    end 
end
endmodule