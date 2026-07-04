// Halima Diyauddeen — 2026 — 2×4 Decoder (DUT)

/*
 * Module Name : decoder_2x4
 * Modeling    : Behavioral
 * Description : Design Under Test (DUT)
 */

module decoder_2x4 (
    input  [1:0] a,

    output reg y0,
    output reg y1,
    output reg y2,
    output reg y3
);

    always @(*) begin
        y0 = 1'b0;
        y1 = 1'b0;
        y2 = 1'b0;
        y3 = 1'b0;

        case (a)
            2'b00: y0 = 1'b1;
            2'b01: y1 = 1'b1;
            2'b10: y2 = 1'b1;
            2'b11: y3 = 1'b1;
        endcase
    end

endmodule
