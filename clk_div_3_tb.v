`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/23/2023 10:40:15 PM
// Design Name: 
// Module Name: clk_div_3_tb
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


module clk_div_3_tb();

        reg clk;
        wire clk_o;
        
        clk_div_3 dut(.clk(clk),.clk_o(clk_o));
        
        initial
        begin
            clk = 0;
            forever #5 clk = ~clk;
            #2;
            $finish;
        end
endmodule
