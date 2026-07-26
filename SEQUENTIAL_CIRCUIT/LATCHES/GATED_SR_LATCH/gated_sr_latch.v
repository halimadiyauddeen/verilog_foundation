module gated_sr_latch(
    input en,
    input s,
    input r,
    output reg q
);

always @(*) begin
    if (en) begin
        case ({s, r})
            2'b00: q = q;      // Hold
            2'b01: q = 1'b0;   // Reset
            2'b10: q = 1'b1;   // Set
            2'b11: q = 1'bx;   // Invalid
            default: q = 1'bx;
        endcase
    end
    else
        q = q;                 // Hold when enable is LOW
end

endmodule
