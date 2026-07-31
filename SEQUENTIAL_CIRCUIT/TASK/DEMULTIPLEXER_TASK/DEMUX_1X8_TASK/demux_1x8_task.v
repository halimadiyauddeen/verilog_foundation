// Halima Diyauddeen — 2026 — 1×8 DEMUX Task (DUT)

/*
 * Module Name : demux_1x8_task
 * Modeling    : Task
 * Description : Design Under Test (DUT)
 */

module demux_1x8_task (

    input       din,
    input [2:0] sel,

    output reg y0,
    output reg y1,
    output reg y2,
    output reg y3,
    output reg y4,
    output reg y5,
    output reg y6,
    output reg y7
);

    // Task definition
    task demux;

        input din;
        input [2:0] sel;

        output y0;
        output y1;
        output y2;
        output y3;
        output y4;
        output y5;
        output y6;
        output y7;

        begin

            y0 = 0;
            y1 = 0;
            y2 = 0;
            y3 = 0;
            y4 = 0;
            y5 = 0;
            y6 = 0;
            y7 = 0;

            case (sel)

                3'b000: y0 = din;
                3'b001: y1 = din;
                3'b010: y2 = din;
                3'b011: y3 = din;
                3'b100: y4 = din;
                3'b101: y5 = din;
                3'b110: y6 = din;
                3'b111: y7 = din;

            endcase

        end

    endtask

    // Task call
    always @(*) begin

        demux(din, sel, y0, y1, y2, y3, y4, y5, y6, y7);

    end

endmodule
