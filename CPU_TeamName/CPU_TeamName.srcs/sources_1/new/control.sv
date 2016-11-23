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
    input logic [31:0] inst,
    /*input reg r,*/ 
    output logic [3:0] ALUopsel,
    output logic MUXsel1,
    output logic MUXsel2,
    output logic Regwe,
    output logic Memwe,
    output logic [5:0] rs,
    output logic [5:0] rt,
    output logic [5:0] rd,
    output logic [14:0] imm
    );
            
               always_ff @(posedge clk) begin
                   if(inst[31] == 0) begin
                       rs <= inst[30:25];
                       rd <= inst[24:19];
                       ALUopsel <= inst[18:15];
                       rt <= inst[14:9];
                      MUXsel1 <= 0;
                      end
                   if( inst[31] == 1) begin
                       rs <= inst[30:25];
                       rd <= inst[24:19];
                       ALUopsel <= inst[18:15];
                       imm <= inst[14:0];
                  
                  MUXsel1 <= 1; 
                if(ALUopsel == 0100 || ALUopsel == 0110) begin
                MUXsel2 <= 1; 
                   Memwe <= 1;
                end
                else begin  
                MUXsel2 <= 0;
                end
                
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
