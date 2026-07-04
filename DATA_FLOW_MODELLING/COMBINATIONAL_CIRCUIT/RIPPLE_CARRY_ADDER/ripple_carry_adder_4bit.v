// Halima Diyauddeen — 2026 — 4-Bit Ripple Carry Adder (DUT)

/*
 * Module Name : ripple_carry_adder_4bit
 * Modeling    : Dataflow
 * Description : Design Under Test (DUT)
 */

module ripple_carry_adder_4bit (
    input  [3:0] a,      // First 4-bit input
    input  [3:0] b,      // Second 4-bit input
    input        cin,    // Carry input

    output [3:0] sum,    // 4-bit sum
    output       cout    // Carry output
);

    // Generate the sum and carry output
    assign {cout, sum} = a + b + cin;

endmodule
