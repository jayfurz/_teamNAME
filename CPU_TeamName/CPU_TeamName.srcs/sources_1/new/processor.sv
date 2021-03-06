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
    output logic [31:0] reg_write_data
    );                                 
   logic [5:0]temppout;                                  
   logic [31:0]tempinstruction;
   logic [2:0] tempaluopsel;
   logic tempmode;
   logic tempalusel,tempmemsel,tempregwe,tempmemwe;
   logic [5:0] temprs, temprt, temprd;
   logic [14:0] tempimm;
   
    logic [31:0] temprd1, temprd2,tempextend,
   tempoppb,tempresult,tempdatard;
   
   
    ;
   
    pc counter( .clk(clk),
          .rst(rst),
          .pout(temppout));
    
    Imem instruct(.ins(temppout),
                  .instruction(tempinstruction)
                  );
   
    control ctrl(.inst(tempinstruction),
                 .aluopsel(tempaluopsel),
                 .mode(tempmode),
                 .alusel(tempalusel),
                 .memsel(tempmemsel),
                 .regwe(tempregwe),
                 .memwe(tempmemwe),
                 .rs(temprs),
                 .rt(temprt),
                 .rd(temprd),
                 .imm(tempimm)
    );
    
    regfile regmem(.clk(clk),
                   .ra1(temprs),
                   .ra2(temprt),
                   .wa(temprd),
                   .wd(reg_write_data),
                   .we(tempregwe),
                   .rd1(temprd1),
                   .rd2(temprd2));

    signext15t32 ext( .a(tempimm),
                      .out(tempextend));
    
    alusel mux1(.rd2(temprd2),
                .sel(tempalusel),
                .imm(tempextend),
                .oppb(tempoppb));
    
    alu_32bit alu(.op1(temprd1),
                  .op2(tempoppb),
                  .opsel(tempaluopsel),
                  .mode(tempmode),
                  .result(tempresult));
    
    datamemory mem(.clk(clk),
                   .address(tempresult),
                   .wd(temprd2),
                   .we2(tempmemwe),
                   .rd(tempdatard));
    
    memsel mux2(.rd(tempdatard),
                .ALUres(tempresult),
                .sel(tempmemsel),
                .wd(reg_write_data));
        
                     
                                
    
    
          
endmodule
