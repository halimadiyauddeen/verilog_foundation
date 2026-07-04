// Halima Diyauddeen — 2026 — Ripple Carry Adder (DUT)

/*
 * Module Name : ripple_carry_adder
 * Modeling    : Gate-Level
 * Description : Design Under Test (DUT)
 */

module ripple_carry_adder (
    input  a0,
    input  a1,
    input  a2,
    input  a3,

    input  b0,
    input  b1,
    input  b2,
    input  b3,

    input  cin,

    output s0,
    output s1,
    output s2,
    output s3,

    output cout
);

    wire c1;
    wire c2;
    wire c3;

    // Instantiate Full Adders
    full_adder fa0 (
        .a(a0),
        .b(b0),
        .cin(cin),
        .sum(s0),
        .cout(c1)
    );

    full_adder fa1 (
        .a(a1),
        .b(b1),
        .cin(c1),
        .sum(s1),
        .cout(c2)
    );

    full_adder fa2 (
        .a(a2),
        .b(b2),
        .cin(c2),
        .sum(s2),
        .cout(c3)
    );

    full_adder fa3 (
        .a(a3),
        .b(b3),
        .cin(c3),
        .sum(s3),
        .cout(cout)
    );

endmodule
