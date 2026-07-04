# Half Subtractor – Behavioral Modeling

**Author:** Halima Diyauddeen

---

## Overview

This project implements a **Half Subtractor** using **Behavioral Modeling** in Verilog. A Half Subtractor subtracts one one-bit binary number (`b`) from another (`a`) and produces a **Difference** output and a **Borrow** output.

---

## Objective

- Understand Behavioral Modeling in Verilog.
- Implement a Half Subtractor using an `always @(*)` block.
- Learn how logical operators are used to generate the Difference and Borrow outputs.
- Verify the design using randomly generated test vectors.

---

## Behavioral Implementation

```verilog
always @(*) begin
    diff   = a ^ b;
    borrow = ~a & b;
end
```

The `always @(*)` block continuously monitors the two input signals and updates the outputs whenever either input changes.

---

## Truth Table

| A | B | Diff | Borrow |
|:-:|:-:|:----:|:------:|
| 0 | 0 | 0 | 0 |
| 0 | 1 | 1 | 1 |
| 1 | 0 | 1 | 0 |
| 1 | 1 | 0 | 0 |

---

## Project Files

| File | Description |
|------|-------------|
| `half_subtractor.v` | Design Under Test (DUT) |
| `half_subtractor_tb.v` | Testbench used to verify the DUT |
| `README.md` | Project documentation |

---

## Verilog Implementation

The design uses:

- `always @(*)`
- Blocking assignments (`=`)
- Bitwise operators (`^`, `~`, `&`)

No `assign` statements or gate primitives are used.

---

## Simulation

The testbench generates random input values using Verilog's `$random` system function and applies them using concatenation.

```verilog
repeat (10) begin
    {a, b} = $random;
    #10;
end
```

> **Note:** Concatenation (`{}`) is used because the Half Subtractor has two separate input signals (`a` and `b`). This allows both inputs to receive random values simultaneously, making the testbench concise, readable, and scalable for larger designs.

---

## Sample Output

```text
A=0 | B=0 | Diff=0 | Borrow=0
A=0 | B=1 | Diff=1 | Borrow=1
A=1 | B=0 | Diff=1 | Borrow=0
A=1 | B=1 | Diff=0 | Borrow=0
...
```

Because `$random` is used, the order of the input combinations may vary each time the simulation runs.

---

## Learning Outcomes

After completing this project, you should be able to:

- Use `always @(*)` for combinational circuits.
- Implement a Half Subtractor using Behavioral Modeling.
- Apply blocking assignments correctly.
- Use bitwise operators to generate Difference and Borrow outputs.
- Generate random test vectors using `$random`.
- Use concatenation (`{}`) to assign multiple input signals simultaneously.
- Verify Half Subtractor functionality through simulation.

---

## Conclusion

The **Half Subtractor** demonstrates how Behavioral Modeling can be used to implement binary subtraction in Verilog. By combining an `always @(*)` block with bitwise operators, the design produces accurate Difference and Borrow outputs while maintaining clear, readable, and efficient Verilog code.