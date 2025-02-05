`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/03/2025 10:40:20 PM
// Design Name: 
// Module Name: lab2
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


module lab2(
    input logic a,
    input logic b,
    input logic c,
    output logic x,
    output logic y
    );
    logic or_out1;
    logic nand_out;
    logic or_out2;
    logic not_out;
    logic xor_out;
    assign or_out1= a|b;
    assign nand_out= ~(a&b);
    assign or_out2= a|b;
    assign not_out=~c;
    assign xor_out=(nand_out)^(or_out2);
    assign x=(not_out)^(or_out1);
    assign y=(or_out1)&(xor_out);
       
endmodule
