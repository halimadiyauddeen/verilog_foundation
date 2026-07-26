module sr_latch_tb;

reg s;
reg r;
wire q;

// DUT Instantiation
sr_latch dut(
    .s(s),
    .r(r),
    .q(q)
);

// Monitor
initial begin
    $monitor(
        "Time=%0t s=%b r=%b q=%b",
        $time, s, r, q
    );
end

// Stimulus
initial begin
    repeat (10) begin
        {s, r} = $random;
        #10;
    end

    $finish;
end

endmodule
