# 2×4 Decoder – Behavioral Modeling

**Author:** Halima Diyauddeen

---

## Overview

This project implements a **2×4 Decoder** using **Behavioral Modeling** in Verilog. A 2×4 Decoder accepts a 2-bit binary input and activates one of four output lines corresponding to the input value.

---

## Objective

- Understand Behavioral Modeling in Verilog.
- Implement a 2×4 Decoder using an `always @(*)` block.
- Learn how to use the `case` statement for combinational logic.
- Verify the design using randomly generated test vectors.

---

## Behavioral Implementation

```verilog
always @(*) begin
    y0 = 1'b0;
    y1 = 1'b0;
    y2 = 1'b0;
    y3 = 1'b0;

    case (a)
        2'b00: y0 = 1'b1;
        2'b01: y1 = 1'b1;
        2'b10: y2 = 1'b1;
        2'b11: y3 = 1'b1;
    endcase
end
```

The `always @(*)` block continuously monitors the input and uses a `case` statement to activate the appropriate output.

---

## Truth Table

| A | Y0 | Y1 | Y2 | Y3 |
|:--:|:--:|:--:|:--:|:--:|
| 00 | 1 | 0 | 0 | 0 |
| 01 | 0 | 1 | 0 | 0 |
| 10 | 0 | 0 | 1 | 0 |
| 11 | 0 | 0 | 0 | 1 |

---

## Project Files

| File | Description |
|------|-------------|
| `decoder_2x4.v` | Design Under Test (DUT) |
| `decoder_2x4_tb.v` | Testbench used to verify the DUT |
| `README.md` | Project documentation |

---

## Verilog Implementation

The design uses:

- `always @(*)`
- Blocking assignments (`=`)
- `case` statement

No `assign` statements or gate primitives are used.

---

## Simulation

The testbench generates random 2-bit input values using Verilog's `$random` system function.

```verilog
repeat (10) begin
    a = $random;
    #10;
end
```

> **Note:** Although the input `a` is 2 bits wide, it is declared as a single vector (`reg [1:0] a`). Therefore, the testbench uses:
>
> ```verilog
> a = $random;
> ```
>
> instead of concatenation. Concatenation (`{}`) is typically used when assigning random values to **multiple independent signals** simultaneously, such as `{a, b}`, `{a, b, cin}`, or `{i0, i1, s}`. Since `a` is already a single multi-bit vector, assigning `$random` directly is the simpler and more appropriate approach.

---

## Sample Output

```text
A=00 | Y0=1 | Y1=0 | Y2=0 | Y3=0
A=01 | Y0=0 | Y1=1 | Y2=0 | Y3=0
A=10 | Y0=0 | Y1=0 | Y2=1 | Y3=0
A=11 | Y0=0 | Y1=0 | Y2=0 | Y3=1
...
```

Because `$random` is used, the order of the input combinations may vary each time the simulation runs.

---

## Learning Outcomes

After completing this project, you should be able to:

- Use `always @(*)` for combinational circuits.
- Implement a decoder using a `case` statement.
- Apply blocking assignments correctly.
- Generate random test vectors using `$random`.
- Understand when to use direct vector assignment versus concatenation.
- Verify decoder functionality through simulation.

---

## Conclusion

The **2×4 Decoder** demonstrates how a `case` statement can be used in Behavioral Modeling to implement combinational logic efficiently. This approach improves readability and scalability, making it well suited for larger decoding circuits. It also illustrates the appropriate use of `$random` with vector signals, reinforcing good Verilog coding practices.