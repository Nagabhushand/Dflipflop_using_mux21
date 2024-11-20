`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.11.2024 20:01:17
// Design Name: 
// Module Name: pos_edge_ff_using_mux
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


module pos_edge_ff_using_mux(
    input D, input clk, output Q
    );
    wire d;
    assign d = clk ? d : D;
    assign Q = clk ? d : Q;
endmodule
