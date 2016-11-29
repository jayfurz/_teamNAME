`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/22/2016 09:53:24 PM
// Design Name: 
// Module Name: modemux
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


module modemux(
    input logic mode,
    input logic arit,
    input logic log,
    output logic out
    );
    
    assign out = (mode)?log:arit;
endmodule
