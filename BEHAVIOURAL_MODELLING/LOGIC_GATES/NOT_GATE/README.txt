# NOT Gate – Behavioral Modeling

**Author:** Halima Diyauddeen

---

## Overview

This project implements a **NOT Gate** using **Behavioral Modeling** in Verilog. Behavioral Modeling describes the functionality of a circuit using procedural statements inside an `always` block rather than gate primitives or continuous assignment statements.

---

## Objective

- Understand Behavioral Modeling in Verilog.
- Implement a NOT gate using an `always @(*)` block.
- Verify the design using randomly generated test vectors.

---

## Behavioral Implementation

```verilog
always @(*) begin
    y = ~a;
end
```

The `always @(*)` block ensures the output is updated whenever the input changes, accurately modeling combinational logic.

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

The design uses:

- `always @(*)`
- Blocking assignment (`=`)
- Bitwise NOT operator (`~`)

No `assign` statements or gate primitives are used.

---

## Simulation

The testbench generates random input values using Verilog's `$random` system function.

```verilog
repeat (10) begin
    a = $random;
    #10;
end
```

---

## Sample Output

```text
A=0 | Y=1
A=1 | Y=0
...
```

Because `$random` is used, the order of the input values may vary each time the simulation runs.

---

## Learning Outcomes

After completing this project, you should be able to:

- Understand Behavioral Modeling in Verilog.
- Use `always @(*)` for combinational circuits.
- Apply blocking assignments correctly.
- Generate random test vectors using `$random`.
- Simulate and verify inverter functionality.

---

## Conclusion

The **NOT Gate** demonstrates the simplest form of combinational logic using Behavioral Modeling in Verilog. It introduces the use of the bitwise NOT operator within an `always @(*)` block and reinforces the fundamentals of describing circuit behavior through procedural code.