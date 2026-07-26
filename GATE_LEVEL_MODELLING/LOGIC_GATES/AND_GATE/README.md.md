 AND Gate – Gate-Level Modeling

**Author:** Halima Diyauddeen

---

 Overview

This project implements an **AND Gate** using **Verilog Gate-Level Modeling**. Gate-level modeling describes a digital circuit by connecting Verilog's built-in logic gate primitives.

---

 Objective

- Understand Gate-Level Modeling in Verilog.
- Implement an AND gate using the `and` gate primitive.
- Verify the design using a dedicated testbench.

---

 Gate Primitive Used

```verilog
and (y, a, b);
```

The `and` primitive performs a logical AND operation on the inputs and drives the result to the output.

---

 Truth Table

| A | B | Y |
|:-:|:-:|:-:|
| 0 | 0 | 0 |
| 0 | 1 | 0 |
| 1 | 0 | 0 |
| 1 | 1 | 1 |

---

 Project Files

| File | Description |
|------|-------------|
| `and_gate.v` | Design Under Test (DUT) |
| `and_gate_tb.v` | Testbench used to verify the DUT |
| `README.md` | Project documentation |

---

 Verilog Implementation

```verilog
and (y, a, b);
```

---

 Simulation

The testbench applies all possible input combinations to verify the functionality of the AND gate.

The output is observed using the `$monitor` system task.

---

 Expected Output

```text
A = 0 | B = 0 | Y = 0
A = 0 | B = 1 | Y = 0
A = 1 | B = 0 | Y = 0
A = 1 | B = 1 | Y = 1
```

---

 Learning Outcomes

After completing this project, you should be able to:

- Understand Gate-Level Modeling in Verilog.
- Use the `and` gate primitive.
- Design a simple combinational circuit using built-in gate primitives.
- Verify the circuit using a Verilog testbench.

---

 Conclusion

The AND gate is one of the fundamental logic gates in digital electronics. Implementing it using Verilog's built-in `and` primitive introduces the basic concept of Gate-Level Modeling and forms the foundation for designing more complex digital circuits.