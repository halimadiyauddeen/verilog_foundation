// Halima Diyauddeen — 2026 — 2-Bit Comparator (Testbench)

/*
 * Module Name : comparator_2bit_tb
 * Description : Testbench for the Design Under Test (DUT)
 */

module comparator_2bit_func_tb;

    // Testbench signals
    reg [1:0] a;
    reg [1:0] b;

    wire gt;
    wire eq;
    wire lt;

    // Instantiate the Design Under Test (DUT)
    comparator_2bit_func dut (
        .a(a),
        .b(b),
        .gt(gt),
        .eq(eq),
        .lt(lt)
    );

    // Monitor the input and output signals
    initial
        $monitor("A=%b | B=%b | GT=%b | EQ=%b | LT=%b",
                  a, b, gt, eq, lt);

    // Apply random test vectors
    initial begin
        repeat (10) begin
            {a, b} = $random;
            #10;
        end
    end

endmodule
