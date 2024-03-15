`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.03.2024 21:17:04
// Design Name: 
// Module Name: decade_counter_tb
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


module decade_counter_tb();

reg clk;
reg rst;
wire [3:0]count;
wire ten;

decade_counter decade_counter_u0(
    clk,
    rst,
    count,
    ten
);


initial begin
    clk =0;
    rst =0;
end

always begin
    #20 clk=!clk;
end

initial begin 
    rst =1;
    #60 rst =0;
    #400 $stop;
    $finish;
end

endmodule