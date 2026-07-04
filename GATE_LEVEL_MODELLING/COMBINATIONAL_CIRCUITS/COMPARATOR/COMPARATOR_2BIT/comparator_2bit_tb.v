// Halima Diyauddeen — 2026 — 2-Bit Comparator Testbench

/*
 * Module Name : comparator_2bit_tb
 * Description : Testbench for the 2-Bit Comparator DUT
 */

module comparator_2bit_tb;

    // Testbench signals
    reg a1, a0;
    reg b1, b0;

    wire greater;
    wire equal;
    wire less;

    // Instantiate the Design Under Test (DUT)
    comparator_2bit dut (
        .a1(a1),
        .a0(a0),
        .b1(b1),
        .b0(b0),
        .greater(greater),
        .equal(equal),
        .less(less)
    );

    // Monitor the input and output signals
    initial
        $monitor("A=%b%b | B=%b%b | Greater=%b | Equal=%b | Less=%b",
                  a1, a0, b1, b0,
                  greater, equal, less);

    // Apply test vectors
    initial begin
        {a1,a0,b1,b0}=4'b0000; #10;
        {a1,a0,b1,b0}=4'b0001; #10;
        {a1,a0,b1,b0}=4'b0010; #10;
        {a1,a0,b1,b0}=4'b0011; #10;
        {a1,a0,b1,b0}=4'b0101; #10;
        {a1,a0,b1,b0}=4'b1010; #10;
        {a1,a0,b1,b0}=4'b1110; #10;
        {a1,a0,b1,b0}=4'b1111; #10;
    end

endmodule
