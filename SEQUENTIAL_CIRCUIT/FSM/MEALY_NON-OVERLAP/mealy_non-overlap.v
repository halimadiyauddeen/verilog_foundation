// Halima Diyauddeen — 2026 — Mealy Non-Overlap Sequence Detector (DUT)

/*
 * Module Name : mealy_non_overlap
 * Modeling    : FSM (Mealy)
 * Description : Design Under Test (DUT)
 */

module mealy_non_overlap (

    input clk,
    input rst,
    input x,

    output reg y

);

    // State declaration
    parameter S0 = 2'b00,
              S1 = 2'b01,
              S2 = 2'b10,
              S3 = 2'b11;

    // State registers
    reg [1:0] present_state;
    reg [1:0] next_state;

    // State register
    always @(posedge clk) begin

        if (rst)
            present_state <= S0;
        else
            present_state <= next_state;

    end

    // Next-state logic and output logic
    always @(*) begin

        y = 1'b0;

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
                if (x) begin
                    next_state = S0;
                    y = 1'b1;
                end
                else
                    next_state = S2;

            default: begin
                next_state = S0;
                y = 1'b0;
            end

        endcase

    end

endmodule
