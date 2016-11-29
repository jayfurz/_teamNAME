`timescale 1ns / 1ps


//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/15/2016 09:05:38 PM
// Design Name: 
// Module Name: regfile
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


module regfile(
    input logic       clk,
    input logic [5:0] ra1,
    input logic [5:0] ra2,
    input logic [5:0] wa,
    input logic [31:0] wd,
    input logic we,
    output logic [31:0] rd1,
    output logic [31:0] rd2
    );
 
    logic [31:0] mem[63:0];
    assign mem[0] = 0;
    
      
   assign rd1 = mem[ra1]; 
   assign rd2 = mem[ra2];
 
    always_ff @(posedge clk) begin
        if(we && wa != 5'b000000)begin
            mem[wa] <= wd;
            end

   end  
    
      
    
endmodule

