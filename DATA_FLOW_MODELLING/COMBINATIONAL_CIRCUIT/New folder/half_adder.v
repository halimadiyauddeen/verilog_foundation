// Halima Diyauddeen — 2026 — Half Adder (DUT)

/*
 * Module Name : half_adder
 * Modeling    : Dataflow
 * Description : Design Under Test (DUT)
 */

module half_adder (
    input  a,          // First input
    input  b,          // Second input
    output sum,        // Sum output
    output carry       // Carry output
);

    // Calculate the sum
    assign sum = a ^ b;

    // Calculate the carry
    assign carry = a & b;

endmodule
