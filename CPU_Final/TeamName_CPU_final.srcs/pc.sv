`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/22/2016 09:05:14 PM
// Design Name: 
// Module Name: pc
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


module pc(
    input clk,
    input logic rst,
    output logic [5:0] pout
    );
        
        
   always_ff @(posedge clk) begin
    if(rst) 
           pout <= 6'b000000;
    else
         pout <= pout +1'b1;     
    end
                
                
    
        
           
endmodule  