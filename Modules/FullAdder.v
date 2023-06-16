`timescale 1ns/1ns

`include "HalfAdder.v" //including HalfAdder module.

module FullAdder(output sum, cout, input A, B, cin);
    wire [2:0] p;

    //implementation of FullAdder using HalfAdder.

    HalfAdder HA1(p[0], p[1], A, B);
    HalfAdder HA2(sum, p[2], p[0], cin);
    or  (cout, p[1], p[2]);

endmodule