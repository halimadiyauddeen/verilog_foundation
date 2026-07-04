# 1-Bit Comparator – Dataflow Modeling

**Author:** Halima Diyauddeen

---

## Overview

This project implements a **1-Bit Comparator** using **Verilog Dataflow Modeling**. A comparator is a combinational circuit that compares two binary inputs and determines whether one input is greater than, equal to, or less than the other.

---

## Objective

- Understand the operation of a 1-Bit Comparator.
- Implement a 1-Bit Comparator using Verilog Dataflow Modeling.
- Verify the design using a dedicated testbench.

---

## Boolean Expressions

```text
A > B =  A & ~B

A = B = ~(A ^ B)

A < B = ~A & B
```

---

## Truth Table

| A | B | A > B | A = B | A < B |
|:-:|:-:|:-----:|:-----:|:-----:|
| 0 | 0 |   0   |   1   |   0   |
| 0 | 1 |   0   |   0   |   1   |
| 1 | 0 |   1   |   0   |   0   |
| 1 | 1 |   0   |   1   |   0   |

---

## Project Files

| File | Description |
|------|-------------|
| `comparator_1bit.v` | Design Under Test (DUT) |
| `comparator_1bit_tb.v` | Testbench used to verify the DUT |
| `README.md` | Project documentation |

---

## Verilog Implementation

The comparator is implemented using continuous assignment statements.

```verilog
assign a_gt_b =  a & ~b;
assign a_eq_b = ~(a ^ b);
assign a_lt_b = ~a &  b;
```

---

## Simulation

The testbench applies all possible combinations of `A` and `B`.

The outputs are observed using the `$monitor` system task.

---

## Expected Output

```text
A = 0 | B = 0 | A>B = 0 | A=B = 1 | A<B = 0
A = 0 | B = 1 | A>B = 0 | A=B = 0 | A<B = 1
A = 1 | B = 0 | A>B = 1 | A=B = 0 | A<B = 0
A = 1 | B = 1 | A>B = 0 | A=B = 1 | A<B = 0
```

---

## Learning Outcomes

After completing this project, you should be able to:

- Understand the operation of a 1-Bit Comparator.
- Implement a comparator using Dataflow Modeling.
- Use XOR (`^`), NOT (`~`), and AND (`&`) operators in Boolean expressions.
- Verify the functionality of a combinational circuit through simulation.

---

## Conclusion

The 1-Bit Comparator is a fundamental combinational circuit used to compare two single-bit binary values. It forms the foundation for designing larger comparators, such as 2-bit, 4-bit, and n-bit comparators used in arithmetic logic units (ALUs), processors, and digital control systems.