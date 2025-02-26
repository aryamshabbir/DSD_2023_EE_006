`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/26/2025 07:50:05 PM
// Design Name: 
// Module Name: lab6
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

 module lab5 (
        input logic [3:0] num,      
        input logic [2:0] sel,      
        output logic [7:0] segment,
        output logic [7:0] anode
    );
    
        assign segment[0] = (~num[0] & num[1] & ~num[2] & ~num[3]) | (~num[0] & ~num[1] & ~num[2] & num[3]) | (num[0] & num[1] & ~num[2] & num[3]) | (num[0] & ~num[1] & num[2] & num[3]);
    
        assign segment[1] = (num[0] & num[2] & num[3]) | (num[1] & num[2] & ~num[3]) | (num[0] & num[1] & ~num[3]) | (~num[0] & num[1] & ~num[2] & num[3]);
    
        assign segment[2] = (num[0] & num[1] & num[2]) | (num[0] & num[1] & ~num[3]) | (~num[0] & ~num[1] & num[2] & ~num[3]);
    
        assign segment[3] = (num[1] & num[2] & num[3]) | (~num[0] & num[1] & ~num[2] & ~num[3]) |  (~num[0] & ~num[1] & ~num[2] & num[3]) | (num[0] & ~num[1] & num[2] & ~num[3]);
    
        assign segment[4] = (~num[0] & num[3]) | (~num[0] & num[1] & ~num[2]) | (~num[1] & ~num[2] & num[3]);
    
        assign segment[5] = (~num[0] & ~num[1] & num[3]) | (~num[0] & num[2] & num[3]) | (~num[0] & ~num[1] & num[2]) | (num[0] & num[1] & ~num[2] & num[3]);
    
        assign segment[6] = (~num[0] & ~num[1] & ~num[2]) | (num[0] & num[1] & ~num[2] & ~num[3]) | (~num[0] & num[1] & num[2] & num[3]);
    
        assign segment[7] = 0;
       
        assign anode[0] = (~sel[2]&sel[0] | sel[1] | sel[2]);
        assign anode[1] = (~sel[2]&~sel[0] | sel[1] | sel[2]);
        assign anode[2] = (~sel[2]&sel[0] | ~sel[1] | sel[2]);
        assign anode[3] = (~sel[0]&~sel[2] | ~sel[1] | sel[2]);
        assign anode[4] = (sel[0]&sel[2] | sel[1] | ~sel[2]);
        assign anode[5] = (~sel[0] | sel[1] | sel[2] | ~sel[2]);
        assign anode[6] = (sel[0]& sel[2] | ~sel[1] | ~sel[2]);
        assign anode[7] = (~sel[0]&sel[1] | ~sel[1] | ~sel[2]);
    
    
endmodule
