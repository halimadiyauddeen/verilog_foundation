// Halima Diyauddeen — 2026 — 3-Bit Comparator (DUT)

/*
 * Module Name : comparator_3bit
 * Modeling    : Structural
 * Description : Design Under Test (DUT)
 */

module comparator_3bit (
    input  a2,
    input  a1,
    input  a0,
    input  b2,
    input  b1,
    input  b0,

    output greater,
    output equal,
    output less
);

    // Internal wires
    wire eq2, eq1, eq0;
    wire na2, na1, na0;
    wire nb2, nb1, nb0;

    wire gt2, gt1, gt0;
    wire lt2, lt1, lt0;

    wire eq21;
    wire eq210;

    // Inverters
    not (na2, a2);
    not (na1, a1);
    not (na0, a0);

    not (nb2, b2);
    not (nb1, b1);
    not (nb0, b0);

    // Equality
    xnor (eq2, a2, b2);
    xnor (eq1, a1, b1);
    xnor (eq0, a0, b0);

    and (eq21, eq2, eq1);
    and (eq210, eq21, eq0);

    // Greater-than
    and (gt2, a2, nb2);
    and (gt1, eq2, a1, nb1);
    and (gt0, eq21, a0, nb0);

    // Less-than
    and (lt2, na2, b2);
    and (lt1, eq2, na1, b1);
    and (lt0, eq21, na0, b0);

    // Outputs
    or  (greater, gt2, gt1, gt0);
    and (equal, eq210);
    or  (less, lt2, lt1, lt0);

endmodule
