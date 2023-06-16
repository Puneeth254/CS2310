`timescale 1ns/1ns

`include "ADD.v"      //including all the modules that are required for the following module.
`include "TC.v"
`include "AND8.v"
`include "OR8.v"
`include "A18.v"
`include "MUX1.v"
`include "MUX2.v"

module ALU(output [7:0] result, input [7:0] operand1, operand2, select);  //This module is ALU. We perform operations in this module.

    wire[7:0] result1, result2, result3, result4, op2;

    MUX1 m1(op2, operand2, select);              // This is MUX1, used to select op2(the second operand for ADD) among four possibilities.

    ADD add1(result1, operand1, op2, 1'b0);     //Adding operand1 and op2 (output from MUX1).
    AND8 and1(result2, operand1, operand2);     //AND of operand1 and operand2 
    OR8 or1(result3, operand1, operand2);       //OR of operand1 and operand2  
    NOT8 not1(result4, operand1);               //NOT of operand1

    MUX2 m2(result, result1, result2, result3, result4, select); // This is MUX2, used to select the result among the four possible results shown above.

endmodule