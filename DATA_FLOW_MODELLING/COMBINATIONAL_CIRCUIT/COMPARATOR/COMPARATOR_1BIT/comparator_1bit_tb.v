// Halima Diyauddeen — 2026 — 1-Bit Comparator Testbench

/*
 * Module Name : comparator_1bit_tb
 * Description : Testbench for the 1-Bit Comparator DUT
 */

module comparator_1bit_tb;

    // Testbench signals
    reg a;
    reg b;

    wire a_gt_b;
    wire a_eq_b;
    wire a_lt_b;

    // Instantiate the Design Under Test (DUT)
    comparator_1bit dut (
        .a(a),
        .b(b),
        .a_gt_b(a_gt_b),
        .a_eq_b(a_eq_b),
        .a_lt_b(a_lt_b)
    );

    // Monitor the input and output signals
    initial
        $monitor("A = %b | B = %b | A>B = %b | A=B = %b | A<B = %b",
                  a, b, a_gt_b, a_eq_b, a_lt_b);

    // Apply test vectors
    initial begin
        a = 0; b = 0; #10;
        a = 0; b = 1; #10;
        a = 1; b = 0; #10;
        a = 1; b = 1; #10;
    end

endmodule
