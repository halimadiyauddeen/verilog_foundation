 XNOR Gate – Dataflow Modeling

**Author:** Halima Diyauddeen

---

 Overview

This project implements a **2-input XNOR gate** using **Verilog Dataflow Modeling**. The XNOR (Exclusive NOR) gate produces a HIGH output when both inputs are the same and a LOW output when the inputs are different. It is commonly referred to as the **equivalence gate**.

---

 Objective

- Learn how an XNOR gate works.
- Implement an XNOR gate using Verilog Dataflow Modeling.
- Verify the design using a dedicated testbench.

---

 Boolean Expression

```text
Y = ~(A ^ B)
```

---

 Truth Table

| A | B | Y |
|:-:|:-:|:-:|
| 0 | 0 | 1 |
| 0 | 1 | 0 |
| 1 | 0 | 0 |
| 1 | 1 | 1 |

---

 Project Files

| File | Description |
|------|-------------|
| `xnor_gate.v` | Design Under Test (DUT) |
| `xnor_gate_tb.v` | Testbench used to verify the DUT |
| `README.md` | Project documentation |

---

 Verilog Implementation

The XNOR gate is implemented using a continuous assignment statement.

```verilog
assign y = ~(a ^ b);
```

---

 Simulation

The testbench applies all possible input combinations:

- 00
- 01
- 10
- 11

The output is observed using the `$monitor` system task.

---

 Expected Output

```text
A = 0 | B = 0 | Y = 1
A = 0 | B = 1 | Y = 0
A = 1 | B = 0 | Y = 0
A = 1 | B = 1 | Y = 1
```

---

 Learning Outcomes

After completing this project, you should be able to:

- Understand the operation of an XNOR gate.
- Recognize why the XNOR gate is called the equivalence gate.
- Implement an XNOR gate using Dataflow Modeling.
- Use the bitwise XOR (`^`) and NOT (`~`) operators in Verilog.
- Verify the circuit through simulation.


---

 Conclusion

The **XNOR Gate** demonstrates how Dataflow Modeling can be used to implement combinational logic using continuous assignment statements. By combining the bitwise XOR (`^`) and NOT (`~`) operators, the design produces a HIGH output only when both input signals are identical. This project provides a foundation for implementing digital circuits that perform equality checking, parity generation, and comparison operations.