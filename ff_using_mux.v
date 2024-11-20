`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.11.2024 19:38:09
// Design Name: 
// Module Name: ff_using_mux
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


module ff_using_mux(
    input D, input clk, output Q
    );
    
    wire d;
    assign d = clk ? D : d;
    assign Q = clk ? Q : d;
endmodule
