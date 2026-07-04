// Halima Diyauddeen — 2026 — 2-Bit Comparator (DUT)

/*
 * Module Name : comparator_2bit
 * Modeling    : Gate-Level
 * Description : Design Under Test (DUT)
 */

module comparator_2bit (
    input  a1, a0,          // First 2-bit input
    input  b1, b0,          // Second 2-bit input

    output greater,         // A > B
    output equal,           // A = B
    output less             // A < B
);

    wire na1, na0;
    wire nb1, nb0;

    wire eq1, eq0;
    wire g1, g0;
    wire l1, l0;

    // Generate complements of the inputs
    not (na1, a1);
    not (na0, a0);
    not (nb1, b1);
    not (nb0, b0);

    // Compare each bit for equality
    xnor (eq1, a1, b1);
    xnor (eq0, a0, b0);

    // Determine greater-than conditions
    and (g1, a1, nb1);

    wire temp_g;
    and (temp_g, eq1, a0);
    and (g0, temp_g, nb0);

    or (greater, g1, g0);

    // Determine less-than conditions
    and (l1, na1, b1);

    wire temp_l;
    and (temp_l, eq1, na0);
    and (l0, temp_l, b0);

    or (less, l1, l0);

    // Determine equality
    and (equal, eq1, eq0);

endmodule
