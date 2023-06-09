`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/09/2023 11:24:28 AM
// Design Name: 
// Module Name: NbitFulladder
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


module NbitFulladder( input logic [31:0] a, b,
input logic cin,
output logic [31:0] s,
output logic cout );
wire [30:0] c;
fulladder i_0 (a[0],b[0],cin,s[0],c[0]);
fulladder i_1 (a[1],b[1],c[0],s[1],c[1]);
fulladder i_2 (a[2],b[2],c[1],s[2],c[2]);
fulladder i_3 (a[3],b[3],c[2],s[3],c[3]);
fulladder i_4 (a[4],b[4],c[3],s[4],c[4]);
fulladder i_5 (a[5],b[5],c[4],s[5],c[5]);
fulladder i_6 (a[6],b[6],c[5],s[6],c[6]);
fulladder i_7 (a[7],b[7],c[6],s[7],c[7]);
fulladder i_8 (a[8],b[8],c[7],s[8],c[8]);
fulladder i_9 (a[9],b[9],c[8],s[9],c[9]);
fulladder i_10 (a[10],b[10],c[9],s[10],c[10]);
fulladder i_11 (a[11],b[11],c[10],s[11],c[11]);
fulladder i_12 (a[12],b[12],c[11],s[12],c[12]);
fulladder i_13 (a[13],b[13],c[12],s[13],c[13]);
fulladder i_14 (a[14],b[14],c[13],s[14],c[14]);
fulladder i_15 (a[15],b[15],c[14],s[15],c[15]);
fulladder i_16 (a[16],b[16],c[15],s[16],c[16]);
fulladder i_17 (a[17],b[17],c[16],s[17],c[17]);
fulladder i_18 (a[18],b[18],c[17],s[18],c[18]);
fulladder i_19 (a[19],b[19],c[18],s[19],c[19]);
fulladder i_20 (a[20],b[20],c[19],s[20],c[20]);
fulladder i_21 (a[21],b[21],c[20],s[21],c[21]);
fulladder i_22 (a[22],b[22],c[21],s[22],c[22]);
fulladder i_23 (a[23],b[23],c[22],s[23],c[23]);
fulladder i_24 (a[24],b[24],c[23],s[24],c[24]);
fulladder i_25 (a[25],b[25],c[24],s[25],c[25]);
fulladder i_26 (a[26],b[26],c[25],s[26],c[26]);
fulladder i_27 (a[27],b[27],c[26],s[27],c[27]);
fulladder i_28 (a[28],b[28],c[27],s[28],c[28]);
fulladder i_29 (a[29],b[29],c[28],s[29],c[29]);
fulladder i_30 (a[30],b[30],c[29],s[30],c[30]);
fulladder i_31 (a[31],b[31],c[30],s[31],cout);

endmodule