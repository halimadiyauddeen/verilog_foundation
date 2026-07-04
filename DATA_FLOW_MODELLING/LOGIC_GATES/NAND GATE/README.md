# NAND Gate – Dataflow Modeling

**Author:** Halima Diyauddeen

---

## Overview

This project implements a **2-input NAND gate** using **Verilog Dataflow Modeling**. The NAND gate is the inverse of the AND gate and is known as a **universal gate** because any digital logic circuit can be constructed using only NAND gates.

---

## Objective

- Learn how a NAND gate works.
- Implement a NAND gate using Verilog Dataflow Modeling.
- Verify the design using a dedicated testbench.

---

## Boolean Expression

```text
Y = ~(A & B)
```

---

## Truth Table

| A | B | Y |
|:-:|:-:|:-:|
| 0 | 0 | 1 |
| 0 | 1 | 1 |
| 1 | 0 | 1 |
| 1 | 1 | 0 |

---

## Project Files

| File | Description |
|------|-------------|
| `nand_gate.v` | Design Under Test (DUT) |
| `nand_gate_tb.v` | Testbench used to verify the DUT |
| `README.md` | Project documentation |

---

## Verilog Implementation

The NAND gate is implemented using a continuous assignment statement.

```verilog
assign y = ~(a & b);
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
A = 0 | B = 0 | Y = 1
A = 0 | B = 1 | Y = 1
A = 1 | B = 0 | Y = 1
A = 1 | B = 1 | Y = 0
```

---

## Learning Outcomes

After completing this project, you should be able to:

- Understand the operation of a NAND gate.
- Recognize why the NAND gate is called a universal gate.
- Implement a NAND gate using Dataflow Modeling.
- Use the `assign` statement with logical operators.
- Verify the circuit through simulation.