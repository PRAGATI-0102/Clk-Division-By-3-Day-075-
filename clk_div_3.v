`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/23/2023 10:25:47 PM
// Design Name: 
// Module Name: clk_div_3
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


module clk_div_3(clk, clk_o);

        input clk;
        output clk_o;
        
        reg [1:0] state;
        
        always@(posedge clk)
        begin
            
            case(state)
                2'b00 : state <= 2'b01;
                2'b01 : state <= 2'b10;
                2'b10 : state <= 2'b00;
                default : state <= 2'b00;
            endcase
        end
       
       assign clk_o = (state == 2'b01);
            
endmodule
