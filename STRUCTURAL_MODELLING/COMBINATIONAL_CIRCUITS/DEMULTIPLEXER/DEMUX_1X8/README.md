# 1×8 DEMUX – Structural Modeling

**Author:** Halima Diyauddeen

---

## Overview

This project implements a **1×8 Demultiplexer (DEMUX)** using **Structural Modeling** in Verilog. A 1×8 DEMUX routes a single data input (`d`) to one of eight outputs (`y0` through `y7`) based on the values of the three select inputs (`s2`, `s1`, and `s0`). The circuit is built using Verilog gate primitives.

---

## Objective

- Understand Structural Modeling in Verilog.
- Implement a 1×8 DEMUX using gate primitives.
- Learn how a DEMUX routes data to multiple outputs.
- Verify the design using randomly generated test vectors.

---

## Structural Implementation

The design uses the following Verilog gate primitives:

- `not`
- `and`

The three select lines are first inverted, then eight AND gates generate the appropriate output based on the select inputs.

```verilog
not (s2_bar, s2);
not (s1_bar, s1);
not (s0_bar, s0);

and (y0, d, s2_bar, s1_bar, s0_bar);
and (y1, d, s2_bar, s1_bar, s0);
and (y2, d, s2_bar, s1, s0_bar);
and (y3, d, s2_bar, s1, s0);
and (y4, d, s2, s1_bar, s0_bar);
and (y5, d, s2, s1_bar, s0);
and (y6, d, s2, s1, s0_bar);
and (y7, d, s2, s1, s0);
```

---

## Truth Table

| D | S2 | S1 | S0 | Active Output |
|:-:|:--:|:--:|:--:|:-------------:|
| 1 | 0 | 0 | 0 | Y0 |
| 1 | 0 | 0 | 1 | Y1 |
| 1 | 0 | 1 | 0 | Y2 |
| 1 | 0 | 1 | 1 | Y3 |
| 1 | 1 | 0 | 0 | Y4 |
| 1 | 1 | 0 | 1 | Y5 |
| 1 | 1 | 1 | 0 | Y6 |
| 1 | 1 | 1 | 1 | Y7 |

When `D = 0`, all outputs remain `0`.

---

## Project Files

| File | Description |
|------|-------------|
| `demux_1x8.v` | Design Under Test (DUT) |
| `demux_1x8_tb.v` | Testbench used to verify the DUT |
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
    {d, s2, s1, s0} = $random;
    #10;
end
```

> **Note:** Concatenation (`{}`) is used because the DEMUX has four separate input signals (`d`, `s2`, `s1`, and `s0`). This allows all inputs to receive random values simultaneously, making the testbench concise, readable, and scalable.

---

## Sample Output

```text
D=1 | S2=0 | S1=0 | S0=0 | Y0=1 | Y1=0 | Y2=0 | Y3=0 | Y4=0 | Y5=0 | Y6=0 | Y7=0
D=1 | S2=0 | S1=1 | S0=1 | Y0=0 | Y1=0 | Y2=0 | Y3=1 | Y4=0 | Y5=0 | Y6=0 | Y7=0
D=1 | S2=1 | S1=0 | S0=1 | Y0=0 | Y1=0 | Y2=0 | Y3=0 | Y4=0 | Y5=1 | Y6=0 | Y7=0
...
```

Because `$random` is used, the order of the input combinations may vary each time the simulation runs.

---

## Learning Outcomes

After completing this project, you should be able to:

- Understand Structural Modeling in Verilog.
- Build a multi-output DEMUX using gate primitives.
- Connect logic gates using internal wires.
- Generate random test vectors using `$random`.
- Use concatenation (`{}`) to assign multiple input signals simultaneously.
- Verify DEMUX functionality through simulation.

---

## Conclusion

The **1×8 DEMUX** demonstrates how Structural Modeling builds a larger combinational circuit by interconnecting basic logic gate primitives. Using three NOT gates and eight AND gates, the design accurately routes a single data input to one of eight outputs based on the select signals, illustrating how larger digital systems are constructed from simple hardware components.