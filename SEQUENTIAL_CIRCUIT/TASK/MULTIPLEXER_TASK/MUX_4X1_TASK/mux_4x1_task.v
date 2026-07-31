// Halima Diyauddeen — 2026 — 4×1 MUX Task (DUT)

/*
 * Module Name : mux_4x1_task
 * Modeling    : Task
 * Description : Design Under Test (DUT)
 */

module mux_4x1_task (

    input  i0,
    input  i1,
    input  i2,
    input  i3,
    input  [1:0] sel,

    output reg y
);

    // Task definition
    task mux;

        input  i0;
        input  i1;
        input  i2;
        input  i3;
        input  [1:0] sel;

        output y;

        begin

            case (sel)

                2'b00: y = i0;
                2'b01: y = i1;
                2'b10: y = i2;
                2'b11: y = i3;

            endcase

        end

    endtask

    // Task call
    always @(*) begin

        mux(i0, i1, i2, i3, sel, y);

    end

endmodule
