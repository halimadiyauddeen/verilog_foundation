# Full Subtractor – Structural Modeling

**Author:** Halima Diyauddeen

---

## Overview

This project implements a **Full Subtractor** using **Structural Modeling** in Verilog. A Full Subtractor subtracts two one-bit binary inputs (`a` and `b`) together with a borrow input (`bin`) and produces a **Difference** output and a **Borrow** output. The circuit is constructed using Verilog gate primitives.

---

## Objective

- Understand Structural Modeling in Verilog.
- Implement a Full Subtractor using logic gate primitives.
- Learn how subtraction circuits are built from basic logic gates.
- Verify the design using randomly generated test vectors.

---

## Structural Implementation

The design uses the following Verilog gate primitives:

- `xor`
- `not`
- `and`
- `or`

The Difference output is produced using two XOR gates, while the Borrow output is generated using one NOT gate, three AND gates, and one OR gate.

```verilog
xor (xor1, a, b);
xor (diff, xor1, bin);

not (na, a);

and (and1, na, b);
and (and2, na, bin);
and (and3, b, bin);

or (borrow, and1, and2, and3);
```

---

## Truth Table

| A | B | Bin | Diff | Borrow |
|:-:|:-:|:---:|:----:|:------:|
| 0 | 0 | 0 | 0 | 0 |
| 0 | 0 | 1 | 1 | 1 |
| 0 | 1 | 0 | 1 | 1 |
| 0 | 1 | 1 | 0 | 1 |
| 1 | 0 | 0 | 1 | 0 |
| 1 | 0 | 1 | 0 | 0 |
| 1 | 1 | 0 | 0 | 0 |
| 1 | 1 | 1 | 1 | 1 |

---

## Project Files

| File | Description |
|------|-------------|
| `full_subtractor.v` | Design Under Test (DUT) |
| `full_subtractor_tb.v` | Testbench used to verify the DUT |
| `README.md` | Project documentation |

---

## Verilog Implementation

The design uses:

- Verilog `xor` gate primitive
- Verilog `not` gate primitive
- Verilog `and` gate primitive
- Verilog `or` gate primitive
- Internal wires
- Structural Modeling

No `always` blocks, `assign` statements, or behavioral operators are used.

---

## Simulation

The testbench generates random input values using Verilog's `$random` system function and applies them using concatenation.

```verilog
repeat (10) begin
    {a, b, bin} = $random;
    #10;
end
```

> **Note:** Concatenation (`{}`) is used because the Full Subtractor has three separate input signals (`a`, `b`, and `bin`). This allows all inputs to receive random values simultaneously, making the testbench concise, readable, and scalable.

---

## Sample Output

```text
A=0 | B=0 | Bin=0 | Diff=0 | Borrow=0
A=0 | B=1 | Bin=0 | Diff=1 | Borrow=1
A=1 | B=0 | Bin=1 | Diff=0 | Borrow=0
A=1 | B=1 | Bin=1 | Diff=1 | Borrow=1
...
```

Because `$random` is used, the order of the input combinations may vary each time the simulation runs.

---

## Learning Outcomes

After completing this project, you should be able to:

- Understand Structural Modeling in Verilog.
- Build subtraction circuits using gate primitives.
- Connect logic gates using internal wires.
- Generate random test vectors using `$random`.
- Use concatenation (`{}`) to assign multiple input signals simultaneously.
- Verify Full Subtractor functionality through simulation.

---

## Conclusion

The **Full Subtractor** demonstrates how Structural Modeling builds arithmetic circuits by interconnecting basic logic gate primitives. Using XOR, NOT, AND, and OR gates, the design accurately computes the Difference and Borrow outputs, illustrating how binary subtraction can be implemented using simple hardware components.