# 2x4 Decoder – Dataflow Modeling

**Author:** Halima Diyauddeen

---

## Overview

This project implements a **2x4 Decoder** using **Verilog Dataflow Modeling**. A 2x4 decoder accepts two binary input bits and activates exactly one of four output lines based on the input combination.

---

## Objective

- Understand the operation of a 2x4 Decoder.
- Implement a 2x4 Decoder using Verilog Dataflow Modeling.
- Verify the design using a dedicated testbench.

---

## Boolean Expressions

```text
Y0 = ~A & ~B
Y1 = ~A &  B
Y2 =  A & ~B
Y3 =  A &  B
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

The decoder is implemented using continuous assignment statements.

```verilog
assign y0 = ~a & ~b;
assign y1 = ~a &  b;
assign y2 =  a & ~b;
assign y3 =  a &  b;
```

---

## Simulation

The testbench applies all possible input combinations:

- 00
- 01
- 10
- 11

The outputs are observed using the `$monitor` system task.

---

## Expected Output

```text
A = 0 | B = 0 | Y0 = 1 | Y1 = 0 | Y2 = 0 | Y3 = 0
A = 0 | B = 1 | Y0 = 0 | Y1 = 1 | Y2 = 0 | Y3 = 0
A = 1 | B = 0 | Y0 = 0 | Y1 = 0 | Y2 = 1 | Y3 = 0
A = 1 | B = 1 | Y0 = 0 | Y1 = 0 | Y2 = 0 | Y3 = 1
```

---

## Learning Outcomes

After completing this project, you should be able to:

- Understand the operation of a 2x4 Decoder.
- Implement a decoder using Dataflow Modeling.
- Use NOT (`~`) and AND (`&`) operators to generate decoder outputs.
- Verify the functionality of a combinational circuit through simulation.

---

## Conclusion

The 2x4 Decoder is a fundamental combinational circuit that converts a 2-bit binary input into one of four unique outputs. It serves as the foundation for designing larger decoders, memory address decoding circuits, and digital control systems.