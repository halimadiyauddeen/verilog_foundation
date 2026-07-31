// Halima Diyauddeen — 2026 — 8×1 MUX Task (DUT)

/*
 * Module Name : mux_8x1_task
 * Modeling    : Task
 * Description : Design Under Test (DUT)
 */

module mux_8x1_task (

    input  i0,
    input  i1,
    input  i2,
    input  i3,
    input  i4,
    input  i5,
    input  i6,
    input  i7,
    input  [2:0] sel,

    output reg y
);

    // Task definition
    task mux;

        input  i0;
        input  i1;
        input  i2;
        input  i3;
        input  i4;
        input  i5;
        input  i6;
        input  i7;
        input  [2:0] sel;

        output y;

        begin

            case (sel)

                3'b000: y = i0;
                3'b001: y = i1;
                3'b010: y = i2;
                3'b011: y = i3;
                3'b100: y = i4;
                3'b101: y = i5;
                3'b110: y = i6;
                3'b111: y = i7;

            endcase

        end

    endtask

    // Task call
    always @(*) begin

        mux(i0, i1, i2, i3, i4, i5, i6, i7, sel, y);

    end

endmodule
