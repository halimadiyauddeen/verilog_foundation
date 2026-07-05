# 3×8 Decoder – Structural Modeling

**Author:** Halima Diyauddeen

---

## Overview

This project implements a **3×8 Decoder** using **Structural Modeling** in Verilog. A 3×8 decoder converts a 3-bit binary input (`a`, `b`, `c`) into one of eight active outputs (`y0`–`y7`). The circuit is constructed using Verilog gate primitives.

---

## Objective

- Understand Structural Modeling in Verilog.
- Implement a 3×8 decoder using gate primitives.
- Learn how binary inputs activate a single output line.
- Verify the design using randomly generated test vectors.

---

## Structural Implementation

The design uses the following Verilog gate primitives:

- `not`
- `and`

The three inputs are first inverted, then eight AND gates generate the outputs.

```verilog
not (a_bar, a);
not (b_bar, b);
not (c_bar, c);

and (y0, a_bar, b_bar, c_bar);
and (y1, a_bar, b_bar, c);
and (y2, a_bar, b, c_bar);
and (y3, a_bar, b, c);
and (y4, a, b_bar, c_bar);
and (y5, a, b_bar, c);
and (y6, a, b, c_bar);
and (y7, a, b, c);
```

---

## Truth Table

| A | B | C | Y0 | Y1 | Y2 | Y3 | Y4 | Y5 | Y6 | Y7 |
|:-:|:-:|:-:|:--:|:--:|:--:|:--:|:--:|:--:|:--:|:--:|
|0|0|0|1|0|0|0|0|0|0|0|
|0|0|1|0|1|0|0|0|0|0|0|
|0|1|0|0|0|1|0|0|0|0|0|
|0|1|1|0|0|0|1|0|0|0|0|
|1|0|0|0|0|0|0|1|0|0|0|
|1|0|1|0|0|0|0|0|1|0|0|
|1|1|0|0|0|0|0|0|0|1|0|
|1|1|1|0|0|0|0|0|0|0|1|

---

## Project Files

| File | Description |
|------|-------------|
| `decoder_3x8.v` | Design Under Test (DUT) |
| `decoder_3x8_tb.v` | Testbench used to verify the DUT |
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
    {a, b, c} = $random;
    #10;
end
```

> **Note:** Concatenation (`{}`) is used because the decoder has three separate input signals (`a`, `b`, and `c`). This allows all inputs to receive random values simultaneously, making the testbench concise, readable, and scalable.

---

## Sample Output

```text
A=0 | B=0 | C=0 | Y0=1 | Y1=0 | Y2=0 | Y3=0 | Y4=0 | Y5=0 | Y6=0 | Y7=0
A=0 | B=0 | C=1 | Y0=0 | Y1=1 | Y2=0 | Y3=0 | Y4=0 | Y5=0 | Y6=0 | Y7=0
A=1 | B=1 | C=0 | Y0=0 | Y1=0 | Y2=0 | Y3=0 | Y4=0 | Y5=0 | Y6=1 | Y7=0
A=1 | B=1 | C=1 | Y0=0 | Y1=0 | Y2=0 | Y3=0 | Y4=0 | Y5=0 | Y6=0 | Y7=1
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

The **3×8 Decoder** demonstrates how Structural Modeling builds a larger combinational circuit using basic logic gate primitives. By combining three NOT gates and eight AND gates, the design activates exactly one output for each 3-bit input combination, illustrating the fundamental operation of binary decoding in digital systems.