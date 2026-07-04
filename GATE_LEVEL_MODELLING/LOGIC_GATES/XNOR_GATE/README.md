# XNOR Gate – Gate-Level Modeling

**Author:** Halima Diyauddeen

---

## Overview

This project implements an **XNOR Gate** using **Verilog Gate-Level Modeling**. Gate-level modeling describes a digital circuit by connecting Verilog's built-in logic gate primitives.

---

## Objective

- Understand Gate-Level Modeling in Verilog.
- Implement an XNOR gate using the `xnor` gate primitive.
- Verify the design using a dedicated testbench.

---

## Gate Primitive Used

```verilog
xnor (y, a, b);
```

The `xnor` primitive performs a logical Exclusive-NOR (XNOR) operation on the inputs and drives the result to the output.

---

## Truth Table

| A | B | Y |
|:-:|:-:|:-:|
| 0 | 0 | 1 |
| 0 | 1 | 0 |
| 1 | 0 | 0 |
| 1 | 1 | 1 |

---

## Project Files

| File | Description |
|------|-------------|
| `xnor_gate.v` | Design Under Test (DUT) |
| `xnor_gate_tb.v` | Testbench used to verify the DUT |
| `README.md` | Project documentation |

---

## Verilog Implementation

The XNOR gate is implemented using Verilog's built-in `xnor` gate primitive.

```verilog
xnor (y, a, b);
```

---

## Simulation

The testbench applies all possible input combinations to verify the functionality of the XNOR gate.

The output is observed using the `$monitor` system task.

---

## Expected Output

```text
A = 0 | B = 0 | Y = 1
A = 0 | B = 1 | Y = 0
A = 1 | B = 0 | Y = 0
A = 1 | B = 1 | Y = 1
```

---

## Learning Outcomes

After completing this project, you should be able to:

- Understand Gate-Level Modeling in Verilog.
- Use the `xnor` gate primitive.
- Design a simple combinational circuit using built-in gate primitives.
- Verify the circuit using a Verilog testbench.

---

## Conclusion

The XNOR gate is widely used in digital systems for equality checking, comparators, parity checking, and error detection circuits. Implementing it using Verilog's built-in `xnor` primitive strengthens your understanding of Gate-Level Modeling and prepares you for designing more advanced digital circuits.