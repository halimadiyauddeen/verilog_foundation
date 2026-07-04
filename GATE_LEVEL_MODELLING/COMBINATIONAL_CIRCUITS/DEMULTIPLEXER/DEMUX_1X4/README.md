# 1×4 DEMUX – Gate-Level Modeling

**Author:** Halima Diyauddeen

---

## Overview

This project implements a **1×4 Demultiplexer (DEMUX)** using **Verilog Gate-Level Modeling**. A 1×4 DEMUX routes a single data input to one of four output lines based on the values of two select inputs.

---

## Objective

- Understand the operation of a 1×4 DEMUX.
- Implement a DEMUX using Verilog gate primitives.
- Verify the design using a dedicated testbench.

---

## Gate Primitives Used

```verilog
not (not_s1, s1);
not (not_s0, s0);

and (y0, d, not_s1, not_s0);
and (y1, d, not_s1, s0);
and (y2, d, s1, not_s0);
and (y3, d, s1, s0);
```

The `not` gates generate the complemented select signals, while the `and` gates route the data input to the selected output.

---

## Truth Table

| D | S1 | S0 | Y0 | Y1 | Y2 | Y3 |
|:-:|:--:|:--:|:--:|:--:|:--:|:--:|
| 0 | 0 | 0 | 0 | 0 | 0 | 0 |
| 0 | 0 | 1 | 0 | 0 | 0 | 0 |
| 0 | 1 | 0 | 0 | 0 | 0 | 0 |
| 0 | 1 | 1 | 0 | 0 | 0 | 0 |
| 1 | 0 | 0 | 1 | 0 | 0 | 0 |
| 1 | 0 | 1 | 0 | 1 | 0 | 0 |
| 1 | 1 | 0 | 0 | 0 | 1 | 0 |
| 1 | 1 | 1 | 0 | 0 | 0 | 1 |

---

## Project Files

| File | Description |
|------|-------------|
| `demux_1x4.v` | Design Under Test (DUT) |
| `demux_1x4_tb.v` | Testbench used to verify the DUT |
| `README.md` | Project documentation |

---

## Verilog Implementation

The DEMUX is implemented using Verilog's built-in gate primitives:

- `not`
- `and`

No `assign` statements are used, making this a true Gate-Level Modeling implementation.

---

## Simulation

The testbench applies different combinations of the data input and select inputs, then displays the corresponding outputs using the `$monitor` system task.

---

## Expected Output

```text
D=0 | S1=0 | S0=0 | Y0=0 | Y1=0 | Y2=0 | Y3=0
D=1 | S1=0 | S0=0 | Y0=1 | Y1=0 | Y2=0 | Y3=0
D=1 | S1=0 | S0=1 | Y0=0 | Y1=1 | Y2=0 | Y3=0
D=1 | S1=1 | S0=0 | Y0=0 | Y1=0 | Y2=1 | Y3=0
D=1 | S1=1 | S0=1 | Y0=0 | Y1=0 | Y2=0 | Y3=1
```

---

## Learning Outcomes

After completing this project, you should be able to:

- Understand the operation of a 1×4 DEMUX.
- Implement a DEMUX using Verilog gate primitives.
- Design combinational circuits using Gate-Level Modeling.
- Verify DEMUX functionality through simulation.

---

## Conclusion

The **1×4 DEMUX** is a combinational circuit that routes a single data input to one of four outputs based on two select inputs. Implementing it with Verilog gate primitives demonstrates how basic logic gates can be combined to perform controlled data routing, forming the basis for more advanced digital communication and control circuits.