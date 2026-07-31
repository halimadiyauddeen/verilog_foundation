// Halima Diyauddeen — 2026 — 8×3 Encoder Task (DUT)

/*
 * Module Name : encoder_8x3_task
 * Modeling    : Task
 * Description : Design Under Test (DUT)
 */

module encoder_8x3_task (

    input  [7:0] d,

    output reg [2:0] y
);

    // Task definition
    task encoder;

        input  [7:0] d;

        output [2:0] y;

        begin

            case (d)

                8'b00000001: y = 3'b000;
                8'b00000010: y = 3'b001;
                8'b00000100: y = 3'b010;
                8'b00001000: y = 3'b011;
                8'b00010000: y = 3'b100;
                8'b00100000: y = 3'b101;
                8'b01000000: y = 3'b110;
                8'b10000000: y = 3'b111;
                default:     y = 3'b000;

            endcase

        end

    endtask

    // Task call
    always @(*) begin

        encoder(d, y);

    end

endmodule
