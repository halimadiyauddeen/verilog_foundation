// Halima Diyauddeen — 2026 — 1×4 DEMUX Task (DUT)

/*
 * Module Name : demux_1x4_task
 * Modeling    : Task
 * Description : Design Under Test (DUT)
 */

module demux_1x4_task (

    input       din,
    input [1:0] sel,

    output reg y0,
    output reg y1,
    output reg y2,
    output reg y3
);

    // Task definition
    task demux;

        input din;
        input [1:0] sel;

        output y0;
        output y1;
        output y2;
        output y3;

        begin

            y0 = 0;
            y1 = 0;
            y2 = 0;
            y3 = 0;

            case (sel)

                2'b00: y0 = din;
                2'b01: y1 = din;
                2'b10: y2 = din;
                2'b11: y3 = din;

            endcase

        end

    endtask

    // Task call
    always @(*) begin

        demux(din, sel, y0, y1, y2, y3);

    end

endmodule
