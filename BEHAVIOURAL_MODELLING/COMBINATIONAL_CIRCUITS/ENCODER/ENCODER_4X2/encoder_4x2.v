// Halima Diyauddeen — 2026 — 4×2 Encoder (DUT)

/*
 * Module Name : encoder_4x2
 * Modeling    : Behavioral
 * Description : Design Under Test (DUT)
 */

module encoder_4x2 (
    input  i0,
    input  i1,
    input  i2,
    input  i3,

    output reg y0,
    output reg y1
);

    always @(*) begin
        y0 = 1'b0;
        y1 = 1'b0;

        case ({i3, i2, i1, i0})
            4'b0001: begin
                y1 = 1'b0;
                y0 = 1'b0;
            end

            4'b0010: begin
                y1 = 1'b0;
                y0 = 1'b1;
            end

            4'b0100: begin
                y1 = 1'b1;
                y0 = 1'b0;
            end

            4'b1000: begin
                y1 = 1'b1;
                y0 = 1'b1;
            end
        endcase
    end

endmodule
