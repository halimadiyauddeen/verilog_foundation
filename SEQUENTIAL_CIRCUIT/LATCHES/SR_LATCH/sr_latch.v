module sr_latch(
    input s,
    input r,
    output reg q
);

always @(*) begin
    case ({s, r})
        2'b00: q = q;      // Hold
        2'b01: q = 1'b0;   // Reset
        2'b10: q = 1'b1;   // Set
        2'b11: q = 1'bx;   // Invalid
        default: q = 1'bx;
    endcase
end

endmodule
