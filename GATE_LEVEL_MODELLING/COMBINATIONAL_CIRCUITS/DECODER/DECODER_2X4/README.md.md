# 2×4 Decoder – Gate-Level Modeling

**Author:** Halima Diyauddeen

---

## Overview

This project implements a **2×4 Decoder** using **Verilog Gate-Level Modeling**. A decoder converts a 2-bit binary input into one of four unique output lines. For each input combination, only one output is asserted (`1`) while the remaining outputs stay low (`0`).

---

## Objective

- Understand the operation of a 2×4 Decoder.
- Implement a decoder using Verilog gate primitives.
- Verify the design using a dedicated testbench.

---

## Gate Primitives Used

```verilog
not (not_a, a);
not (not_b, b);

and (y0, not_a, not_b);
and (y1, not_a, b);
and (y2, a, not_b);
and (y3, a, b);
```

The `not` gates generate the complemented inputs, while the `and` gates produce the four decoder outputs.

---

## Truth Table

| A | B | Y0 | Y1 | Y2 | Y3 |
|:-:|:-:|:-:|:-:|:-:|:-:|
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

The decoder is implemented using Verilog's built-in gate primitives:

- `not`
- `and`

No `assign` statements are used, making this a true Gate-Level Modeling implementation.

---

## Simulation

The testbench applies all possible 2-bit input combinations (`00`, `01`, `10`, and `11`) and displays the corresponding output values using the `$monitor` system task.

---

## Expected Output

```text
A=0 | B=0 | Y0=1 | Y1=0 | Y2=0 | Y3=0
A=0 | B=1 | Y0=0 | Y1=1 | Y2=0 | Y3=0
A=1 | B=0 | Y0=0 | Y1=0 | Y2=1 | Y3=0
A=1 | B=1 | Y0=0 | Y1=0 | Y2=0 | Y3=1
```

---

## Learning Outcomes

After completing this project, you should be able to:

- Understand the operation of a 2×4 Decoder.
- Implement a decoder using Verilog gate primitives.
- Design combinational circuits using Gate-Level Modeling.
- Verify decoder functionality through simulation.

---

## Conclusion

The 2×4 Decoder is a fundamental combinational circuit that activates one output line based on a 2-bit input. Implementing it with Verilog gate primitives demonstrates how basic logic gates can be combined to create larger digital systems, providing a strong foundation for more advanced decoder designs.