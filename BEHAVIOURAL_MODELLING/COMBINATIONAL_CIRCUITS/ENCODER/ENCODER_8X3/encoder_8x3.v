// Halima Diyauddeen — 2026 — 8×3 Encoder (DUT)

/*
 * Module Name : encoder_8x3
 * Modeling    : Behavioral
 * Description : Design Under Test (DUT)
 */

module encoder_8x3 (
    input  i0,
    input  i1,
    input  i2,
    input  i3,
    input  i4,
    input  i5,
    input  i6,
    input  i7,

    output reg y2,
    output reg y1,
    output reg y0
);

    always @(*) begin
        y2 = 1'b0;
        y1 = 1'b0;
        y0 = 1'b0;

        case ({i7, i6, i5, i4, i3, i2, i1, i0})
            8'b00000001: begin
                y2 = 1'b0;
                y1 = 1'b0;
                y0 = 1'b0;
            end

            8'b00000010: begin
                y2 = 1'b0;
                y1 = 1'b0;
                y0 = 1'b1;
            end

            8'b00000100: begin
                y2 = 1'b0;
                y1 = 1'b1;
                y0 = 1'b0;
            end

            8'b00001000: begin
                y2 = 1'b0;
                y1 = 1'b1;
                y0 = 1'b1;
            end

            8'b00010000: begin
                y2 = 1'b1;
                y1 = 1'b0;
                y0 = 1'b0;
            end

            8'b00100000: begin
                y2 = 1'b1;
                y1 = 1'b0;
                y0 = 1'b1;
            end

            8'b01000000: begin
                y2 = 1'b1;
                y1 = 1'b1;
                y0 = 1'b0;
            end

            8'b10000000: begin
                y2 = 1'b1;
                y1 = 1'b1;
                y0 = 1'b1;
            end
        endcase
    end

endmodule
