`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/15/2016 08:57:50 PM
// Design Name: 
// Module Name: signext15t32
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


module signext15t32(
    input [14:0] a,
    output [31:0] out
    );


 wire [1:0] ext_part;
    
    assign ext_part = {17{a[14]}}; // Replicate A[2] by 2 before concatenation
    assign out = { ext_part, a}; // Concatenation
    
    
endmodule