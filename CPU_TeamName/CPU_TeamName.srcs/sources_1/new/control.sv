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
    output logic [2:0] ALUopsel,
    output logic mode,
    output logic alusel,
    output logic memsel,
    output logic Regwe,
    output logic Memwe,
    output logic [5:0] rs,
    output logic [5:0] rt,
    output logic [5:0] rd,
    output logic [14:0] imm
    );
    
    parameter [3:0] functioncode;
            
               always_combine begin
                   if(inst[31] == 0) begin                                   //if R-type
                       rs <= inst[30:25];
                       rd <= inst[24:19];
                       mode <= inst[18];
                       ALUopsel <= inst[17:15];
                       rt <= inst[14:9];
                       imm <= 0;
                       alusel <= 0;
                   end
                   
                   if(inst[31] == 1) begin                                 //if I-type
                       rs <= inst[30:25];
                       rd <= inst[24:19];
                       rt <= 0;
                       mode <= inst[18];
                       ALUopsel <= inst[17:15];
                       imm <= inst[14:0];
                       alusel <= 1;
                   end
                   
                      
                  
                 
                   if(ALUopsel == 4'b0100) begin
                       memsel <= 1;
                       Regwe <= 1;
                       memwe <=0;
                   end
                
                   if(ALUopsel1 == 4'b0110) begin
                       memsel <= 1;
                       memwe <= 1;
                       Regwe <= 0;
                   end
                   
                 
                   
                   
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
