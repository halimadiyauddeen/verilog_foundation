# Half Subtractor – Dataflow Modeling

**Author:** Halima Diyauddeen

---

## Overview

This project implements a **Half Subtractor** using **Verilog Dataflow Modeling**. A Half Subtractor is a combinational circuit that subtracts one single-bit binary number from another. It produces two outputs: **Difference** and **Borrow**.

---

## Objective

- Understand the operation of a Half Subtractor.
- Implement a Half Subtractor using Verilog Dataflow Modeling.
- Verify the design using a dedicated testbench.

---

## Boolean Expressions

```text
Difference = A ^ B
Borrow     = ~A & B
```

---

## Truth Table

| A | B | Difference | Borrow |
|:-:|:-:|:----------:|:------:|
| 0 | 0 |     0      |    0   |
| 0 | 1 |     1      |    1   |
| 1 | 0 |     1      |    0   |
| 1 | 1 |     0      |    0   |

---

## Project Files

| File | Description |
|------|-------------|
| `half_subtractor.v` | Design Under Test (DUT) |
| `half_subtractor_tb.v` | Testbench used to verify the DUT |
| `README.md` | Project documentation |

---

## Verilog Implementation

The Half Subtractor is implemented using continuous assignment statements.

```verilog
assign diff   = a ^ b;
assign borrow = ~a & b;
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
A = 0 | B = 0 | DIFF = 0 | BORROW = 0
A = 0 | B = 1 | DIFF = 1 | BORROW = 1
A = 1 | B = 0 | DIFF = 1 | BORROW = 0
A = 1 | B = 1 | DIFF = 0 | BORROW = 0
```

---

## Learning Outcomes

After completing this project, you should be able to:

- Understand the operation of a Half Subtractor.
- Distinguish between the **Difference** and **Borrow** outputs.
- Implement a Half Subtractor using Dataflow Modeling.
- Apply the XOR (`^`), NOT (`~`), and AND (`&`) operators in Verilog.
- Verify the functionality of a combinational circuit through simulation.

---

## Conclusion

The Half Subtractor is a basic arithmetic circuit used for binary subtraction. It serves as the foundation for designing the **Full Subtractor**, which extends the subtraction process by including a borrow input from a previous stage.