`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/19/2016 09:33:14 PM
// Design Name: 
// Module Name: Controller
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


module Controller(
    input [31:0] inst,
    input clk,
    output ALUopsel,
    output MUXsel1,
    output MUXsel2,
    output Regwe,
    output Memwe,
    output [5:0] rs,
    output [5:0] rt,
    output [5:0] rd,
    output [14:0] imm
    );
    
        assign rs = inst << 1;
        assign rs = inst >> 26;
        assign 
        always begin
        
     if( (inst >> 31) == 0)
        assign 
        assign ALUopsel
     always begin
     assign ALUopsel = 

     
     
     end
endmodule


