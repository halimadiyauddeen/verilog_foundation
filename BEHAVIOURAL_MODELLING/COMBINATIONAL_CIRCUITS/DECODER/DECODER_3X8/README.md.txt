 3×8 Decoder – Behavioral Modeling

**Author:** Halima Diyauddeen

---

 Overview

This project implements a **3×8 Decoder** using **Behavioral Modeling** in Verilog. A 3×8 Decoder accepts a 3-bit binary input and activates one of eight output lines corresponding to the input value.

---

 Objective

- Understand Behavioral Modeling in Verilog.
- Implement a 3×8 Decoder using an `always @(*)` block.
- Learn how to use the `case` statement for combinational logic.
- Verify the design using randomly generated test vectors.

---

 Behavioral Implementation

```verilog
always @(*) begin
    y0 = 1'b0;
    y1 = 1'b0;
    y2 = 1'b0;
    y3 = 1'b0;
    y4 = 1'b0;
    y5 = 1'b0;
    y6 = 1'b0;
    y7 = 1'b0;

    case (a)
        3'b000: y0 = 1'b1;
        3'b001: y1 = 1'b1;
        3'b010: y2 = 1'b1;
        3'b011: y3 = 1'b1;
        3'b100: y4 = 1'b1;
        3'b101: y5 = 1'b1;
        3'b110: y6 = 1'b1;
        3'b111: y7 = 1'b1;
    endcase
end
```

The `always @(*)` block continuously monitors the input and uses a `case` statement to activate the appropriate output.

---

 Truth Table

| A | Active Output |
|:--:|:-------------:|
| 000 | Y0 |
| 001 | Y1 |
| 010 | Y2 |
| 011 | Y3 |
| 100 | Y4 |
| 101 | Y5 |
| 110 | Y6 |
| 111 | Y7 |

---

 Project Files

| File | Description |
|------|-------------|
| `decoder_3x8.v` | Design Under Test (DUT) |
| `decoder_3x8_tb.v` | Testbench used to verify the DUT |
| `README.md` | Project documentation |

---

 Verilog Implementation

The design uses:

- `always @(*)`
- Blocking assignments (`=`)
- `case` statement

No `assign` statements or gate primitives are used.

---

 Simulation

The testbench generates random 3-bit input values using Verilog's `$random` system function.

```verilog
repeat (10) begin
    a = $random;
    #10;
end
```

> **Note:** Although the input `a` is 3 bits wide, it is declared as a single vector (`reg [2:0] a`). Therefore, the testbench uses:
>
> ```verilog
> a = $random;
> ```
>
> instead of concatenation. Concatenation (`{}`) is typically used when assigning random values to **multiple independent signals** simultaneously, such as `{a, b}`, `{a, b, cin}`, or `{i0, i1, s}`. Since `a` is already a single multi-bit vector, assigning `$random` directly is the simpler and more appropriate approach.

---

 Sample Output

```text
A=000 | Y0=1 | Y1=0 | Y2=0 | Y3=0 | Y4=0 | Y5=0 | Y6=0 | Y7=0
A=101 | Y0=0 | Y1=0 | Y2=0 | Y3=0 | Y4=0 | Y5=1 | Y6=0 | Y7=0
A=111 | Y0=0 | Y1=0 | Y2=0 | Y3=0 | Y4=0 | Y5=0 | Y6=0 | Y7=1
...
```

Because `$random` is used, the order of the input combinations may vary each time the simulation runs.

---

 Learning Outcomes

After completing this project, you should be able to:

- Use `always @(*)` for combinational circuits.
- Implement a decoder using a `case` statement.
- Apply blocking assignments correctly.
- Generate random test vectors using `$random`.
- Understand when to use direct vector assignment versus concatenation.
- Verify decoder functionality through simulation.

---

 Conclusion

The **3×8 Decoder** demonstrates how Behavioral Modeling and the `case` statement can be used to implement larger combinational decoding circuits. It reinforces good Verilog coding practices while illustrating the appropriate use of `$random` with vector signals for simulation and verification.