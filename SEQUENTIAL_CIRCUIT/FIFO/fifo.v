// Halima Diyauddeen — 2026 — FIFO (DUT)

/*
 * Module Name : fifo
 * Modeling    : Sequential
 * Description : Design Under Test (DUT)
 */

module fifo #(parameter WIDTH = 8,
              parameter DEPTH = 8)

(

    input clk,
    input rst,

    input wr_en,
    input rd_en,

    input [WIDTH-1:0] data_in,

    output reg [WIDTH-1:0] data_out,

    output reg full,
    output reg empty

);

    // Memory array
    reg [WIDTH-1:0] mem [0:DEPTH-1];

    // Pointers
    integer wr_ptr;
    integer rd_ptr;

    // Counter
    integer count;

    always @(posedge clk) begin

        if (rst) begin

            wr_ptr   <= 0;
            rd_ptr   <= 0;
            count    <= 0;

            full     <= 0;
            empty    <= 1;

            data_out <= 0;

        end

        else begin

            // Write Operation
            if (wr_en && !full) begin

                mem[wr_ptr] <= data_in;

                if (wr_ptr == DEPTH-1)
                    wr_ptr <= 0;
                else
                    wr_ptr <= wr_ptr + 1;

                count <= count + 1;

            end

            // Read Operation
            if (rd_en && !empty) begin

                data_out <= mem[rd_ptr];

                if (rd_ptr == DEPTH-1)
                    rd_ptr <= 0;
                else
                    rd_ptr <= rd_ptr + 1;

                count <= count - 1;

            end

            // Status Flags
            full  <= (count == DEPTH);
            empty <= (count == 0);

        end

    end

endmodule
