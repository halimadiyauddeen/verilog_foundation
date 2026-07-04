# 4-Bit Ripple Carry Adder – Behavioral Modeling

**Author:** Halima Diyauddeen

---

## Overview

This project implements a **4-Bit Ripple Carry Adder** using **Behavioral Modeling** in Verilog. A Ripple Carry Adder adds two 4-bit binary numbers together along with an optional carry input (`cin`). The result is a 4-bit sum and a carry-out (`cout`).

Unlike gate-level or dataflow implementations, Behavioral Modeling describes the operation at a higher level by using Verilog's arithmetic operators.

---

## Objective

- Understand Behavioral Modeling in Verilog.
- Implement a 4-Bit Ripple Carry Adder using an `always @(*)` block.
- Learn how Verilog arithmetic operators simplify hardware descriptions.
- Verify the design using randomly generated test vectors.

---

## Behavioral Implementation

```verilog
always @(*) begin
    {cout, sum} = a + b + cin;
end
```

The `always @(*)` block continuously monitors all input signals. Whenever `a`, `b`, or `cin` changes, the addition is performed and the result is assigned to the concatenated outputs `{cout, sum}`.

---

## Truth Table

Since this is a **4-bit adder**, it has **512 possible input combinations (16 × 16 × 2)**. Therefore, a complete truth table is impractical.

### Example Cases

| A | B | Cin | Sum | Cout |
|:----:|:----:|:---:|:----:|:----:|
| 0000 | 0000 | 0 | 0000 | 0 |
| 0011 | 0001 | 0 | 0100 | 0 |
| 0101 | 0110 | 0 | 1011 | 0 |
| 1111 | 0001 | 0 | 0000 | 1 |
| 1111 | 1111 | 1 | 1111 | 1 |

---

## Project Files

| File | Description |
|------|-------------|
| `ripple_carry_adder.v` | Design Under Test (DUT) |
| `ripple_carry_adder_tb.v` | Testbench used to verify the DUT |
| `README.md` | Project documentation |

---

## Verilog Implementation

The design uses:

- `always @(*)`
- Blocking assignments (`=`)
- Arithmetic operator (`+`)
- Concatenation (`{}`)

No `assign` statements or gate primitives are used.

---

## Simulation

The testbench generates random values for both 4-bit operands and the carry input using Verilog's `$random` system function.

```verilog
repeat (10) begin
    {a, b, cin} = $random;
    #10;
end
```

> **Note:** Concatenation (`{}`) is used because the Ripple Carry Adder has three separate inputs: two 4-bit operands (`a` and `b`) and a 1-bit carry input (`cin`). Assigning them together with `$random` creates a compact and scalable testbench while exercising a wide range of input combinations.

---

## Sample Output

```text
A=0011 | B=0101 | Cin=0 | Sum=1000 | Cout=0
A=1111 | B=0001 | Cin=0 | Sum=0000 | Cout=1
A=1010 | B=0110 | Cin=1 | Sum=0001 | Cout=1
A=0000 | B=1111 | Cin=0 | Sum=1111 | Cout=0
...
```

Because `$random` is used, the order of the input combinations may vary each time the simulation runs.

---

## Learning Outcomes

After completing this project, you should be able to:

- Use `always @(*)` for combinational circuits.
- Implement a multi-bit adder using Behavioral Modeling.
- Use Verilog's arithmetic operator (`+`) to describe addition.
- Apply blocking assignments correctly.
- Generate random test vectors using `$random`.
- Use concatenation (`{}`) to assign multiple input signals simultaneously.
- Verify multi-bit arithmetic circuits through simulation.

---

## Conclusion

The **4-Bit Ripple Carry Adder** demonstrates how Behavioral Modeling simplifies the implementation of arithmetic circuits. By using Verilog's built-in arithmetic operators within an `always @(*)` block, the design becomes shorter, easier to understand, and more maintainable while accurately performing 4-bit binary addition.