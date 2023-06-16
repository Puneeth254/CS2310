`timescale 1ns/1ns

module NOT8(output[7:0] result, input[7:0] operand1);

    //NOT for 8 bit inputs.

    not (result[0], operand1[0]);
    not (result[1], operand1[1]);
    not (result[2], operand1[2]);
    not (result[3], operand1[3]);
    not (result[4], operand1[4]);
    not (result[5], operand1[5]);
    not (result[6], operand1[6]);
    not (result[7], operand1[7]);

endmodule