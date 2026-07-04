// Halima Diyauddeen — 2026 — Full Subtractor (DUT)

/*
 * Module Name : full_subtractor
 * Modeling    : Behavioral
 * Description : Design Under Test (DUT)
 */

module full_subtractor (
    input  a,
    input  b,
    input  bin,

    output reg diff,
    output reg borrow
);

    always @(*) begin
        diff   = a ^ b ^ bin;
        borrow = (~a & b) | (~a & bin) | (b & bin);
    end

endmodule
