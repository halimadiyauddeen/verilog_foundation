 All Gates – Gate-Level Modeling

**Author:** Halima Diyauddeen

---

 Overview

This project implements all the fundamental logic gates using **Verilog Gate-Level Modeling**. The design demonstrates the use of Verilog's built-in gate primitives in a single module.

---

 Objective

- Understand Gate-Level Modeling in Verilog.
- Implement multiple logic gates using built-in gate primitives.
- Compare the outputs of different logic gates for the same inputs.
- Verify the design using a dedicated testbench.

---

 Gate Primitives Used

```verilog
and  (and_out,  a, b);
or   (or_out,   a, b);
nand (nand_out, a, b);
nor  (nor_out,  a, b);
xor  (xor_out,  a, b);
xnor (xnor_out, a, b);
not  (not_a,    a);
not  (not_b,    b);
```

---

 Truth Table

| A | B | AND | OR | NAND | NOR | XOR | XNOR | NOT A | NOT B |
|:-:|:-:|:---:|:--:|:----:|:---:|:---:|:----:|:-----:|:-----:|
| 0 | 0 | 0 | 0 | 1 | 1 | 0 | 1 | 1 | 1 |
| 0 | 1 | 0 | 1 | 1 | 0 | 1 | 0 | 1 | 0 |
| 1 | 0 | 0 | 1 | 1 | 0 | 1 | 0 | 0 | 1 |
| 1 | 1 | 1 | 1 | 0 | 0 | 0 | 1 | 0 | 0 |

---

 Project Files

| File | Description |
|------|-------------|
| `all_gates.v` | Design Under Test (DUT) |
| `all_gates_tb.v` | Testbench used to verify the DUT |
| `README.md` | Project documentation |

---

 Verilog Implementation

The design uses Verilog's built-in gate primitives to implement all the fundamental logic gates in a single module.

---

 Simulation

The testbench applies all possible input combinations (`00`, `01`, `10`, and `11`) and displays the outputs of all logic gates using the `$monitor` system task.

---

 Expected Output

```text
A=0 B=0 | AND=0 OR=0 NAND=1 NOR=1 XOR=0 XNOR=1 NOT_A=1 NOT_B=1
A=0 B=1 | AND=0 OR=1 NAND=1 NOR=0 XOR=1 XNOR=0 NOT_A=1 NOT_B=0
A=1 B=0 | AND=0 OR=1 NAND=1 NOR=0 XOR=1 XNOR=0 NOT_A=0 NOT_B=1
A=1 B=1 | AND=1 OR=1 NAND=0 NOR=0 XOR=0 XNOR=1 NOT_A=0 NOT_B=0
```

---

 Learning Outcomes

After completing this project, you should be able to:

- Understand the implementation of fundamental logic gates using Gate-Level Modeling.
- Use Verilog's built-in gate primitives effectively.
- Compare the behavior of different logic gates using the same input combinations.
- Verify multiple combinational circuits with a single testbench.

---

 Conclusion

The **All Gates** project brings together the seven fundamental logic gates in a single Verilog module using Gate-Level Modeling. It provides a convenient reference for understanding the behavior of each gate and serves as a solid foundation for implementing more complex digital circuits.