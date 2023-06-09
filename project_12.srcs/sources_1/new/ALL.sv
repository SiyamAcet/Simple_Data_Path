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


// Projeyi ilk teslim ederken zip dosyas?na s?k??t?rd???m ve ad?n? de?i?tirdi?im i�in kaynak kod dosyalar?n i�erisisindeki kodlar kaybolmu?
// Bunu sabah 11 saatinde fark ettim ve projemi d�zenleyip tekrar g�nderdim. Dersimizin hocas?na sordu?umda sorun te?kil etmeyece?ini s�yledi.
//Siyam Acet
//Ceren Alya??z
//Instruction diye adland?rd???m?z modul rergister file dosyass?d?r asl?nda zaman?m?z k?s?tl? oldu?u i�in ve ad?n? de?i?tirirsek program?n �al??mayaca??n? d�?�nd�?�m�z i�in ad?n? de?i?tirmedik.

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


