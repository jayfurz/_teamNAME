`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/22/2016 11:52:31 PM
// Design Name: 
// Module Name: processor
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


module processor(
    input rst,
    input clk,
    input [31:0] reg_write
    );
   wire temp1, temp2, temp3, temp4,temp5,temp6,temp7,temp8,temp9,
   temp10,temp11,temp12, temp13, temp14, temp15, temp16, temp17, temp18,
   temp19 ;
   
    pc counter( .clk(clk),
          .rst(rst),
          .pout(temp1));
    
    Imem instruct(.ins(temp1) 
                );
    
    control ctrl(
                 .aluopsel(temp3),
                 .mode(temp4),
                 .alusel(temp5),
                 .memsel(temp6),
                 .regwe(temp7),
                 .memwe(temp8),
                 .rs(temp9),
                 .rt(temp10),
                 .rd(temp11),
                 .imm(temp12)
    );
    regfile regmem(.clk(clk),
                   .ra1(temp9),
                   .ra2(temp10),
                   .wa(temp11),
                   .wd(temp13),
                   .we(temp7),
                   .rd1(temp14),
                   .rd2(temp15));

    signext15t32 ext( .a(temp12),
                      .out(temp16));
    
    alusel mux1(.rd2(temp15),
                .sel(temp5),
                .imm(temp16),
                .oppb(temp17));
    
    alu_32bit alu(.op1(temp14),
                  .op2(temp17),
                  .opsel(temp3),
                  .mode(temp4),
                  .result(temp18));
    
    datamemory mem(.clk(clk),
                   .address(temp18),
                   .wd(temp15),
                   .we2(temp8),
                   .rd(temp19));
    
    memsel mux2(.rd(temp19),
                .ALUres(temp18),
                .sel(temp6),
                .wd(temp13));
    
        
                                
                                
    
    
          
endmodule
