 XOR Gate – Gate-Level Modeling

**Author:** Halima Diyauddeen

---

 Overview

This project implements an **XOR Gate** using **Verilog Gate-Level Modeling**. Gate-level modeling describes a digital circuit by connecting Verilog's built-in logic gate primitives.

---

 Objective

- Understand Gate-Level Modeling in Verilog.
- Implement an XOR gate using the `xor` gate primitive.
- Verify the design using a dedicated testbench.

---

 Gate Primitive Used

```verilog
xor (y, a, b);
```

The `xor` primitive performs a logical Exclusive-OR (XOR) operation on the inputs and drives the result to the output.

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

The XOR gate is implemented using Verilog's built-in `xor` gate primitive.

```verilog
xor (y, a, b);
```

---

 Simulation

The testbench applies all possible input combinations to verify the functionality of the XOR gate.

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

- Understand Gate-Level Modeling in Verilog.
- Use the `xor` gate primitive.
- Design a simple combinational circuit using built-in gate primitives.
- Verify the circuit using a Verilog testbench.

---

 Conclusion

The XOR gate is a fundamental logic gate used in arithmetic circuits, comparators, parity generators, and error detection systems. Implementing it using Verilog's built-in `xor` primitive strengthens your understanding of Gate-Level Modeling and prepares you for designing more advanced digital circuits.