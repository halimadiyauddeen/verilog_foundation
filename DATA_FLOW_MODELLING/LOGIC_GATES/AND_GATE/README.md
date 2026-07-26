 AND Gate – Dataflow Modeling

**Author:** Halima Diyauddeen

---

 Overview

This project demonstrates the implementation of a **2-input AND gate** using **Dataflow Modeling** in Verilog. The output is generated with a continuous assignment (`assign`) statement, which performs the logical AND operation on the two input signals.

---

 Objective

The objectives of this project are to:

* Understand the operation of an AND gate.
* Learn how to use Dataflow Modeling in Verilog.
* Implement a simple combinational circuit.
* Test the design using a Verilog testbench.

---

 Boolean Expression

```text
Y = A & B
```

---

 Truth Table

|  A  |  B  |  Y  |
| :-: | :-: | :-: |
|  0  |  0  |  0  |
|  0  |  1  |  0  |
|  1  |  0  |  0  |
|  1  |  1  |  1  |

---

 Project Files

| File            | Description                         |
| --------------- | ----------------------------------- |
| `and_gate.v`    | Verilog module for the AND gate     |
| `and_gate_tb.v` | Testbench used to verify the design |
| `README.md`     | Project documentation               |

---

 Verilog Implementation

The AND gate is implemented with a continuous assignment statement.

```verilog
assign y = a & b;
```

The output becomes `1` only when both inputs are `1`. For every other input combination, the output remains `0`.

---

 Simulation

The testbench checks all four possible input combinations:

* 00
* 01
* 10
* 11

The simulation results are displayed using the `$monitor` system task so the output can be verified against the truth table.

---

 Expected Output

```text
A = 0 | B = 0 | Y = 0
A = 0 | B = 1 | Y = 0
A = 1 | B = 0 | Y = 0
A = 1 | B = 1 | Y = 1
```

---

 What I Learned

From this project, I learned how to:

* Implement an AND gate using Dataflow Modeling.
* Use the `assign` statement in Verilog.
* Write and simulate a basic combinational circuit.
* Verify the output by comparing the simulation results with the truth table.

---

 Conclusion

The **AND Gate** demonstrates how Dataflow Modeling can be used to describe combinational logic using continuous assignment statements. By using the bitwise AND (`&`) operator, the design produces a HIGH output only when both input signals are HIGH. This project provides a foundation for implementing more complex combinational and arithmetic circuits in Verilog.