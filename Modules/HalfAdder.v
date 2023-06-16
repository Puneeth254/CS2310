`timescale 1ns/1ns

module HalfAdder(output sum, carry, input A, B);         // module of halfadder

    xor  (sum, A, B);
    and  (carry, A, B);

endmodule