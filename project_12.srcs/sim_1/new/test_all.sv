`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/09/2023 11:30:28 AM
// Design Name: 
// Module Name: test_all
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
    module test_all(
    
        );
        
    
        // Inputs
        logic CLK;
        logic WE3;
        
        // Outputs
        logic [31:0] aluResult;
        logic carry_out;
        logic overflow;
        logic zero;
        logic negative;
        logic [13:0] Instr;
        
        // Instantiate the ALL module
        ALL dut (
            .CLK(CLK),
            .WE3(WE3),
            .aluResult(aluResult),
            .carry_out(carry_out),
            .overflow(overflow),
            .zero(zero),
            .negative(negative),
            .Instr(Instr) );
        
        initial begin 
        
        CLK =1;
        WE3=1;
       
        forever #5 CLK = ~CLK;
       
        
        end
    endmodule

