 2-Bit Comparator – Dataflow Modeling

**Author:** Halima Diyauddeen

---

 Overview

This project implements a **2-Bit Comparator** using **Verilog Dataflow Modeling**. A comparator compares two 2-bit binary numbers and determines whether the first number is greater than, equal to, or less than the second number.

---

 Objective

- Understand the operation of a 2-Bit Comparator.
- Implement a 2-Bit Comparator using Verilog Dataflow Modeling.
- Verify the design using a dedicated testbench.

---

 Boolean Expressions

```text
A > B = (A1 & ~B1) | (~(A1 ^ B1) & A0 & ~B0)

A = B = ~(A1 ^ B1) & ~(A0 ^ B0)

A < B = (~A1 & B1) | (~(A1 ^ B1) & ~A0 & B0)
```

---

 Truth Table

| A | B | A>B | A=B | A<B |
|:--:|:--:|:--:|:--:|:--:|
| 00 | 00 | 0 | 1 | 0 |
| 00 | 01 | 0 | 0 | 1 |
| 00 | 10 | 0 | 0 | 1 |
| 00 | 11 | 0 | 0 | 1 |
| 01 | 00 | 1 | 0 | 0 |
| 01 | 01 | 0 | 1 | 0 |
| 01 | 10 | 0 | 0 | 1 |
| 01 | 11 | 0 | 0 | 1 |
| 10 | 00 | 1 | 0 | 0 |
| 10 | 01 | 1 | 0 | 0 |
| 10 | 10 | 0 | 1 | 0 |
| 10 | 11 | 0 | 0 | 1 |
| 11 | 00 | 1 | 0 | 0 |
| 11 | 01 | 1 | 0 | 0 |
| 11 | 10 | 1 | 0 | 0 |
| 11 | 11 | 0 | 1 | 0 |

---

 Project Files

| File | Description |
|------|-------------|
| `comparator_2bit.v` | Design Under Test (DUT) |
| `comparator_2bit_tb.v` | Testbench used to verify the DUT |
| `README.md` | Project documentation |

---

 Verilog Implementation

The comparator is implemented using continuous assignment statements.

```verilog
assign a_gt_b = (a1 & ~b1) |
                (~(a1 ^ b1) & a0 & ~b0);

assign a_eq_b = ~(a1 ^ b1) &
                ~(a0 ^ b0);

assign a_lt_b = (~a1 & b1) |
                (~(a1 ^ b1) & ~a0 & b0);
```

---

 Simulation

The testbench applies representative input combinations to verify the comparator.

The outputs are observed using the `$monitor` system task.

---

 Expected Output

```text
A=00 | B=00 | A>B=0 | A=B=1 | A<B=0
A=01 | B=00 | A>B=1 | A=B=0 | A<B=0
A=10 | B=01 | A>B=1 | A=B=0 | A<B=0
A=11 | B=10 | A>B=1 | A=B=0 | A<B=0
A=00 | B=10 | A>B=0 | A=B=0 | A<B=1
A=01 | B=11 | A>B=0 | A=B=0 | A<B=1
A=10 | B=10 | A>B=0 | A=B=1 | A<B=0
A=11 | B=11 | A>B=0 | A=B=1 | A<B=0
```

---

 Learning Outcomes

After completing this project, you should be able to:

- Understand the operation of a 2-Bit Comparator.
- Compare two multi-bit binary numbers using Boolean expressions.
- Implement a comparator using Dataflow Modeling.
- Verify the functionality of a combinational circuit through simulation.

---

 Conclusion

The 2-Bit Comparator extends the 1-Bit Comparator by comparing two binary numbers with two bits each. It forms the basis for larger comparators used in processors, arithmetic logic units (ALUs), and digital control systems.