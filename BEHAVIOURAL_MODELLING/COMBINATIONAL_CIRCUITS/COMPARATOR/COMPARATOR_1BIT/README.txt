# 1-Bit Comparator – Behavioral Modeling

**Author:** Halima Diyauddeen

---

## Overview

This project implements a **1-Bit Comparator** using **Behavioral Modeling** in Verilog. The comparator compares two one-bit binary inputs and produces three outputs indicating whether the first input is **greater than**, **equal to**, or **less than** the second input.

---

## Objective

- Understand Behavioral Modeling in Verilog.
- Design a 1-Bit Comparator using an `always @(*)` block.
- Verify the design using randomly generated test vectors.

---

## Behavioral Implementation

```verilog
always @(*) begin
    if (a > b) begin
        greater = 1'b1;
        equal   = 1'b0;
        less    = 1'b0;
    end
    else if (a == b) begin
        greater = 1'b0;
        equal   = 1'b1;
        less    = 1'b0;
    end
    else begin
        greater = 1'b0;
        equal   = 1'b0;
        less    = 1'b1;
    end
end
```

The `always @(*)` block continuously evaluates the inputs and updates the outputs whenever `a` or `b` changes.

---

## Truth Table

| A | B | Greater | Equal | Less |
|:-:|:-:|:-------:|:-----:|:----:|
| 0 | 0 |    0    |   1   |  0   |
| 0 | 1 |    0    |   0   |  1   |
| 1 | 0 |    1    |   0   |  0   |
| 1 | 1 |    0    |   1   |  0   |

---

## Project Files

| File | Description |
|------|-------------|
| `comparator_1bit.v` | Design Under Test (DUT) |
| `comparator_1bit_tb.v` | Testbench used to verify the DUT |
| `README.md` | Project documentation |

---

## Verilog Implementation

The design uses:

- `always @(*)`
- Blocking assignments (`=`)
- `if`, `else if`, and `else` statements
- Relational operators (`>`, `==`)

No `assign` statements or gate primitives are used.

---

## Simulation

The testbench generates random input combinations using Verilog's `$random` system function and applies them using concatenation.

```verilog
repeat (10) begin
    {a, b} = $random;
    #10;
end
```

---

## Sample Output

```text
A=0 | B=1 | Greater=0 | Equal=0 | Less=1
A=1 | B=0 | Greater=1 | Equal=0 | Less=0
A=1 | B=1 | Greater=0 | Equal=1 | Less=0
...
```

Because `$random` is used, the order of the input combinations may vary each time the simulation runs.

---

## Learning Outcomes

After completing this project, you should be able to:

- Use `always @(*)` for combinational circuits.
- Implement decision-making using `if`, `else if`, and `else`.
- Apply relational operators in Behavioral Modeling.
- Generate random test vectors using `$random`.
- Verify comparator functionality through simulation.

---

## Conclusion

The **1-Bit Comparator** demonstrates how Behavioral Modeling can be used to describe decision-making logic in Verilog. By comparing two one-bit inputs and generating the appropriate outputs, this project introduces the use of conditional statements for implementing combinational circuits.