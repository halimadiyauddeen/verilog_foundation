// Halima Diyauddeen — 2026 — 1-Bit Comparator (DUT)

/*
 * Module Name : comparator_1bit
 * Modeling    : Behavioral
 * Description : Design Under Test (DUT)
 */

module comparator_1bit (
    input  a,
    input  b,

    output reg greater,
    output reg equal,
    output reg less
);

    always @(*) begin
        if (a > b) begin
            greater = 1'b1;
            equal   = 1'b0;
            less    = 1'b0;
        end
        else if (a == b) begin
            greater = 1'b0;
            equal   = 1'b1;
            less    = 1'b0;
        end
        else begin
            greater = 1'b0;
            equal   = 1'b0;
            less    = 1'b1;
        end
    end

endmodule
