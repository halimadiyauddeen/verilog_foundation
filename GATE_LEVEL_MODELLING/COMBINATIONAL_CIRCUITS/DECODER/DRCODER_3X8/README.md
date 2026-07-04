# 3×8 Decoder – Gate-Level Modeling

**Author:** Halima Diyauddeen

---

## Overview

This project implements a **3×8 Decoder** using **Verilog Gate-Level Modeling**. A 3×8 decoder converts a 3-bit binary input into one of eight unique output lines. For every input combination, only one output is asserted (`1`), while all other outputs remain deasserted (`0`).

---

## Objective

- Understand the operation of a 3×8 Decoder.
- Implement a decoder using Verilog gate primitives.
- Verify the design using a dedicated testbench.

---

## Gate Primitives Used

```verilog
not (not_a, a);
not (not_b, b);
not (not_c, c);

and (y0, not_a, not_b, not_c);
and (y1, not_a, not_b, c);
and (y2, not_a, b, not_c);
and (y3, not_a, b, c);
and (y4, a, not_b, not_c);
and (y5, a, not_b, c);
and (y6, a, b, not_c);
and (y7, a, b, c);
```

The `not` gates generate the complemented inputs, while the `and` gates generate the eight decoder outputs.

---

## Truth Table

| A | B | C | Y0 | Y1 | Y2 | Y3 | Y4 | Y5 | Y6 | Y7 |
|:-:|:-:|:-:|:-:|:-:|:-:|:-:|:-:|:-:|:-:|:-:|
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

The decoder is implemented entirely using Verilog's built-in gate primitives:

- `not`
- `and`

No `assign` statements are used, making this a true Gate-Level Modeling implementation.

---

## Simulation

The testbench applies all eight possible input combinations (`000` to `111`) and displays the corresponding decoder outputs using the `$monitor` system task.

---

## Expected Output

```text
A=0 B=0 C=0 | Y0=1 Y1=0 Y2=0 Y3=0 Y4=0 Y5=0 Y6=0 Y7=0
A=0 B=0 C=1 | Y0=0 Y1=1 Y2=0 Y3=0 Y4=0 Y5=0 Y6=0 Y7=0
A=0 B=1 C=0 | Y0=0 Y1=0 Y2=1 Y3=0 Y4=0 Y5=0 Y6=0 Y7=0
A=0 B=1 C=1 | Y0=0 Y1=0 Y2=0 Y3=1 Y4=0 Y5=0 Y6=0 Y7=0
A=1 B=0 C=0 | Y0=0 Y1=0 Y2=0 Y3=0 Y4=1 Y5=0 Y6=0 Y7=0
A=1 B=0 C=1 | Y0=0 Y1=0 Y2=0 Y3=0 Y4=0 Y5=1 Y6=0 Y7=0
A=1 B=1 C=0 | Y0=0 Y1=0 Y2=0 Y3=0 Y4=0 Y5=0 Y6=1 Y7=0
A=1 B=1 C=1 | Y0=0 Y1=0 Y2=0 Y3=0 Y4=0 Y5=0 Y6=0 Y7=1
```

---

## Learning Outcomes

After completing this project, you should be able to:

- Understand the operation of a 3×8 Decoder.
- Implement a decoder using Verilog gate primitives.
- Design combinational circuits using Gate-Level Modeling.
- Verify decoder functionality through simulation.

---

## Conclusion

The 3×8 Decoder is a fundamental combinational circuit that converts a 3-bit binary input into one of eight active output lines. Implementing it with Verilog's built-in gate primitives demonstrates how simple logic gates can be combined to realize larger digital circuits, providing a solid foundation for more advanced decoder and memory address decoding designs.