`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/22/2016 08:04:49 PM
// Design Name: 
// Module Name: arithmeticmux
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


module arithmeticmuxop2(
    input logic [2:0] opsel,
    input logic b,
    output logic op1
    
    
    
    );
    
    assign op1 = (opsel == 3'b000) ? b:
                 (opsel == 3'b001) ? ~b:
                 (opsel == 3'b010) ? 1'b0:
                 (opsel == 3'b011) ? ~b:
                 (opsel == 3'b100) ? 1'b0:
                 (opsel == 3'b101) ? 1'b1:
                 (opsel == 3'b110) ? b:1'bz;
                 
endmodule
