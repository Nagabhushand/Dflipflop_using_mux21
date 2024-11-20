`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.11.2024 20:26:56
// Design Name: 
// Module Name: latch_using_mux_tb
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


module latch_using_mux_tb();

    reg D;
    reg en;
    wire Q;
    
    latch_using_mux dut (.D(D), .en(en), .Q(Q));
    
    initial begin
    en = 0;
    forever #5 en = ~en;
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
    #1 D = 1'b1;
    #1 D = 1'b0;
    #6 D = 1'b1;
    #1 D = 1'b0;
    #1 D = 1'b1;
    #1 D = 1'b0;
    #1 D = 1'b1;
    #5 $finish;
    end
endmodule
