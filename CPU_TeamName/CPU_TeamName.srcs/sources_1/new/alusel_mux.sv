`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/19/2016 07:40:31 PM
// Design Name: 
// Module Name: rs_rt_mux
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


module alusel(
    input logic [31:0] rd2,
    input logic sel,
    input logic [31:0] imm,
    output logic [31:0] oppb
    );
        always_comb begin
        if(sel) 
        oppb = imm;
    else 
       oppb = rd2; 

        end 
endmodule


        
