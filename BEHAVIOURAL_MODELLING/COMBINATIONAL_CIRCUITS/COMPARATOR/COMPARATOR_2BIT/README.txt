# 2-Bit Comparator – Behavioral Modeling

**Author:** Halima Diyauddeen

---

## Overview

This project implements a **2-Bit Comparator** using **Behavioral Modeling** in Verilog. The comparator compares two 2-bit binary numbers and produces three outputs indicating whether the first input is **greater than**, **equal to**, or **less than** the second input.

---

## Objective

- Understand Behavioral Modeling in Verilog.
- Design a 2-Bit Comparator using an `always @(*)` block.
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

The `always @(*)` block continuously compares the two 2-bit inputs and updates the outputs whenever either input changes.

---

## Truth Table

| A | B | Greater | Equal | Less |
|:--:|:--:|:-------:|:-----:|:----:|
| 00 | 00 |    0    |   1   |  0   |
| 01 | 10 |    0    |   0   |  1   |
| 10 | 01 |    1    |   0   |  0   |
| 11 | 11 |    0    |   1   |  0   |

---

## Project Files

| File | Description |
|------|-------------|
| `comparator_2bit.v` | Design Under Test (DUT) |
| `comparator_2bit_tb.v` | Testbench used to verify the DUT |
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

The testbench generates random 2-bit input combinations using Verilog's `$random` system function and applies them using concatenation.

```verilog
repeat (10) begin
    {a, b} = $random;
    #10;
end
```

---

## Sample Output

```text
A=01 | B=10 | Greater=0 | Equal=0 | Less=1
A=11 | B=01 | Greater=1 | Equal=0 | Less=0
A=10 | B=10 | Greater=0 | Equal=1 | Less=0
...
```

Because `$random` is used, the order of the input combinations may vary each time the simulation runs.

---

## Learning Outcomes

After completing this project, you should be able to:

- Use `always @(*)` for combinational circuits.
- Implement decision-making using `if`, `else if`, and `else`.
- Compare multi-bit binary values using relational operators.
- Generate random test vectors using `$random`.
- Verify comparator functionality through simulation.

---

## Conclusion

The **2-Bit Comparator** extends the concepts learned from the 1-Bit Comparator by comparing multi-bit binary numbers. It demonstrates how Behavioral Modeling and conditional statements can be used to implement more complex combinational logic while maintaining clear and readable Verilog code.