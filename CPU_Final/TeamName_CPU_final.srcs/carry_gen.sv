`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/25/2016 08:46:24 PM
// Design Name: 
// Module Name: carry_gen
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


module carry_gen(
    input logic mode,
    input logic [2:0] opsel,
    output logic cout
    );
    
    assign cout = ((!mode) && (opsel == 3'b011 || opsel == 3'b100 || opsel == 3'b110))?1'b1:1'b0;
    
endmodule
