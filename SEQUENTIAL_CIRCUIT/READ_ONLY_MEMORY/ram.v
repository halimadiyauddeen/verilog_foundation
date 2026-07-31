// Halima Diyauddeen — 2026 — RAM (DUT)

/*
 * Module Name : ram
 * Modeling    : Sequential
 * Description : Design Under Test (DUT)
 */

module ram #

(

    parameter DATA_WIDTH = 8,
    parameter ADDR_WIDTH = 4,
    parameter DEPTH = 16

)

(

    input clk,
    input we,

    input  [ADDR_WIDTH-1:0] addr,
    input  [DATA_WIDTH-1:0] data_in,

    output reg [DATA_WIDTH-1:0] data_out

);

    // Memory array
    reg [DATA_WIDTH-1:0] memory [0:DEPTH-1];

    // Sequential RAM operation
    always @(posedge clk) begin

        // Write operation
        if (we)

            memory[addr] <= data_in;

        // Read operation
        else

            data_out <= memory[addr];

    end

endmodule
