`timescale 1ns/1ns

module AND8(output[7:0] result, input[7:0] operand1, operand2); //This module is to perform AND for two 8 bit inputs.

    //and of each bit of two operands are performed to get the output.

    and (result[0], operand1[0], operand2[0]);
    and (result[1], operand1[1], operand2[1]);
    and (result[2], operand1[2], operand2[2]);
    and (result[3], operand1[3], operand2[3]);
    and (result[4], operand1[4], operand2[4]);
    and (result[5], operand1[5], operand2[5]);
    and (result[6], operand1[6], operand2[6]);
    and (result[7], operand1[7], operand2[7]);

endmodule