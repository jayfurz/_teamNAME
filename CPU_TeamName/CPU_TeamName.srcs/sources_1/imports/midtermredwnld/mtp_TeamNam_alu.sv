`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/25/2016 09:01:47 PM
// Design Name: 
// Module Name: 128bit_alu
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


module alu_128bit ( op1 , op2 , opsel , mode , result , c_flag , z_flag , o_flag , s_flag );

    parameter DWIDTH = 32;

    input  logic [ DWIDTH -1:0] op1 ;
    input  logic [ DWIDTH -1:0] op2 ;
    input  logic [ 2:0]         opsel ;
    input  logic                mode ;
    output logic [ DWIDTH -1:0] result ;
    output logic                c_flag ;
    output logic                z_flag ;
    output logic                o_flag ;
    output logic                s_flag ;
    
    wire cin [DWIDTH:0]; 
    
    carry_gen L1 (
    .mode (mode),
    .opsel (opsel),
    .cout (cin [0])
    );
    
    genvar i;
    generate
        for (i = 0; i < DWIDTH; i++) begin
            alu_1bit alu(
            .opsel (opsel),
            .op1 (op1 [i]),
            .op2 (op2 [i]),
            .mode (mode),
            .cin (cin [i]),
            .cout (cin [i + 1]),
            .result (result[i])
            );
        end
        endgenerate
        
        assign c_flag = (mode)? 1'b0:cin[DWIDTH];   
           assign o_flag = mode? 0:
                           (op1[DWIDTH-1]===op2[DWIDTH-1] && op1[DWIDTH-1] !==result[DWIDTH-1])?1:0;
           assign z_flag = (result[DWIDTH-1] === 1'bz)? 1:0;
           assign s_flag = (result[DWIDTH-1] === 1'b1)? 1:0;

endmodule
