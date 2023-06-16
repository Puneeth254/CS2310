`timescale 1ns/1ns

module OR8(output[7:0] result, input[7:0] operand1, operand2);

    //OR for two 8 bit inputs.

    or  (result[0], operand1[0], operand2[0]);
    or  (result[1], operand1[1], operand2[1]);
    or  (result[2], operand1[2], operand2[2]);
    or  (result[3], operand1[3], operand2[3]);
    or  (result[4], operand1[4], operand2[4]);
    or  (result[5], operand1[5], operand2[5]);
    or  (result[6], operand1[6], operand2[6]);
    or  (result[7], operand1[7], operand2[7]);

endmodule