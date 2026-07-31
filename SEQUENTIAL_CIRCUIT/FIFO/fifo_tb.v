// Halima Diyauddeen — 2026 — FIFO (Testbench)

/*
 * Module Name : fifo_tb
 * Description : Testbench for the Design Under Test (DUT)
 */

module fifo_tb;

    parameter WIDTH = 8;
    parameter DEPTH = 8;

    // Testbench signals
    reg clk;
    reg rst;

    reg wr_en;
    reg rd_en;

    reg [WIDTH-1:0] data_in;

    wire [WIDTH-1:0] data_out;

    wire full;
    wire empty;

    // Instantiate the Design Under Test (DUT)
    fifo dut (

        .clk(clk),
        .rst(rst),
        .wr_en(wr_en),
        .rd_en(rd_en),
        .data_in(data_in),
        .data_out(data_out),
        .full(full),
        .empty(empty)

    );

    // Clock generation
    initial
        clk = 0;

    always #5 clk = ~clk;

    // Monitor signals
    initial
        $monitor("Time=%0t | WR=%b | RD=%b | DATA_IN=%h | DATA_OUT=%h | FULL=%b | EMPTY=%b",
                  $time, wr_en, rd_en, data_in, data_out, full, empty);

    // Write Task
    task write_fifo;

        input [WIDTH-1:0] data;

        begin

            @(posedge clk);

            wr_en   = 1;
            rd_en   = 0;
            data_in = data;

            @(posedge clk);

            wr_en = 0;

        end

    endtask

    // Read Task
    task read_fifo;

        begin

            @(posedge clk);

            wr_en = 0;
            rd_en = 1;

            @(posedge clk);

            rd_en = 0;

        end

    endtask

    // Apply stimulus
    initial begin

        rst     = 1;
        wr_en   = 0;
        rd_en   = 0;
        data_in = 0;

        @(posedge clk);

        rst = 0;

        // Write data into FIFO
        write_fifo(8'h11);
        write_fifo(8'h22);
        write_fifo(8'h33);
        write_fifo(8'h44);
        write_fifo(8'h55);

        // Read data from FIFO
        read_fifo();
        read_fifo();
        read_fifo();

        // Write more data
        write_fifo(8'h66);
        write_fifo(8'h77);

        // Read remaining data
        read_fifo();
        read_fifo();
        read_fifo();
        read_fifo();

    end

endmodule
