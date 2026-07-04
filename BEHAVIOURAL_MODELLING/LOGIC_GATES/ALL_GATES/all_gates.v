// Halima Diyauddeen — 2026 — All Logic Gates (DUT)

/*
 * Module Name : all_gates
 * Modeling    : Behavioral
 * Description : Design Under Test (DUT)
 */

module all_gates (
    input  a,
    input  b,

    output reg and_out,
    output reg or_out,
    output reg nand_out,
    output reg nor_out,
    output reg xor_out,
    output reg xnor_out,
    output reg not_a,
    output reg not_b
);

    always @(*) begin
        and_out  = a & b;
        or_out   = a | b;
        nand_out = ~(a & b);
        nor_out  = ~(a | b);
        xor_out  = a ^ b;
        xnor_out = ~(a ^ b);
        not_a    = ~a;
        not_b    = ~b;
    end

endmodule
