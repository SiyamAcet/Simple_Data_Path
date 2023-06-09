`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/09/2023 11:28:52 AM
// Design Name: 
// Module Name: InstrucitonMemory
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
module InstrucitonMemory(input logic CLK,
output logic [13:0] Instr
    );
     logic [1:0] PC = 2'b00;
    logic [1:0] ONE = 2'b01;
    
    logic [13:0] memory [3:0];
    
    initial begin
        memory[0]=14'b00000000011111;
        memory[1]=14'b01111100001110;
        memory[2]=14'b10111111101101;
        memory[3]=14'b11110111111011;
    
    end   
    
    always @(posedge CLK) begin
    
   Instr <= memory[PC];
    PC = PC +ONE;
    end  
    
    
endmodule
