 XOR Gate – Dataflow Modeling

**Author:** Halima Diyauddeen

---

 Overview

This project implements a **2-input XOR gate** using **Verilog Dataflow Modeling**. The XOR (Exclusive OR) gate produces a HIGH output only when the two inputs are different. It is widely used in arithmetic circuits, parity generation, and error detection.

---

 Objective

- Learn how an XOR gate works.
- Implement an XOR gate using Verilog Dataflow Modeling.
- Verify the design using a dedicated testbench.

---

 Boolean Expression

```text
Y = A ^ B
```

---

 Truth Table

| A | B | Y |
|:-:|:-:|:-:|
| 0 | 0 | 0 |
| 0 | 1 | 1 |
| 1 | 0 | 1 |
| 1 | 1 | 0 |

---

 Project Files

| File | Description |
|------|-------------|
| `xor_gate.v` | Design Under Test (DUT) |
| `xor_gate_tb.v` | Testbench used to verify the DUT |
| `README.md` | Project documentation |

---

 Verilog Implementation

The XOR gate is implemented using a continuous assignment statement.

```verilog
assign y = a ^ b;
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
A = 0 | B = 0 | Y = 0
A = 0 | B = 1 | Y = 1
A = 1 | B = 0 | Y = 1
A = 1 | B = 1 | Y = 0
```

---

 Learning Outcomes

After completing this project, you should be able to:

- Understand the operation of an XOR gate.
- Recognize why the XOR gate is called the Exclusive OR gate.
- Implement an XOR gate using Dataflow Modeling.
- Use the bitwise XOR (`^`) operator in Verilog.
- Verify the circuit through simulation.


---

 Conclusion

The **XOR Gate** demonstrates how Dataflow Modeling can be used to describe combinational logic using continuous assignment statements. By using the bitwise XOR (`^`) operator, the design produces a HIGH output only when the input signals differ. This project provides a foundation for implementing arithmetic circuits such as Half Adders and Full Adders, where the XOR gate plays a key role.