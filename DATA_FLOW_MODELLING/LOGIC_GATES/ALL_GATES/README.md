

 All Logic Gates – Dataflow Modeling

**Author:** Halima Diyauddeen

---

 Overview

This project shows how the seven basic logic gates can be implemented using **Dataflow Modeling** in Verilog. Instead of writing separate modules for each gate, all of them are included in one design. The project helped me understand how Verilog operators work and how different logic gates behave with different input combinations.

The logic gates included are:

* AND
* OR
* NOT
* NAND
* NOR
* XOR
* XNOR

---

 Objective

The main goals of this project are to:

* Learn how the basic logic gates work.
* Implement logic gates using Verilog Dataflow Modeling.
* Practice using Verilog operators.
* Verify the design by writing and running a testbench.

---

 Logic Expressions

```text
AND   : Y = A & B
OR    : Y = A | B
NOT   : Y = ~A
NAND  : Y = ~(A & B)
NOR   : Y = ~(A | B)
XOR   : Y = A ^ B
XNOR  : Y = ~(A ^ B)
```

---

 Truth Table

|  A  |  B  | AND |  OR | NOT A | NOT B | NAND | NOR | XOR | XNOR |
| :-: | :-: | :-: | :-: | :---: | :---: | :--: | :-: | :-: | :--: |
|  0  |  0  |  0  |  0  |   1   |   1   |   1  |  1  |  0  |   1  |
|  0  |  1  |  0  |  1  |   1   |   0   |   1  |  0  |  1  |   0  |
|  1  |  0  |  0  |  1  |   0   |   1   |   1  |  0  |  1  |   0  |
|  1  |  1  |  1  |  1  |   0   |   0   |   0  |  0  |  0  |   1  |

---

 Project Files

| File                   | Description                                     |
| ---------------------- | ----------------------------------------------- |
| `all_logic_gates.v`    | Verilog module containing all seven logic gates |
| `all_logic_gates_tb.v` | Testbench used to test the design               |
| `README.md`            | Project documentation                           |

---

 Verilog Operators Used

| Operator | Function |    |
| :------: | -------- | -- |
|    `&`   | AND      |    |
|     `    | `        | OR |
|    `~`   | NOT      |    |
|    `^`   | XOR      |    |

The NAND, NOR, and XNOR outputs are obtained by combining these basic operators.

---

 Simulation

The testbench checks every possible input combination:

* 00
* 01
* 10
* 11

The output for each logic gate is displayed in the console using the `$monitor` system task, making it easy to compare the simulation results with the truth table.

---

 Expected Output

```text
A=0 B=0 | AND=0 OR=0 NOTA=1 NOTB=1 NAND=1 NOR=1 XOR=0 XNOR=1
A=0 B=1 | AND=0 OR=1 NOTA=1 NOTB=0 NAND=1 NOR=0 XOR=1 XNOR=0
A=1 B=0 | AND=0 OR=1 NOTA=0 NOTB=1 NAND=1 NOR=0 XOR=1 XNOR=0
A=1 B=1 | AND=1 OR=1 NOTA=0 NOTB=0 NAND=0 NOR=0 XOR=0 XNOR=1
```

---

 What I Learned

Working on this project helped me to:

* Understand how each basic logic gate operates.
* Use Dataflow Modeling to describe combinational circuits.
* Become familiar with common Verilog operators.
* Write a testbench to verify a digital design.
* Compare simulation results with the expected truth table to confirm the design works correctly.

---

 Conclusion

This project gave me practical experience with the basic logic gates in Verilog. Since these gates are the building blocks of digital systems, understanding them is important before moving on to larger combinational circuits, sequential circuits, and other VLSI designs.
