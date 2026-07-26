 Half Subtractor – Gate-Level Modeling

**Author:** Halima Diyauddeen

---

 Overview

This project implements a **Half Subtractor** using **Verilog Gate-Level Modeling**. A Half Subtractor subtracts one one-bit binary number from another and produces two outputs: **Difference** and **Borrow**.

---

 Objective

- Understand the operation of a Half Subtractor.
- Implement a Half Subtractor using Verilog gate primitives.
- Verify the design using a dedicated testbench.

---

 Gate Primitives Used

```verilog
xor (diff, a, b);

not (not_a, a);

and (borrow, not_a, b);
```

The `xor` gate generates the **Difference** output, while the `not` and `and` gates generate the **Borrow** output.

---

 Truth Table

| A | B | Diff | Borrow |
|:-:|:-:|:----:|:------:|
| 0 | 0 |  0   |   0    |
| 0 | 1 |  1   |   1    |
| 1 | 0 |  1   |   0    |
| 1 | 1 |  0   |   0    |

---

 Project Files

| File | Description |
|------|-------------|
| `half_subtractor.v` | Design Under Test (DUT) |
| `half_subtractor_tb.v` | Testbench used to verify the DUT |
| `README.md` | Project documentation |

---

 Verilog Implementation

The Half Subtractor is implemented using Verilog's built-in gate primitives:

- `xor`
- `not`
- `and`

No `assign` statements or behavioral constructs are used, making this a true Gate-Level Modeling implementation.

---

 Simulation

The testbench applies all four possible input combinations of `A` and `B` and displays the corresponding **Difference** and **Borrow** values using the `$monitor` system task.

---

 Expected Output

```text
A=0 | B=0 | Diff=0 | Borrow=0
A=0 | B=1 | Diff=1 | Borrow=1
A=1 | B=0 | Diff=1 | Borrow=0
A=1 | B=1 | Diff=0 | Borrow=0
```

---

 Learning Outcomes

After completing this project, you should be able to:

- Understand the operation of a Half Subtractor.
- Implement subtraction circuits using Verilog gate primitives.
- Design combinational circuits using Gate-Level Modeling.
- Verify Half Subtractor functionality through simulation.

---

 Conclusion

The **Half Subtractor** is a fundamental combinational circuit used to subtract one one-bit binary number from another. It produces a **Difference** output and a **Borrow** output and serves as the foundation for designing more advanced subtraction circuits, including the Full Subtractor.