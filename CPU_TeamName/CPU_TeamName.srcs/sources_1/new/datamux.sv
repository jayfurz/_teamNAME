`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/19/2016 09:14:45 PM
// Design Name: 
// Module Name: datamux
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


module memsel(
    input logic [31:0] rd,
    input logic [31:0] ALUres,
    input logic sel,
    output logic [31:0] wd
    );
    
     always_comb begin
           if(sel) 
          assign wd = rd;  
       else 
         assign wd = ALUres; 
         end
endmodule
