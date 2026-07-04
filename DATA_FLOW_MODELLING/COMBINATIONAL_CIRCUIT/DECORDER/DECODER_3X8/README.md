# 3x8 Decoder – Dataflow Modeling

**Author:** Halima Diyauddeen

---

## Overview

This project implements a **3x8 Decoder** using **Verilog Dataflow Modeling**. A 3x8 decoder accepts a 3-bit binary input and activates exactly one of eight output lines corresponding to the input combination.

---

## Objective

- Understand the operation of a 3x8 Decoder.
- Implement a 3x8 Decoder using Verilog Dataflow Modeling.
- Verify the design using a dedicated testbench.

---

## Boolean Expressions

```text
Y0 = ~A & ~B & ~C
Y1 = ~A & ~B &  C
Y2 = ~A &  B & ~C
Y3 = ~A &  B &  C
Y4 =  A & ~B & ~C
Y5 =  A & ~B &  C
Y6 =  A &  B & ~C
Y7 =  A &  B &  C
```

---

## Truth Table

| A | B | C | Y0 | Y1 | Y2 | Y3 | Y4 | Y5 | Y6 | Y7 |
|:-:|:-:|:-:|:--:|:--:|:--:|:--:|:--:|:--:|:--:|:--:|
| 0 | 0 | 0 | 1 | 0 | 0 | 0 | 0 | 0 | 0 | 0 |
| 0 | 0 | 1 | 0 | 1 | 0 | 0 | 0 | 0 | 0 | 0 |
| 0 | 1 | 0 | 0 | 0 | 1 | 0 | 0 | 0 | 0 | 0 |
| 0 | 1 | 1 | 0 | 0 | 0 | 1 | 0 | 0 | 0 | 0 |
| 1 | 0 | 0 | 0 | 0 | 0 | 0 | 1 | 0 | 0 | 0 |
| 1 | 0 | 1 | 0 | 0 | 0 | 0 | 0 | 1 | 0 | 0 |
| 1 | 1 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 1 | 0 |
| 1 | 1 | 1 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 1 |

---

## Project Files

| File | Description |
|------|-------------|
| `decoder_3x8.v` | Design Under Test (DUT) |
| `decoder_3x8_tb.v` | Testbench used to verify the DUT |
| `README.md` | Project documentation |

---

## Verilog Implementation

The decoder is implemented using continuous assignment statements.

```verilog
assign y0 = ~a & ~b & ~c;
assign y1 = ~a & ~b &  c;
assign y2 = ~a &  b & ~c;
assign y3 = ~a &  b &  c;
assign y4 =  a & ~b & ~c;
assign y5 =  a & ~b &  c;
assign y6 =  a &  b & ~c;
assign y7 =  a &  b &  c;
```

---

## Simulation

The testbench applies all eight possible input combinations from `000` to `111`.

The outputs are observed using the `$monitor` system task.

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

- Understand the operation of a 3x8 Decoder.
- Implement a decoder using Dataflow Modeling.
- Use the NOT (`~`) and AND (`&`) operators to generate decoder outputs.
- Verify the functionality of a combinational circuit through simulation.

---

## Conclusion

The 3x8 Decoder is a commonly used combinational circuit that converts a 3-bit binary input into one of eight active outputs. It is widely used in memory address decoding, instruction decoding, chip-select logic, and digital control systems.