`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/09/2023 11:26:46 AM
// Design Name: 
// Module Name: ALU
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
module ALU(input logic [31:0] a, b, 
    input logic [1:0] control,
    output logic [31:0] alu_out,
    output logic carry_out,
    output logic overflow,
    output logic zero,
    output logic negative );

    logic [31:0] sum;
    logic [31:0] and_out, or_out, xor_out;
    logic [31:0] not_b;
    logic [31:0] mux2_out;

	MUX2 mux2_select_out(b, ~b, control[0], mux2_out);
	NbitFulladder NbitAdder_out(a, mux2_out, control[0], sum, cout );
	

	assign and_out = a & b;
	assign or_out = a | b;

	MUX4 mux4_out(sum, sum, and_out, or_out, control, alu_out ); // selection multiplexer
	
        // flags
	assign zero = ~alu_out[0] & ~alu_out[1] & ~alu_out[2] & ~alu_out[3] & ~alu_out[4] & ~alu_out[5] & ~alu_out[6] & ~alu_out[7] & ~alu_out[8] & ~alu_out[9] & ~alu_out[10] & ~alu_out[11]&~alu_out[12] & ~alu_out[13] & ~alu_out[14] & ~alu_out[15] & ~alu_out[16] & ~alu_out[17] & ~alu_out[18] & ~alu_out[19] & ~alu_out[20] & ~alu_out[21] & ~alu_out[22] & ~alu_out[23]& ~alu_out[24] & ~alu_out[25] & ~alu_out[26] & ~alu_out[27] & ~alu_out[28] & ~alu_out[29] & ~alu_out[30] & ~alu_out[31]; 
	assign negative = alu_out[31];
	assign carry_out = cout & ~control[1];
	assign overflow = ~(control[0] ^ a[31] ^ b[31]) & (a[31] ^ sum[31]) & (~control[1]);

endmodule

