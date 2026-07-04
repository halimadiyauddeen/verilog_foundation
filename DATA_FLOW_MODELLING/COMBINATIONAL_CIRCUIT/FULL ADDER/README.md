# Full Subtractor – Dataflow Modeling

**Author:** Halima Diyauddeen

---

## Overview

This project implements a **Full Subtractor** using **Verilog Dataflow Modeling**. A Full Subtractor is a combinational circuit that subtracts two single-bit binary numbers while considering a **Borrow-In (Bin)** from the previous stage. It produces two outputs: **Difference (Diff)** and **Borrow-Out (Bout)**.

---

## Objective

- Understand the operation of a Full Subtractor.
- Implement a Full Subtractor using Verilog Dataflow Modeling.
- Verify the design using a dedicated testbench.

---

## Boolean Expressions

```text
Difference = A ^ B ^ Bin

Borrow Out = (~A & B) | (~(A ^ B) & Bin)
```

---

## Truth Table

| A | B | Bin | Diff | Bout |
|:-:|:-:|:---:|:----:|:----:|
| 0 | 0 |  0  |  0   |  0   |
| 0 | 0 |  1  |  1   |  1   |
| 0 | 1 |  0  |  1   |  1   |
| 0 | 1 |  1  |  0   |  1   |
| 1 | 0 |  0  |  1   |  0   |
| 1 | 0 |  1  |  0   |  0   |
| 1 | 1 |  0  |  0   |  0   |
| 1 | 1 |  1  |  1   |  1   |

---

## Project Files

| File | Description |
|------|-------------|
| `full_subtractor.v` | Design Under Test (DUT) |
| `full_subtractor_tb.v` | Testbench used to verify the DUT |
| `README.md` | Project documentation |

---

## Verilog Implementation

The Full Subtractor is implemented using continuous assignment statements.

```verilog
assign diff = a ^ b ^ bin;
assign bout = (~a & b) | (~(a ^ b) & bin);
```

---

## Simulation

The testbench applies all eight possible combinations of `A`, `B`, and `Bin`.

The outputs are observed using the `$monitor` system task.

---

## Expected Output

```text
A = 0 | B = 0 | Bin = 0 | DIFF = 0 | Bout = 0
A = 0 | B = 0 | Bin = 1 | DIFF = 1 | Bout = 1
A = 0 | B = 1 | Bin = 0 | DIFF = 1 | Bout = 1
A = 0 | B = 1 | Bin = 1 | DIFF = 0 | Bout = 1
A = 1 | B = 0 | Bin = 0 | DIFF = 1 | Bout = 0
A = 1 | B = 0 | Bin = 1 | DIFF = 0 | Bout = 0
A = 1 | B = 1 | Bin = 0 | DIFF = 0 | Bout = 0
A = 1 | B = 1 | Bin = 1 | DIFF = 1 | Bout = 1
```

---

## Learning Outcomes

After completing this project, you should be able to:

- Understand the operation of a Full Subtractor.
- Distinguish between **Borrow-In (Bin)** and **Borrow-Out (Bout)**.
- Implement a Full Subtractor using Dataflow Modeling.
- Apply XOR (`^`), NOT (`~`), AND (`&`), and OR (`|`) operators in Verilog.
- Verify a combinational arithmetic circuit through simulation.

---

## Conclusion

The Full Subtractor extends the functionality of the Half Subtractor by incorporating a borrow input. It is an essential building block for designing multi-bit binary subtractors and arithmetic units used in digital systems.