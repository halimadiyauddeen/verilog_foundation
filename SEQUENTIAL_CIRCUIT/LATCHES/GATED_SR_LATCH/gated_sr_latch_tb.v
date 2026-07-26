module gated_sr_latch_tb;

reg en;
reg s;
reg r;
wire q;

// DUT Instantiation
gated_sr_latch dut(
    .en(en),
    .s(s),
    .r(r),
    .q(q)
);

// Monitor
initial begin
    $monitor(
        "Time=%0t en=%b s=%b r=%b q=%b",
        $time, en, s, r, q
    );
end

// Stimulus
initial begin
    en = 0;
    s  = 0;
    r  = 0;

    #10;

    repeat (10) begin
        en = $random;
        {s, r} = $random;
        #10;
    end

    $finish;
end

endmodule
