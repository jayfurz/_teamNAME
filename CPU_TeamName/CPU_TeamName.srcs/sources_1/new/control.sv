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
    output logic [2:0] aluopsel,
    output logic mode,
    output logic alusel,
    output logic memsel,
    output logic regwe,
    output logic memwe,
    output logic [5:0] rs,
    output logic [5:0] rt,
    output logic [5:0] rd,
    output logic [14:0] imm
    );
    
    parameter logic [3:0] functioncode;
            
               always_combine begin
                   if(inst[31] == 0) begin                                   //if R-type
                       rs <= inst[30:25];
                       rd <= inst[24:19];
                       functioncode <= inst[18:15];
                       rt <= inst[14:9];
                       imm <= 0;
                       alusel <= 0;
                   end
                   
                   if(inst[31] == 1) begin                                 //if I-type
                       rs <= inst[30:25];
                       rd <= inst[24:19];
                       rt <= 0;
                       functioncode <= inst[18:15];
                       imm <= inst[14:0];
                       alusel <= 1;
                   end
                   
                      
                  //function code will decide what the opsel and mode will be
                 
                   if(functioncode == 4'b0100) begin
                       memsel <= 1;
                       regwe <= 1;
                       memwe <=0;
                       mode <= 0;
                       aluopsel <= 3'b010;
                       
                   end
                
                   if(functioncode == 4'b0110) begin
                       memsel <= 1;
                       memwe <= 1;
                       regwe <= 0;
                       mode <= 0;
                       aluopsel <= 3'b010;
                   end
                   
                   if(functioncode != 4'b0110 && functioncode != 4'b0100) begin
                       mode <= functioncode[3];
                       aluopsel <= functioncode[2:0];
                       memwe <= 0;
                          if (functioncode != 4'b1111) begin
                           regwe <= 0;
                          end
                          else begin
                           regwe <= 1;
                          end
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
