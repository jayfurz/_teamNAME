`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/19/2016 08:21:59 PM
// Design Name: 
// Module Name: datememory
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


module datamemory(
    input logic       clk,
    input [31:0] address,
    input [31:0] wd,
    input we2,
    output reg [31:0] rd
    );
    
    logic [31:0] mem[127:0];
    
    always_ff @(posedge clk) begin
        if(we2)
         mem[address] <= wd;
         rd <= wd; 
    end

endmodule
