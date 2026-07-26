 NAND Gate – Dataflow Modeling

**Author:** Halima Diyauddeen

---

 Overview

This project demonstrates the implementation of a **2-input NAND gate** using **Verilog Dataflow Modeling**. The NAND gate performs the opposite operation of an AND gate by producing the complement of the AND output. It is also known as a **universal gate** because any digital logic circuit can be implemented using only NAND gates.

---

 Project Objective

The objectives of this project are to:

* Understand how a NAND gate works.
* Implement the gate using Verilog Dataflow Modeling.
* Verify the design through simulation using a testbench.

---

 Boolean Expression

```text
Y = ~(A & B)
```

---

 Truth Table

|  A  |  B  |  Y  |
| :-: | :-: | :-: |
|  0  |  0  |  1  |
|  0  |  1  |  1  |
|  1  |  0  |  1  |
|  1  |  1  |  0  |

---

 Project Files

| File             | Purpose                               |
| ---------------- | ------------------------------------- |
| `nand_gate.v`    | Verilog design of the NAND gate (DUT) |
| `nand_gate_tb.v` | Testbench used for simulation         |
| `README.md`      | Project documentation                 |
s
---

 Verilog Design

The NAND gate is implemented using a continuous `assign` statement, which is the main feature of Dataflow Modeling.

```verilog
assign y = ~(a & b);
```

---

 Simulation

The testbench applies all four possible input combinations (`00`, `01`, `10`, and `11`). The output is displayed using the `$monitor` system task to confirm that it matches the expected truth table.

---

 Expected Output

```text
A = 0 | B = 0 | Y = 1
A = 0 | B = 1 | Y = 1
A = 1 | B = 0 | Y = 1
A = 1 | B = 1 | Y = 0
```

---

 What I Learned

While working on this project, I learned how to:

* Implement a NAND gate using Dataflow Modeling.
* Use the `assign` statement to describe combinational logic.
* Understand why the NAND gate is called a universal gate.
* Verify a Verilog design using a testbench and simulation.

---

 Conclusion

This project successfully implements a 2-input NAND gate using Verilog Dataflow Modeling. The simulation results matched the expected outputs for every input combination, confirming that the design works correctly. This project also helped strengthen my understanding of Dataflow Modeling and basic combinational logic.
