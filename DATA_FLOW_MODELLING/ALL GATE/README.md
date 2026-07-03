# All Logic Gates – Dataflow Modeling

**Author:** Halima Diyauddeen

---

## Overview

This project demonstrates the implementation of the seven fundamental digital logic gates using **Verilog Dataflow Modeling**. It combines all basic logic gates into a single module, making it an excellent reference for beginners learning Verilog HDL and digital logic design.

The gates implemented are:

- AND
- OR
- NOT
- NAND
- NOR
- XOR
- XNOR

---

## Objective

- Understand the operation of the basic logic gates.
- Implement multiple logic gates using Dataflow Modeling.
- Learn the use of Verilog logic operators.
- Verify all gate outputs using a single testbench.

---

## Logic Expressions

```text
AND   : Y = A & B
OR    : Y = A | B
NOT   : Y = ~A
NAND  : Y = ~(A & B)
NOR   : Y = ~(A | B)
XOR   : Y = A ^ B
XNOR  : Y = ~(A ^ B)
```

---

## Truth Table

| A | B | AND | OR | NOT A | NOT B | NAND | NOR | XOR | XNOR |
|:-:|:-:|:---:|:--:|:-----:|:-----:|:----:|:---:|:---:|:----:|
| 0 | 0 |  0  | 0  |   1   |   1   |  1   |  1  |  0  |  1   |
| 0 | 1 |  0  | 1  |   1   |   0   |  1   |  0  |  1  |  0   |
| 1 | 0 |  0  | 1  |   0   |   1   |  1   |  0  |  1  |  0   |
| 1 | 1 |  1  | 1  |   0   |   0   |  0   |  0  |  0  |  1   |

---

## Project Files

| File | Description |
|------|-------------|
| `all_logic_gates.v` | Design Under Test (DUT) implementing all logic gates |
| `all_logic_gates_tb.v` | Testbench used to verify all outputs |
| `README.md` | Project documentation |

---

## Verilog Operators Used

| Operator | Function |
|:--------:|----------|
| `&` | AND |
| `|` | OR |
| `~` | NOT |
| `^` | XOR |

The NAND, NOR, and XNOR gates are implemented by combining these operators.

---

## Simulation

The testbench applies all possible input combinations:

- 00
- 01
- 10
- 11

The outputs of all logic gates are displayed simultaneously using the `$monitor` system task.

---

## Expected Output

```text
A=0 B=0 | AND=0 OR=0 NOTA=1 NOTB=1 NAND=1 NOR=1 XOR=0 XNOR=1
A=0 B=1 | AND=0 OR=1 NOTA=1 NOTB=0 NAND=1 NOR=0 XOR=1 XNOR=0
A=1 B=0 | AND=0 OR=1 NOTA=0 NOTB=1 NAND=1 NOR=0 XOR=1 XNOR=0
A=1 B=1 | AND=1 OR=1 NOTA=0 NOTB=0 NAND=0 NOR=0 XOR=0 XNOR=1
```

---

## Learning Outcomes

After completing this project, you should be able to:

- Explain the function of each basic logic gate.
- Implement multiple logic gates in a single Verilog module.
- Use Verilog Dataflow Modeling to describe combinational logic.
- Apply Verilog operators (`&`, `|`, `~`, and `^`) correctly.
- Develop and simulate a testbench for verifying digital circuits.
- Interpret the simulation results for all basic logic gates.

---

## Conclusion

This project provides a complete overview of the fundamental logic gates used in digital electronics. Mastering these gates is essential before progressing to universal gate implementations, combinational circuits, sequential circuits, and more advanced VLSI designs.