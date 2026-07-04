# NOT Gate – Gate-Level Modeling

**Author:** Halima Diyauddeen

---

## Overview

This project implements a **NOT Gate** using **Verilog Gate-Level Modeling**. Gate-level modeling describes a digital circuit by connecting Verilog's built-in logic gate primitives.

---

## Objective

- Understand Gate-Level Modeling in Verilog.
- Implement a NOT gate using the `not` gate primitive.
- Verify the design using a dedicated testbench.

---

## Gate Primitive Used

```verilog
not (y, a);
```

The `not` primitive performs a logical inversion of the input and drives the inverted value to the output.

---

## Truth Table

| A | Y |
|:-:|:-:|
| 0 | 1 |
| 1 | 0 |

---

## Project Files

| File | Description |
|------|-------------|
| `not_gate.v` | Design Under Test (DUT) |
| `not_gate_tb.v` | Testbench used to verify the DUT |
| `README.md` | Project documentation |

---

## Verilog Implementation

The NOT gate is implemented using Verilog's built-in `not` gate primitive.

```verilog
not (y, a);
```

---

## Simulation

The testbench applies all possible input combinations to verify the functionality of the NOT gate.

The output is observed using the `$monitor` system task.

---

## Expected Output

```text
A = 0 | Y = 1
A = 1 | Y = 0
```

---

## Learning Outcomes

After completing this project, you should be able to:

- Understand Gate-Level Modeling in Verilog.
- Use the `not` gate primitive.
- Design a simple combinational circuit using built-in gate primitives.
- Verify the circuit using a Verilog testbench.

---

## Conclusion

The NOT gate, also known as an inverter, is one of the fundamental logic gates in digital electronics. It produces the complement of its input and is widely used in digital systems. Implementing it using Verilog's built-in `not` primitive provides a solid foundation for designing more complex gate-level circuits.