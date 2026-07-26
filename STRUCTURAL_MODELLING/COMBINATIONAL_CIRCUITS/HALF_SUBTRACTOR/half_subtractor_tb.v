// Halima Diyauddeen — 2026 — Half Subtractor (Testbench)

/*
 * Module Name : half_subtractor_tb
 * Description : Testbench for the Design Under Test (DUT)
 */

module half_subtractor_tb;

reg a;
reg b;

wire diff;
wire borrow;

half_subtractor uut (
    .a(a),
    .b(b),
    .diff(diff),
    .borrow(borrow)
);

initial begin

    $monitor("A=%b | B=%b | Diff=%b | Borrow=%b",
              a, b, diff, borrow);

    repeat (10) begin
        {a, b} = $random;
        #10;
    end

end

endmodule
