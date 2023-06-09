`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/09/2023 11:29:40 AM
// Design Name: 
// Module Name: ALL
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


// Projeyi ilk teslim ederken zip dosyas?na s?k??t?rd???m ve ad?n? de?i?tirdi?im için kaynak kod dosyalar?n içerisisindeki kodlar kaybolmu?
// Bunu sabah 11 saatinde fark ettim ve projemi düzenleyip tekrar gönderdim. Dersimizin hocas?na sordu?umda sorun te?kil etmeyece?ini söyledi.
//Siyam Acet

module ALL(

input logic CLK,
           input logic WE3,
           
           output logic [31:0] aluResult,
           output logic carry_out,
           output logic overflow,
           output logic zero,
           output logic negative,
           output    logic [13:0] Instr

           

    );
    InstrucitonMemory Insta(.CLK(CLK),.Instr(Instr));
    instruction inst_out(.CLK(CLK),.WE3(WE3),.instructions(Instr),.WD3(aluResult),.carry_out(carry_out),.overflow(overflow),.zero(zero),.negative(negative));
    
    
    
    
    
endmodule


