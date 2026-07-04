// Halima Diyauddeen — 2026 — 2-Bit Comparator (DUT)

/*
 * Module Name : comparator_2bit
 * Modeling    : Behavioral
 * Description : Design Under Test (DUT)
 */

module comparator_2bit (
    input  [1:0] a,
    input  [1:0] b,

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
