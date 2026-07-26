 1-Bit Comparator – Gate-Level Modeling

**Author:** Halima Diyauddeen

---

 Overview

This project implements a **1-Bit Comparator** using **Verilog Gate-Level Modeling**. A comparator compares two 1-bit binary inputs and determines whether the first input is greater than, equal to, or less than the second input.

---

 Objective

- Understand the operation of a 1-Bit Comparator.
- Implement a 1-Bit Comparator using Verilog gate primitives.
- Verify the design using a dedicated testbench.

---

 Gate Primitives Used

```verilog
not  (not_a, a);
not  (not_b, b);
and  (greater, a, not_b);
xnor (equal, a, b);
and  (less, not_a, b);
```

---

 Truth Table

| A | B | Greater | Equal | Less |
|:-:|:-:|:-------:|:-----:|:----:|
| 0 | 0 |    0    |   1   |   0  |
| 0 | 1 |    0    |   0   |   1  |
| 1 | 0 |    1    |   0   |   0  |
| 1 | 1 |    0    |   1   |   0  |

---

 Project Files

| File | Description |
|------|-------------|
| `comparator_1bit.v` | Design Under Test (DUT) |
| `comparator_1bit_tb.v` | Testbench used to verify the DUT |
| `README.md` | Project documentation |

---

 Verilog Implementation

The comparator is implemented using the following Verilog gate primitives:

- `not`
- `and`
- `xnor`

These primitives work together to determine whether input **A** is greater than, equal to, or less than input **B**.

---

 Simulation

The testbench applies all possible input combinations (`00`, `01`, `10`, and `11`) and displays the comparison results using the `$monitor` system task.

---

 Expected Output

```text
A=0 | B=0 | Greater=0 | Equal=1 | Less=0
A=0 | B=1 | Greater=0 | Equal=0 | Less=1
A=1 | B=0 | Greater=1 | Equal=0 | Less=0
A=1 | B=1 | Greater=0 | Equal=1 | Less=0
```

---

 Learning Outcomes

After completing this project, you should be able to:

- Understand how a 1-Bit Comparator operates.
- Implement comparison logic using Verilog gate primitives.
- Design combinational circuits using Gate-Level Modeling.
- Verify comparator functionality through simulation.

---

 Conclusion

The 1-Bit Comparator is a fundamental combinational circuit used in arithmetic and digital systems. Implementing it using Verilog's built-in gate primitives demonstrates how multiple logic gates can be combined to perform comparison operations, laying the foundation for larger comparator designs.