# NOT Gate – Dataflow Modeling

**Author:** Halima Diyauddeen

---

## Overview

This project implements a **NOT gate** using **Verilog Dataflow Modeling**. The NOT gate, also known as an inverter, produces the complement of its input. It has one input and one output.

---

## Objective

- Learn how a NOT gate works.
- Implement a NOT gate using Verilog Dataflow Modeling.
- Verify the design using a dedicated testbench.

---

## Boolean Expression

```text
Y = ~A
```

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

The NOT gate is implemented using a continuous assignment statement.

```verilog
assign y = ~a;
```

---

## Simulation

The testbench applies all possible input values:

- 0
- 1

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

- Understand the operation of a NOT gate (inverter).
- Implement a NOT gate using Dataflow Modeling.
- Use the bitwise NOT (`~`) operator in Verilog.
- Develop a simple Verilog testbench.
- Verify the circuit through simulation.