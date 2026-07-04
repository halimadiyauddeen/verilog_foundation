# Half Adder – Gate-Level Modeling

**Author:** Halima Diyauddeen

---

## Overview

This project implements a **Half Adder** using **Verilog Gate-Level Modeling**. A Half Adder is a combinational circuit that adds two one-bit binary numbers and produces two outputs: **Sum** and **Carry**.

---

## Objective

- Understand the operation of a Half Adder.
- Implement a Half Adder using Verilog gate primitives.
- Verify the design using a dedicated testbench.

---

## Gate Primitives Used

```verilog
xor (sum, a, b);
and (carry, a, b);
```

The `xor` gate generates the **Sum** output, while the `and` gate generates the **Carry** output.

---

## Truth Table

| A | B | Sum | Carry |
|:-:|:-:|:---:|:-----:|
| 0 | 0 |  0  |   0   |
| 0 | 1 |  1  |   0   |
| 1 | 0 |  1  |   0   |
| 1 | 1 |  0  |   1   |

---

## Project Files

| File | Description |
|------|-------------|
| `half_adder.v` | Design Under Test (DUT) |
| `half_adder_tb.v` | Testbench used to verify the DUT |
| `README.md` | Project documentation |

---

## Verilog Implementation

The Half Adder is implemented using Verilog's built-in gate primitives:

- `xor`
- `and`

No `assign` statements or behavioral constructs are used, making this a true Gate-Level Modeling implementation.

---

## Simulation

The testbench applies all four possible input combinations of `A` and `B` and displays the corresponding **Sum** and **Carry** values using the `$monitor` system task.

---

## Expected Output

```text
A=0 | B=0 | Sum=0 | Carry=0
A=0 | B=1 | Sum=1 | Carry=0
A=1 | B=0 | Sum=1 | Carry=0
A=1 | B=1 | Sum=0 | Carry=1
```

---

## Learning Outcomes

After completing this project, you should be able to:

- Understand the operation of a Half Adder.
- Implement arithmetic circuits using Verilog gate primitives.
- Design combinational circuits using Gate-Level Modeling.
- Verify Half Adder functionality through simulation.

---

## Conclusion

The **Half Adder** is one of the fundamental combinational circuits in digital electronics. It adds two one-bit binary inputs and produces a **Sum** and a **Carry** output. It serves as the basic building block for more advanced arithmetic circuits, including the Full Adder and Ripple Carry Adder.