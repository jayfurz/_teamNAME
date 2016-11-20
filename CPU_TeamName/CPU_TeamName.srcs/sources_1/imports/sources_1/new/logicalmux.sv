`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/22/2016 09:38:20 PM
// Design Name: 
// Module Name: logicalmux
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


module logicalmux(
    input logic [2:0] opsel,
    input logic a,
    input logic b,
    input logic cin,
    wire AND,
    wire OR,
    wire XOR,
    wire NOT,
    wire  SHL,
    output logic op1, cout
    );
    
    assign AND = (a && b);
    assign OR = (a || b);
    assign XOR = (a ^ b );
    assign NOT = ~a;
    assign SHL = cin;
    assign cout = a;
    
   assign op1 = (opsel == 3'b000)?AND:
                (opsel == 3'b001)?OR:
                (opsel == 3'b010)?XOR:
                (opsel == 3'b011)?NOT:
                (opsel == 3'b101)?SHL:1'bz;
                
    
endmodule
