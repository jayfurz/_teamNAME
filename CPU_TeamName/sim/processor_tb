`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/23/2016 04:38:59 PM
// Design Name: 
// Module Name: processor_tb
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


module processor_tb;
logic clk, rst;
int reg_write;

processor cpu(
            .clk(clk),
            .rst(rst),
            .reg_write(reg_write)
            );
            
int i;

initial begin
       clk=0; rst=1;
          #10ns;
             clk=1;
          #10ns;
             rst=0;
      
         for ( i=0;i<80;i++) begin
         #10ns;
         clk= 0;
         #10ns;
         clk=1;
         end
        
        end

endmodule
