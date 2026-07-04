// Halima Diyauddeen — 2026 — 2-Bit Comparator (DUT)

/*
 * Module Name : comparator_2bit
 * Modeling    : Structural
 * Description : Design Under Test (DUT)
 */

module comparator_2bit (
    input  a1,
    input  a0,
    input  b1,
    input  b0,

    output greater,
    output equal,
    output less
);

    // Internal wires
    wire a1_eq_b1, a0_eq_b0;
    wire na1, na0, nb1, nb0;
    wire msb_gt, lsb_gt;
    wire msb_lt, lsb_lt;
    wire msb_equal;

    // Inverters
    not (na1, a1);
    not (na0, a0);
    not (nb1, b1);
    not (nb0, b0);

    // Equality check
    xnor (a1_eq_b1, a1, b1);
    xnor (a0_eq_b0, a0, b0);
    and  (equal, a1_eq_b1, a0_eq_b0);

    // MSB comparison
    and (msb_gt, a1, nb1);
    and (msb_lt, na1, b1);

    // MSB equal
    and (msb_equal, a1_eq_b1);

    // LSB comparison
    and (lsb_gt, a0, nb0, msb_equal);
    and (lsb_lt, na0, b0, msb_equal);

    // Final outputs
    or (greater, msb_gt, lsb_gt);
    or (less, msb_lt, lsb_lt);

endmodule
