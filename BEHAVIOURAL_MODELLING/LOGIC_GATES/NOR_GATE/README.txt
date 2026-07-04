# NOR Gate – Behavioral Modeling

**Author:** Halima Diyauddeen

---

## Overview

This project implements a **NOR Gate** using **Behavioral Modeling** in Verilog. Behavioral Modeling describes the functionality of a circuit using procedural statements inside an `always` block rather than gate primitives or continuous assignment statements.

---

## Objective

- Understand Behavioral Modeling in Verilog.
- Implement a NOR gate using an `always @(*)` block.
- Verify the design using randomly generated test vectors.

---

## Behavioral Implementation

```verilog
always @(*) begin
    y = ~(a | b);
end
```

The `always @(*)` block ensures the output is updated whenever any input changes, accurately modeling combinational logic.

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

The design uses:

- `always @(*)`
- Blocking assignment (`=`)
- Bitwise OR operator (`|`)
- Bitwise NOT operator (`~`)

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
A=0 | B=0 | Y=1
A=0 | B=1 | Y=0
A=1 | B=0 | Y=0
A=1 | B=1 | Y=0
...
```

Because `$random` is used, the order of the input combinations may vary each time the simulation runs.

---

## Learning Outcomes

After completing this project, you should be able to:

- Understand Behavioral Modeling in Verilog.
- Use `always @(*)` for combinational circuits.
- Apply blocking assignments correctly.
- Generate random test vectors using `$random`.
- Use concatenation (`{}`) to assign multiple inputs simultaneously.

---

## Conclusion

The **NOR Gate** demonstrates how combinational logic can be described using Behavioral Modeling in Verilog. By implementing the logic inside an `always @(*)` block and verifying it with randomly generated test vectors, this project reinforces the principles of behavioral design and effective simulation techniques.