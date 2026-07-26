// Halima Diyauddeen — 2026 — Half Adder (Testbench)

/*
 * Module Name : half_adder_tb
 * Description : Testbench for the Design Under Test (DUT)
 */

module half_adder_tb;

reg a;
reg b;

wire sum;
wire carry;

half_adder uut (
    .a(a),
    .b(b),
    .sum(sum),
    .carry(carry)
);

initial begin

    $monitor("A=%b | B=%b | Sum=%b | Carry=%b",
              a, b, sum, carry);

    repeat (10) begin
        {a, b} = $random;
        #10;
    end

end

endmodule
