`timescale 1ns/1ns

`include "FullAdder.v"    //including FullAdder module.

module ADD(output[7:0] result, input[7:0] operand1, operand2, input cin); //This module is to add two 8 bit inputs.

    wire [7:0] cb;

    //Using FullAdder's in a row to find each bit of result.
    //This is a Ripple Carry Adder.

    FullAdder f1(result[0], cb[0], operand1[0], operand2[0], cin);
    FullAdder f2[6:1](result[6:1], cb[6:1], operand1[6:1], operand2[6:1], cb[5:0]);
    FullAdder f3(result[7], cb[7], operand1[7], operand2[7], cb[6]);

endmodule