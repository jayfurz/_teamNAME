`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/22/2016 08:22:57 PM
// Design Name: 
// Module Name: arithmeticmuxcin
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


module arithmeticmuxcin(
    input cin,
    input [2:0] opsel,
    input cout
    );
    
    assign cout = (opsel == 3'b000) ? cin:
                  (opsel == 3'b001) ? cin:
                  (opsel == 3'b010) ? 1'b0:
                  (opsel == 3'b011) ? cin:
                  (opsel == 3'b100) ? cin:
                  (opsel == 3'b101) ? cin:
                  (opsel == 3'b110) ? cin:1'bz;
endmodule
