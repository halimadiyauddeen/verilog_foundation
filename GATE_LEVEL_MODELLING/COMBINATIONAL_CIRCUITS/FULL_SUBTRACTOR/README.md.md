# Full Subtractor – Gate-Level Modeling

**Author:** Halima Diyauddeen

---

## Overview

This project implements a **Full Subtractor** using **Verilog Gate-Level Modeling**. A Full Subtractor subtracts two one-bit binary numbers while considering a borrow input (`Bin`). It produces a **Difference (`Diff`)** output and a **Borrow-out (`Bout`)** output.

---

## Objective

- Understand the operation of a Full Subtractor.
- Implement a Full Subtractor using Verilog gate primitives.
- Verify the design using a dedicated testbench.

---

## Gate Primitives Used

```verilog
xor (xor1, a, b);
xor (diff, xor1, bin);

not (not_a, a);

and (and1, not_a, b);
and (and2, not_a, bin);
and (and3, b, bin);

or (bout, and1, and2, and3);
```

The `xor` gates generate the **Difference** output, while the `not`, `and`, and `or` gates generate the **Borrow-out** output.

---

## Truth Table

| A | B | Bin | Diff | Bout |
|:-:|:-:|:---:|:----:|:----:|
| 0 | 0 | 0 | 0 | 0 |
| 0 | 0 | 1 | 1 | 1 |
| 0 | 1 | 0 | 1 | 1 |
| 0 | 1 | 1 | 0 | 1 |
| 1 | 0 | 0 | 1 | 0 |
| 1 | 0 | 1 | 0 | 0 |
| 1 | 1 | 0 | 0 | 0 |
| 1 | 1 | 1 | 1 | 1 |

---

## Project Files

| File | Description |
|------|-------------|
| `full_subtractor.v` | Design Under Test (DUT) |
| `full_subtractor_tb.v` | Testbench used to verify the DUT |
| `README.md` | Project documentation |

---

## Verilog Implementation

The Full Subtractor is implemented using Verilog's built-in gate primitives:

- `xor`
- `not`
- `and`
- `or`

No `assign` statements or behavioral constructs are used, making this a true Gate-Level Modeling implementation.

---

## Simulation

The testbench applies all eight possible combinations of `A`, `B`, and `Bin` and displays the corresponding **Difference** and **Borrow-out** values using the `$monitor` system task.

---

## Expected Output

```text
A=0 | B=0 | Bin=0 | Diff=0 | Bout=0
A=0 | B=0 | Bin=1 | Diff=1 | Bout=1
A=0 | B=1 | Bin=0 | Diff=1 | Bout=1
A=0 | B=1 | Bin=1 | Diff=0 | Bout=1
A=1 | B=0 | Bin=0 | Diff=1 | Bout=0
A=1 | B=0 | Bin=1 | Diff=0 | Bout=0
A=1 | B=1 | Bin=0 | Diff=0 | Bout=0
A=1 | B=1 | Bin=1 | Diff=1 | Bout=1
```

---

## Learning Outcomes

After completing this project, you should be able to:

- Understand the operation of a Full Subtractor.
- Implement arithmetic circuits using Verilog gate primitives.
- Design combinational circuits using Gate-Level Modeling.
- Verify Full Subtractor functionality through simulation.

---

## Conclusion

The **Full Subtractor** is a fundamental combinational circuit used to subtract two one-bit binary numbers while considering a borrow input. It generates both the **Difference** and **Borrow-out** outputs and serves as the foundation for larger binary subtraction circuits such as multi-bit subtractors.