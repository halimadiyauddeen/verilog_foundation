# AND Gate – Dataflow Modeling

**Author:** Halima Diyauddeen

---

## Overview

This project implements a **2-input AND gate** using **Verilog Dataflow Modeling**. The design uses a continuous assignment (`assign`) statement to perform the logical AND operation between two inputs.

---

## Objective

- Learn the fundamentals of Dataflow Modeling.
- Implement a basic combinational circuit in Verilog.
- Verify the design using a dedicated testbench.

---

## Boolean Expression

```text
Y = A & B
```

---

## Truth Table

| A | B | Y |
|:-:|:-:|:-:|
| 0 | 0 | 0 |
| 0 | 1 | 0 |
| 1 | 0 | 0 |
| 1 | 1 | 1 |

---

## Project Files

| File | Description |
|------|-------------|
| `and_gate.v` | Design Under Test (DUT) |
| `and_gate_tb.v` | Testbench used to verify the DUT |
| `README.md` | Project documentation |

---

## Verilog Implementation

The AND gate is implemented using a continuous assignment statement.

```verilog
assign y = a & b;
```

---

## Simulation

The testbench applies all possible input combinations:

- 00
- 01
- 10
- 11

The output is observed using the `$monitor` system task.

---

## Expected Output

```text
A = 0 | B = 0 | Y = 0
A = 0 | B = 1 | Y = 0
A = 1 | B = 0 | Y = 0
A = 1 | B = 1 | Y = 1
```

---

## Learning Outcomes

After completing this project, you should be able to:

- Understand how an AND gate works.
- Write combinational logic using Dataflow Modeling.
- Use the `assign` statement in Verilog.
- Create a simple testbench to verify a digital circuit.