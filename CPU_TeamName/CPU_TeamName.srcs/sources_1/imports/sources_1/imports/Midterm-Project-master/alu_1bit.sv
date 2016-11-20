`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: UCI-EECS 31L
// Engineer: 
// 
// Create Date: 
// Design Name: 
// Module Name: alu_1bit
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


module alu_1bit ( op1 , op2 , cin, opsel , mode , result, cout /*, c_flag , z_flag , o_flag , s_flag*/ );

    input  logic        op1 ;
    input  logic        op2 ;
    input  logic        cin ;
    input  logic [ 2:0] opsel ;
    input  logic        mode ;
    output logic        result ;
    output logic        cout ;
    /*output logic        c_flag ;
    output logic        z_flag ;
    output logic        o_flag ;
    output logic        s_flag;*/
    
    wire arit1, arit2, aritout, aritcarry;
    
   arithmeticmuxop2 L1(
   .opsel(opsel),
   .b(op2),
   .op1(arit1)
      );
      
      arithmeticmuxcin L2(
      .opsel(opsel),
      .cin(cin),
      .cout(arit2)
      );
      
      fulladder L3(
      .a(op1),
      .b(arit1),
      .cin(arit2),
      .s(aritout),
      .cout(aritcarry)
      );
 
 wire logcarry, logout;     
   
   logicalmux L4(
   .opsel(opsel),
   .a(op1),
   .b(op2),
   .cin(cin),
   .cout(logcarry),
   .op1(logout)
   );
   
   modemux res(
   .mode(mode),
   .arit(aritout),
   .log(logout),
   .out(result)
   );
   
   modemux carry(
   .mode(mode),
   .arit(aritcarry),
   .log(logcarry),
   .out(cout)
   );
   
   /*assign c_flag = (mode)? 1'b0:cout;   
   assign o_flag = c_flag;
   assign z_flag = (result === 1'bz)? 1:0;
   assign s_flag = (result !== 1'bz)? 1:0;*/
   
      
      


endmodule 