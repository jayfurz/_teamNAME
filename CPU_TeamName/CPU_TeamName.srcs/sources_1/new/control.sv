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


module control(
    input reg [31:0] inst,
    input reg r, 
    input clk,
    output reg ALUopsel,
    output MUXsel1,
    output MUXsel2,
    output Regwe,
    output Memwe,
    output reg [5:0] rs,
    output reg [5:0] rt,
    output reg [5:0] rd,
    output reg [14:0] imm
    );
    initial begin
            assign r = inst[0];
            if(r == 0) begin
            assign rs = inst[1:6];
            assign rd = inst[7:12];
            assign ALUopsel = inst[13:16];
            assign rt = inst[17:22];
            assign imm = inst[23:31];
            end
            else if(r == 1) begin 
            assign rs = inst[1:6];
            assign rd = inst[7:12];
            assign ALUopsel = inst[13:16];
            assign imm = inst[17:31];
            end
            end
            
            
                
        /*always begin
        
     if( (inst >> 31) == 0)
        assign 
        assign ALUopsel
     always begin
     assign ALUopsel = 

     
     
     end*/
endmodule