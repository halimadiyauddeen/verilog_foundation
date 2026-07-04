// Halima Diyauddeen — 2026 — 2-Bit Comparator Testbench

/*
 * Module Name : comparator_2bit_tb
 * Description : Testbench for the 2-Bit Comparator DUT
 */

module comparator_2bit_tb;

    // Testbench signals
    reg [1:0] a;
    reg [1:0] b;

    wire greater;
    wire equal;
    wire less;

    // Instantiate the Design Under Test (DUT)
    comparator_2bit dut (
        .a(a),
        .b(b),
        .greater(greater),
        .equal(equal),
        .less(less)
    );

    // Monitor the input and output signals
    initial
        $monitor("A=%b | B=%b | Greater=%b | Equal=%b | Less=%b",
                  a, b, greater, equal, less);

    // Apply random test vectors
    initial begin
        repeat (10) begin
            {a, b} = $random;
            #10;
        end
    end

endmodule
