# 2×1 MUX – Gate-Level Modeling

**Author:** Halima Diyauddeen

---

## Overview

This project implements a **2×1 Multiplexer (MUX)** using **Verilog Gate-Level Modeling**. A 2×1 MUX selects one of two data inputs and forwards it to a single output based on the value of the select input.

---

## Objective

- Understand the operation of a 2×1 Multiplexer.
- Implement a MUX using Verilog gate primitives.
- Verify the design using a dedicated testbench.

---

## Gate Primitives Used

```verilog
not (not_s, s);

and (w0, i0, not_s);
and (w1, i1, s);

or (y, w0, w1);
```

The `not` gate generates the complement of the select signal, the `and` gates determine the selected input, and the `or` gate combines the intermediate results to produce the final output.

---

## Truth Table

| S | I0 | I1 | Y |
|:-:|:--:|:--:|:-:|
| 0 | 0 | X | 0 |
| 0 | 1 | X | 1 |
| 1 | X | 0 | 0 |
| 1 | X | 1 | 1 |

> **X** means "don't care" because that input is not selected.

---

## Project Files

| File | Description |
|------|-------------|
| `mux_2x1.v` | Design Under Test (DUT) |
| `mux_2x1_tb.v` | Testbench used to verify the DUT |
| `README.md` | Project documentation |

---

## Verilog Implementation

The multiplexer is implemented using Verilog's built-in gate primitives:

- `not`
- `and`
- `or`

No `assign` statements are used, making this a true Gate-Level Modeling implementation.

---

## Simulation

The testbench applies different combinations of the input and select signals and displays the corresponding output using the `$monitor` system task.

---

## Expected Output

```text
I0=0 | I1=0 | S=0 | Y=0
I0=0 | I1=1 | S=0 | Y=0
I0=1 | I1=0 | S=0 | Y=1
I0=1 | I1=1 | S=0 | Y=1
I0=0 | I1=0 | S=1 | Y=0
I0=0 | I1=1 | S=1 | Y=1
I0=1 | I1=0 | S=1 | Y=0
I0=1 | I1=1 | S=1 | Y=1
```

---

## Learning Outcomes

After completing this project, you should be able to:

- Understand the operation of a 2×1 Multiplexer.
- Implement a multiplexer using Verilog gate primitives.
- Design combinational circuits using Gate-Level Modeling.
- Verify multiplexer functionality through simulation.

---

## Conclusion

The **2×1 Multiplexer** is one of the most important combinational circuits in digital design. It selects one of two input signals based on a select line and routes it to a single output. Implementing it using Verilog gate primitives provides a strong foundation for designing larger multiplexers and more complex digital systems.