`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/09/2023 11:26:09 AM
// Design Name: 
// Module Name: MUX4
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


module MUX4(input logic [31:0] d0, d1, d2, d3,
input logic [1:0] s,
output logic [31:0] y);
assign y = s[1] ?
(s[0] ? d3 : d2):
(s[0] ? d1 : d0);
endmodule