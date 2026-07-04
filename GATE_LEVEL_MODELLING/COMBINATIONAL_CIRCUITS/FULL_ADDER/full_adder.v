// Halima Diyauddeen — 2026 — Full Adder (DUT)

/*
 * Module Name : full_adder
 * Modeling    : Gate-Level
 * Description : Design Under Test (DUT)
 */

module full_adder (
    input  a,          // First input
    input  b,          // Second input
    input  cin,        // Carry input

    output sum,        // Sum output
    output cout        // Carry output
);

    wire xor1;
    wire and1;
    wire and2;
    wire and3;

    // Generate sum
    xor (xor1, a, b);
    xor (sum, xor1, cin);

    // Generate carry
    and (and1, a, b);
    and (and2, a, cin);
    and (and3, b, cin);

    or (cout, and1, and2, and3);

endmodule
