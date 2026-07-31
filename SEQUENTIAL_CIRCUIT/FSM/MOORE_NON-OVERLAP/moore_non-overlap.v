// Halima Diyauddeen — 2026 — Moore Non-Overlap Sequence Detector (DUT)

/*
 * Module Name : moore_non_overlap
 * Modeling    : FSM (Moore)
 * Description : Design Under Test (DUT)
 */

module moore_non_overlap (

    input clk,
    input rst,
    input x,

    output reg y

);

    // State declaration
    parameter S0 = 3'b000,
              S1 = 3'b001,
              S2 = 3'b010,
              S3 = 3'b011,
              S4 = 3'b100;

    // State registers
    reg [2:0] present_state;
    reg [2:0] next_state;

    // State register
    always @(posedge clk) begin

        if (rst)
            present_state <= S0;
        else
            present_state <= next_state;

    end

    // Next-state logic
    always @(*) begin

        case (present_state)

            S0:
                if (x)
                    next_state = S1;
                else
                    next_state = S0;

            S1:
                if (x)
                    next_state = S1;
                else
                    next_state = S2;

            S2:
                if (x)
                    next_state = S3;
                else
                    next_state = S0;

            S3:
                if (x)
                    next_state = S4;
                else
                    next_state = S2;

            // Non-overlap transition
            S4:
                next_state = S0;

            default:
                next_state = S0;

        endcase

    end

    // Output logic
    always @(*) begin

        case (present_state)

            S4: y = 1'b1;

            default: y = 1'b0;

        endcase

    end

endmodule
