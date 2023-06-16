`timescale 1ns/1ns

`include "not8.v"     // including not8 module.

module TC(output[7:0] result, input[7:0] operand);

    wire[7:0] inverted;
    wire [7:0] cb;

    //Inverting all bits in the operand.

    NOT8 not1(inverted, operand);

    //Adding 1 to the above output using half adders.

    HalfAdder h1(result[0], cb[0], inverted[0], 1'b1);
    HalfAdder h2[6:1](result[6:1], cb[6:1], inverted[6:1], cb[5:0]);
    HalfAdder h3(result[7], cb[7], inverted[7], cb[6]);

endmodule