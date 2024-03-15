`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.03.2024 20:53:00
// Design Name: 
// Module Name: decade_counter
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
module decade_counter(
    input clk,
    input rst,
    output [3:0] count,
    output ten
);

reg [3:0] counter;
assign count[3:0] = counter[3:0];
reg ten_o;
assign ten = ten_o;

always@(posedge clk, negedge rst) 
begin
    if(rst) begin // reset counter and output
        counter<=14'h0000;
        ten_o<=1'b0;
    end
    else if(count == 4'b1001) begin // reset counter and raise output
        counter<=14'h000;
        ten_o<=1'b1;
    end
    else begin
        counter <= counter+1'b1;// increment the counter
        ten_o <= 1'b0;
    end 
end
     
endmodule