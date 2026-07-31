// Halima Diyauddeen — 2026 — Mealy Overlap Sequence Detector (DUT)

/*
 * Module Name : mealy_overlap
 * Modeling    : FSM (Mealy)
 * Description : Design Under Test (DUT)
 */

module mealy_overlap (

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
                if (x) begin
                    next_state = S1;
                end
                else begin
                    next_state = S0;
                end

            S1:
                if (x) begin
                    next_state = S1;
                end
                else begin
                    next_state = S2;
                end

            S2:
                if (x) begin
                    next_state = S3;
                end
                else begin
                    next_state = S0;
                end

            S3:
                if (x) begin
                    next_state = S1;
                    y = 1'b1;
                end
                else begin
                    next_state = S2;
                end

            default: begin
                next_state = S0;
                y = 1'b0;
            end

        endcase

    end

endmodule
