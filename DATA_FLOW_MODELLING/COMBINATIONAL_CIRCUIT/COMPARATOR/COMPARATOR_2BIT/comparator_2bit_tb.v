// Halima Diyauddeen — 2026 — 2-Bit Comparator Testbench

/*
 * Module Name : comparator_2bit_tb
 * Description : Testbench for the 2-Bit Comparator DUT
 */

module comparator_2bit_tb;

    // Testbench signals
    reg a1, a0;
    reg b1, b0;

    wire a_gt_b;
    wire a_eq_b;
    wire a_lt_b;

    // Instantiate the Design Under Test (DUT)
    comparator_2bit dut (
        .a1(a1),
        .a0(a0),
        .b1(b1),
        .b0(b0),
        .a_gt_b(a_gt_b),
        .a_eq_b(a_eq_b),
        .a_lt_b(a_lt_b)
    );

    // Monitor the input and output signals
    initial
        $monitor("A=%b%b | B=%b%b | A>B=%b | A=B=%b | A<B=%b",
                  a1, a0, b1, b0,
                  a_gt_b, a_eq_b, a_lt_b);

    // Apply representative test vectors
    initial begin
        a1=0; a0=0; b1=0; b0=0; #10; // 0 = 0
        a1=0; a0=1; b1=0; b0=0; #10; // 1 > 0
        a1=1; a0=0; b1=0; b0=1; #10; // 2 > 1
        a1=1; a0=1; b1=1; b0=0; #10; // 3 > 2
        a1=0; a0=0; b1=1; b0=0; #10; // 0 < 2
        a1=0; a0=1; b1=1; b0=1; #10; // 1 < 3
        a1=1; a0=0; b1=1; b0=0; #10; // 2 = 2
        a1=1; a0=1; b1=1; b0=1; #10; // 3 = 3
    end

endmodule
