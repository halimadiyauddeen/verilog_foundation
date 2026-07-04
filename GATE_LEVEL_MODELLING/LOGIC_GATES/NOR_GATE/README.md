# NOR Gate – Gate-Level Modeling

**Author:** Halima Diyauddeen

---

## Overview

This project implements a **NOR Gate** using **Verilog Gate-Level Modeling**. Gate-level modeling describes a digital circuit by connecting Verilog's built-in logic gate primitives.

---

## Objective

- Understand Gate-Level Modeling in Verilog.
- Implement a NOR gate using the `nor` gate primitive.
- Verify the design using a dedicated testbench.

---

## Gate Primitive Used

```verilog
nor (y, a, b);
```

The `nor` primitive performs a logical NOR operation on the inputs and drives the result to the output.

---

## Truth Table

| A | B | Y |
|:-:|:-:|:-:|
| 0 | 0 | 1 |
| 0 | 1 | 0 |
| 1 | 0 | 0 |
| 1 | 1 | 0 |

---

## Project Files

| File | Description |
|------|-------------|
| `nor_gate.v` | Design Under Test (DUT) |
| `nor_gate_tb.v` | Testbench used to verify the DUT |
| `README.md` | Project documentation |

---

## Verilog Implementation

The NOR gate is implemented using Verilog's built-in `nor` gate primitive.

```verilog
nor (y, a, b);
```

---

## Simulation

The testbench applies all possible input combinations to verify the functionality of the NOR gate.

The output is observed using the `$monitor` system task.

---

## Expected Output

```text
A = 0 | B = 0 | Y = 1
A = 0 | B = 1 | Y = 0
A = 1 | B = 0 | Y = 0
A = 1 | B = 1 | Y = 0
```

---

## Learning Outcomes

After completing this project, you should be able to:

- Understand Gate-Level Modeling in Verilog.
- Use the `nor` gate primitive.
- Design a simple combinational circuit using built-in gate primitives.
- Verify the circuit using a Verilog testbench.

---

## Conclusion

The NOR gate is a universal logic gate capable of implementing any Boolean function when combined appropriately. Implementing it using Verilog's built-in `nor` primitive strengthens your understanding of Gate-Level Modeling and prepares you for designing more complex digital systems.