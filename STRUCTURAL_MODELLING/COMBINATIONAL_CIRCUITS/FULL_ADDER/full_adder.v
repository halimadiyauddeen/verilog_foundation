// Halima Diyauddeen — 2026 — Full Adder (DUT)

/*
 * Module Name : full_adder
 * Modeling    : Structural
 * Description : Design Under Test (DUT)
 */

module full_adder (
    input  a,
    input  b,
    input  cin,

    output sum,
    output carry
);

    // Internal wires
    wire xor1;
    wire and1;
    wire and2;
    wire and3;

    // Sum
    xor (xor1, a, b);
    xor (sum, xor1, cin);

    // Carry
    and (and1, a, b);
    and (and2, a, cin);
    and (and3, b, cin);
    or  (carry, and1, and2, and3);

endmodule
