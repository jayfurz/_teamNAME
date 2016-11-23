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
    //for pout and ins
   logic [5:0]temppout;
   //for controller
   logic [31:0]tempinstruction;
   logic [3:0] tempaluopsel;
   logic [1:0] tempmode;
   logic tempalusel,tempmemsel,tempregwe,tempmemwe;
   logic [5:0] temprs, temprt, temprd;
   logic [14:0] tempimm;
   
   logic [31:0]tempwd, temprd1, temprd2,tempextend,
   tempoppb,tempresult,tempdatard, tempdatawd;
   
   
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
                   .wd(tempwd),
                   .we(tempregwe),
                   .rd1(temprs),
                   .rd2(temprt));

    signext15t32 ext( .a(tempimm),
                      .out(tempextend));
    
    alusel mux1(.rd2(temprs),
                .sel(tempalusel),
                .imm(tempextend),
                .oppb(tempoppb));
    
    alu_32bit alu(.op1(temprs),
                  .op2(tempoppb),
                  .opsel(tempaluopsel),
                  .mode(tempmode),
                  .result(tempresult));
    
    datamemory mem(.clk(clk),
                   .address(tempresult),
                   .wd(temprt),
                   .we2(tempmemwe),
                   .rd(tempdatard));
    
    memsel mux2(.rd(tempdatard),
                .ALUres(tempresult),
                .sel(tempmemsel),
                .wd(tempdatawd));
        
                                
                                
    
    
          
endmodule
