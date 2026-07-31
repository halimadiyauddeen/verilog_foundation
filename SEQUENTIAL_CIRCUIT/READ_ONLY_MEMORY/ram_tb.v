// Halima Diyauddeen — 2026 — RAM (Testbench)

/*
 * Module Name : ram_tb
 * Description : Testbench for the Design Under Test (DUT)
 */

module ram_tb;

    parameter DATA_WIDTH = 8;
    parameter ADDR_WIDTH = 4;
    parameter DEPTH = 16;

    // Testbench signals
    reg clk;
    reg we;

    reg [ADDR_WIDTH-1:0] addr;
    reg [DATA_WIDTH-1:0] data_in;

    wire [DATA_WIDTH-1:0] data_out;

    // Instantiate the Design Under Test (DUT)
    ram dut (

        .clk(clk),
        .we(we),
        .addr(addr),
        .data_in(data_in),
        .data_out(data_out)

    );

    // Clock generation
    initial
        clk = 0;

    always #5 clk = ~clk;

    // Monitor the input and output signals
    initial
        $monitor("Time=%0t | WE=%b | ADDR=%d | DATA_IN=%h | DATA_OUT=%h",
                  $time, we, addr, data_in, data_out);

    // Write task
    task write_ram;

        input [ADDR_WIDTH-1:0] address;
        input [DATA_WIDTH-1:0] data;

        begin

            @(posedge clk);

            we      = 1;
            addr    = address;
            data_in = data;

            @(posedge clk);

            we = 0;

        end

    endtask

    // Read task
    task read_ram;

        input [ADDR_WIDTH-1:0] address;

        begin

            @(posedge clk);

            we   = 0;
            addr = address;

        end

    endtask

    // Apply stimulus
    initial begin

        we      = 0;
        addr    = 0;
        data_in = 0;

        // Write data into RAM
        write_ram(4'd0, 8'h11);
        write_ram(4'd1, 8'h22);
        write_ram(4'd2, 8'h33);
        write_ram(4'd3, 8'h44);
        write_ram(4'd4, 8'h55);

        // Read data from RAM
        read_ram(4'd0);
        read_ram(4'd1);
        read_ram(4'd2);
        read_ram(4'd3);
        read_ram(4'd4);

    end

endmodule
