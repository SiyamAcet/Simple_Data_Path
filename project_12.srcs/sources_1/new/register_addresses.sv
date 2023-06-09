`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/09/2023 11:27:52 AM
// Design Name: 
// Module Name: register_addresses
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


module instruction(
//inputs
input logic CLK,
input logic WE3,
input logic [13:0] instructions,
//outputs
output logic carry_out,
output logic overflow,
output logic zero,
output logic negative,
output logic [31:0] WD3
    );

    logic [1:0] ALUControl;
    logic [3:0] REGwrt;
    logic [3:0] REG1;
    logic [3:0] REG2;

    logic [31:0] RD1,RD2;

    register_addresses reg_out(instructions,ALUControl,REGwrt,REG1,REG2);

    logic [31:0] rf [15:0];

    initial begin
        // Kayýtlara atama yapma
    rf[0]  = 32'b00000000000000000000000000000000;
    rf[1]  = 32'b00000000000000000000000000000001;
    rf[2]  = 32'b00000000000000000000000000000010;
    rf[3]  = 32'b00000000000000000000000000000011;
    rf[4]  = 32'b00000000000000000000000000000100;
    rf[5]  = 32'b00000000000000000000000000000101;
    rf[6]  = 32'b00000000000000000000000000000110;
    rf[7]  = 32'b00000000000000000000000000000111;
    rf[8]  = 32'b00000000000000000000000000001000;
    rf[9]  = 32'b00000000000000000000000000001001;
    rf[10] = 32'b00000000000000000000000000001010;
    rf[11] = 32'b00000000000000000000000000001011;
    rf[12] = 32'b00000000000000000000000000001100;
    rf[13] = 32'b00000000000000000000000000001101;
    rf[14] = 32'b00000000000000000000000000001110;
    rf[15] = 32'b00000000000000000000000000001111;
        end


    always_comb  begin
        RD1 = rf[REG1];
        RD2 = rf[REG2];
    end

    ALU  alu_out(RD1,RD2,ALUControl,WD3,carry_out,overflow,zero,negative);


 always_comb begin
 
            begin
          if(WE3==1) 
            begin
            rf[REGwrt] <= WD3;
              end 
       end

    end


endmodule
