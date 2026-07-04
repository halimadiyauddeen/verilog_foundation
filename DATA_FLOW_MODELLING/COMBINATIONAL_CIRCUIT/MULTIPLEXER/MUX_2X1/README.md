# 2x1 Multiplexer (MUX) – Dataflow Modeling

**Author:** Halima Diyauddeen

---

## Overview

This project implements a **2x1 Multiplexer (MUX)** using **Verilog Dataflow Modeling**. A multiplexer selects one of several input signals and forwards the selected input to a single output based on the value of the select line.

---

## Objective

- Understand the operation of a 2x1 Multiplexer.
- Implement a 2x1 MUX using Verilog Dataflow Modeling.
- Verify the design using a dedicated testbench.

---

## Boolean Expression

```text
Y = (~S & I0) | (S & I1)
```

---

## Truth Table

| S | I1 | I0 | Y |
|:-:|:--:|:--:|:-:|
| 0 | X | 0 | 0 |
| 0 | X | 1 | 1 |
| 1 | 0 | X | 0 |
| 1 | 1 | X | 1 |

> **Note:** `X` means "don't care" because that input is not selected.

---

## Project Files

| File | Description |
|------|-------------|
| `mux_2x1.v` | Design Under Test (DUT) |
| `mux_2x1_tb.v` | Testbench used to verify the DUT |
| `README.md` | Project documentation |

---

## Verilog Implementation

The MUX is implemented using a continuous assignment statement.

```verilog
assign y = (~s & i0) | (s & i1);
```

---

## Simulation

The testbench applies all possible combinations of the inputs (`I0`, `I1`) and the select line (`S`).

The output is observed using the `$monitor` system task.

---

## Expected Output

```text
I0 = 0 | I1 = 0 | S = 0 | Y = 0
I0 = 0 | I1 = 1 | S = 0 | Y = 0
I0 = 1 | I1 = 0 | S = 0 | Y = 1
I0 = 1 | I1 = 1 | S = 0 | Y = 1
I0 = 0 | I1 = 0 | S = 1 | Y = 0
I0 = 0 | I1 = 1 | S = 1 | Y = 1
I0 = 1 | I1 = 0 | S = 1 | Y = 0
I0 = 1 | I1 = 1 | S = 1 | Y = 1
```

---

## Learning Outcomes

After completing this project, you should be able to:

- Understand the operation of a 2x1 Multiplexer.
- Implement a MUX using Dataflow Modeling.
- Use the NOT (`~`), AND (`&`), and OR (`|`) operators in Verilog.
- Verify the functionality of a combinational circuit through simulation.

---

## Conclusion

The 2x1 Multiplexer is one of the most fundamental data selection circuits in digital electronics. It serves as the foundation for larger multiplexers, arithmetic circuits, data routing systems, and processor design.