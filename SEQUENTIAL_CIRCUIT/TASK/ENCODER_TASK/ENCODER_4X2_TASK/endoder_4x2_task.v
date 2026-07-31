// Halima Diyauddeen — 2026 — 4×2 Encoder Task (DUT)

/*
 * Module Name : encoder_4x2_task
 * Modeling    : Task
 * Description : Design Under Test (DUT)
 */

module encoder_4x2_task (

    input  [3:0] d,

    output reg [1:0] y
);

    // Task definition
    task encoder;

        input  [3:0] d;

        output [1:0] y;

        begin

            case (d)

                4'b0001: y = 2'b00;
                4'b0010: y = 2'b01;
                4'b0100: y = 2'b10;
                4'b1000: y = 2'b11;
                default: y = 2'b00;

            endcase

        end

    endtask

    // Task call
    always @(*) begin

        encoder(d, y);

    end

endmodule
