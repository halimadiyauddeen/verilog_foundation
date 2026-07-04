# 1x4 DEMUX – Dataflow Modeling

**Author:** Halima Diyauddeen

---

## Overview

This project implements a **1x4 Demultiplexer (DEMUX)** using **Verilog Dataflow Modeling**. A 1x4 DEMUX routes a single data input to one of four output lines based on the values of the two select inputs.

---

## Objective

- Understand the operation of a 1x4 DEMUX.
- Implement a 1x4 DEMUX using Verilog Dataflow Modeling.
- Verify the design using a dedicated testbench.

---

## Boolean Expressions

```text
Y0 = D & ~S1 & ~S0
Y1 = D & ~S1 &  S0
Y2 = D &  S1 & ~S0
Y3 = D &  S1 &  S0
```

---

## Truth Table

| D | S1 | S0 | Y0 | Y1 | Y2 | Y3 |
|:-:|:--:|:--:|:--:|:--:|:--:|:--:|
| 0 | 0 | 0 | 0 | 0 | 0 | 0 |
| 1 | 0 | 0 | 1 | 0 | 0 | 0 |
| 0 | 0 | 1 | 0 | 0 | 0 | 0 |
| 1 | 0 | 1 | 0 | 1 | 0 | 0 |
| 0 | 1 | 0 | 0 | 0 | 0 | 0 |
| 1 | 1 | 0 | 0 | 0 | 1 | 0 |
| 0 | 1 | 1 | 0 | 0 | 0 | 0 |
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

The DEMUX is implemented using continuous assignment statements.

```verilog
assign y0 = d & ~s1 & ~s0;
assign y1 = d & ~s1 &  s0;
assign y2 = d &  s1 & ~s0;
assign y3 = d &  s1 &  s0;
```

---

## Simulation

The testbench applies all possible combinations of the data input (`D`) and the select inputs (`S1` and `S0`).

The outputs are observed using the `$monitor` system task.

---

## Expected Output

```text
D=0 | S1=0 S0=0 | Y0=0 Y1=0 Y2=0 Y3=0
D=1 | S1=0 S0=0 | Y0=1 Y1=0 Y2=0 Y3=0
D=0 | S1=0 S0=1 | Y0=0 Y1=0 Y2=0 Y3=0
D=1 | S1=0 S0=1 | Y0=0 Y1=1 Y2=0 Y3=0
D=0 | S1=1 S0=0 | Y0=0 Y1=0 Y2=0 Y3=0
D=1 | S1=1 S0=0 | Y0=0 Y1=0 Y2=1 Y3=0
D=0 | S1=1 S0=1 | Y0=0 Y1=0 Y2=0 Y3=0
D=1 | S1=1 S0=1 | Y0=0 Y1=0 Y2=0 Y3=1
```

---

## Learning Outcomes

After completing this project, you should be able to:

- Understand the operation of a 1x4 DEMUX.
- Implement a DEMUX using Dataflow Modeling.
- Use NOT (`~`) and AND (`&`) operators to route data to the correct output.
- Verify the functionality of a combinational circuit through simulation.

---

## Conclusion

The 1x4 DEMUX is a combinational circuit that routes a single data input to one of four outputs using two select lines. It is widely used in data distribution, communication systems, and digital control circuits, and serves as the foundation for larger demultiplexer designs.