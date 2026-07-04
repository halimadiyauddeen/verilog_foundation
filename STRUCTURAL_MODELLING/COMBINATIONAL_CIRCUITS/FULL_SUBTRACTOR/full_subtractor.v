// Halima Diyauddeen — 2026 — Full Subtractor (DUT)

/*
 * Module Name : full_subtractor
 * Modeling    : Structural
 * Description : Design Under Test (DUT)
 */

module full_subtractor (
    input  a,
    input  b,
    input  bin,

    output diff,
    output borrow
);

    // Internal wires
    wire xor1;
    wire na;
    wire and1;
    wire and2;
    wire and3;

    // Difference
    xor (xor1, a, b);
    xor (diff, xor1, bin);

    // Inverter
    not (na, a);

    // Borrow
    and (and1, na, b);
    and (and2, na, bin);
    and (and3, b, bin);
    or  (borrow, and1, and2, and3);

endmodule
