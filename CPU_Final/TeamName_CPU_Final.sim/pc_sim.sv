`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/23/2016 11:58:13 AM
// Design Name: 
// Module Name: pc_tb
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


module pc_tb;
    
logic clk, rst;
logic [5:0] pout;

pc a1(
        .clk(clk),
        .rst(rst),
        .pout(pout)
        );
        
int i;
       initial begin
            clk=0; rst=1;
         #10ns;
            clk=1;
         #10ns;
            rst=0;
     
        for ( i=0;i<120;i++) begin
        #10ns;
        clk= 0;
        #10ns;
        clk=1;
        end
       
       end

endmodule
