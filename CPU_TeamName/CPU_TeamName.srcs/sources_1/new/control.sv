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
    input bit clk,
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
                 if(inst[0:0] == 0) begin
                      rs <= inst[6:1];
                      rd <= inst[12:7];
                      ALUopsel <= inst[16:13];
                      rt <= inst[22:17];
                      MUXsel1 <= 0;
                      end
                if( inst[0:0] == 1) begin
                  rs <= inst[6:1];
                  rd <= inst[12:7];
                  ALUopsel <= inst[16:13];
                  imm <= inst[31:17];
                  
                  MUXsel1 <= 1; 
                if(ALUopsel == 0100 || ALUopsel == 0110) begin
                MUXsel2 <= 1; 
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
