`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.11.2024 19:44:03
// Design Name: 
// Module Name: ff_using_mux_tb
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


module ff_using_mux_tb();
    
    reg D;
    reg clk;
    wire Q;
    
    ff_using_mux uut (.D(D), .clk(clk), .Q(Q));
    
    initial begin
    clk = 0;
    forever #5 clk = ~clk;
    end
    
    initial begin
    D = 1'b0;
    #3 D = 1'b1;
    #5 D = 1'b0;
    #2 D = 1'b1;
    #6 D = 1'b0;
    #3 D = 1'b1;
    #1 D = 1'b1;
    #7 D = 1'b0;
    #8 D = 1'b1;
    #3 D = 1'b0;
    #2 D = 1'b1;
    #10 $finish;
    end
endmodule
