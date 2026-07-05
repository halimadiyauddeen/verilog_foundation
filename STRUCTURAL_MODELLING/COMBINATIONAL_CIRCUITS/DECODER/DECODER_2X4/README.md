# 2×4 Decoder – Structural Modeling

**Author:** Halima Diyauddeen

---

## Overview

This project implements a **2×4 Decoder** using **Structural Modeling** in Verilog. A 2×4 decoder converts a 2-bit binary input (`a`, `b`) into one of four active outputs (`y0`–`y3`). The circuit is built using Verilog gate primitives.

---

## Objective

- Understand Structural Modeling in Verilog.
- Implement a 2×4 Decoder using gate primitives.
- Learn how binary inputs activate a single output line.
- Verify the design using randomly generated test vectors.

---

## Structural Implementation

The design uses the following Verilog gate primitives:

- `not`
- `and`

The inputs are first inverted, then four AND gates generate the outputs.

```verilog
not (a_bar, a);
not (b_bar, b);

and (y0, a_bar, b_bar);
and (y1, a_bar, b);
and (y2, a, b_bar);
and (y3, a, b);
```

---

## Truth Table

| A | B | Y0 | Y1 | Y2 | Y3 |
|:-:|:-:|:--:|:--:|:--:|:--:|
| 0 | 0 | 1 | 0 | 0 | 0 |
| 0 | 1 | 0 | 1 | 0 | 0 |
| 1 | 0 | 0 | 0 | 1 | 0 |
| 1 | 1 | 0 | 0 | 0 | 1 |

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

- Verilog `not` gate primitive
- Verilog `and` gate primitive
- Internal wires
- Structural Modeling

No `always` blocks, `assign` statements, or behavioral operators are used.

---

## Simulation

The testbench generates random input values using Verilog's `$random` system function and applies them using concatenation.

```verilog
repeat (10) begin
    {a, b} = $random;
    #10;
end
```

> **Note:** Concatenation (`{}`) is used because the decoder has two separate input signals (`a` and `b`). This allows both inputs to receive random values simultaneously, making the testbench concise, readable, and scalable.

---

## Sample Output

```text
A=0 | B=0 | Y0=1 | Y1=0 | Y2=0 | Y3=0
A=0 | B=1 | Y0=0 | Y1=1 | Y2=0 | Y3=0
A=1 | B=0 | Y0=0 | Y1=0 | Y2=1 | Y3=0
A=1 | B=1 | Y0=0 | Y1=0 | Y2=0 | Y3=1
...
```

Because `$random` is used, the order of the input combinations may vary each time the simulation runs.

---

## Learning Outcomes

After completing this project, you should be able to:

- Understand Structural Modeling in Verilog.
- Build a decoder using gate primitives.
- Connect logic gates using internal wires.
- Generate random test vectors using `$random`.
- Use concatenation (`{}`) to assign multiple input signals simultaneously.
- Verify decoder functionality through simulation.

---

## Conclusion

The **2×4 Decoder** demonstrates how Structural Modeling builds a combinational circuit using basic logic gate primitives. By combining two NOT gates and four AND gates, the design activates exactly one output for each input combination, illustrating the fundamental operation of a binary decoder.