 3-Bit Comparator – Structural Modeling

**Author:** Halima Diyauddeen

---

 Overview

This project implements a **3-Bit Comparator** using **Structural Modeling** in Verilog. A comparator determines whether one binary number is greater than, equal to, or less than another binary number. In Structural Modeling, the comparator is built by interconnecting basic logic gate primitives such as `not`, `and`, `or`, and `xnor`.

---

 Objective

- Understand Structural Modeling in Verilog.
- Implement a 3-bit comparator using gate primitives.
- Learn how larger combinational circuits are built from basic logic gates.
- Verify the design using randomly generated test vectors.

---

 Structural Implementation

The design uses the following Verilog gate primitives:

- `not`
- `and`
- `or`
- `xnor`

The comparison begins with the **Most Significant Bit (MSB)** (`a2` and `b2`). If the MSBs are equal, the next bit is compared, followed by the Least Significant Bit (LSB). Internal wires are used to connect intermediate signals and determine the final outputs.

---

 Truth Table

A complete truth table contains **64 input combinations (8 × 8)**, making it too large to include here.

 Example Cases

| A | B | Greater | Equal | Less |
|:--:|:--:|:------:|:-----:|:----:|
| 000 | 000 | 0 | 1 | 0 |
| 001 | 000 | 1 | 0 | 0 |
| 010 | 011 | 0 | 0 | 1 |
| 101 | 100 | 1 | 0 | 0 |
| 111 | 111 | 0 | 1 | 0 |

---

 Project Files

| File | Description |
|------|-------------|
| `comparator_3bit.v` | Design Under Test (DUT) |
| `comparator_3bit_tb.v` | Testbench used to verify the DUT |
| `README.md` | Project documentation |

---

 Verilog Implementation

The design uses:

- Verilog `not` gate primitive
- Verilog `and` gate primitive
- Verilog `or` gate primitive
- Verilog `xnor` gate primitive
- Internal wires
- Structural Modeling

No `always` blocks, `assign` statements, or behavioral operators are used.

---

 Simulation

The testbench generates random input values using Verilog's `$random` system function and applies them using concatenation.

```verilog
repeat (10) begin
    {a2, a1, a0, b2, b1, b0} = $random;
    #10;
end
```

> **Note:** Concatenation (`{}`) is used because the comparator has six separate input signals (`a2`, `a1`, `a0`, `b2`, `b1`, and `b0`). This allows all inputs to receive random values simultaneously, making the testbench concise, readable, and scalable for larger designs.

---

 Sample Output

```text
A=000 | B=000 | Greater=0 | Equal=1 | Less=0
A=001 | B=000 | Greater=1 | Equal=0 | Less=0
A=010 | B=011 | Greater=0 | Equal=0 | Less=1
A=101 | B=100 | Greater=1 | Equal=0 | Less=0
A=111 | B=111 | Greater=0 | Equal=1 | Less=0
...
```

Because `$random` is used, the order of the input combinations may vary each time the simulation runs.

---

 Learning Outcomes

After completing this project, you should be able to:

- Understand Structural Modeling in Verilog.
- Implement a multi-bit comparator using gate primitives.
- Connect logic gates using internal wires.
- Understand hierarchical comparison from the Most Significant Bit (MSB) to the Least Significant Bit (LSB).
- Generate random test vectors using `$random`.
- Use concatenation (`{}`) to assign multiple input signals simultaneously.
- Verify comparator functionality through simulation.

---

 Conclusion

The **3-Bit Comparator** demonstrates how Structural Modeling can be used to build a larger combinational circuit by interconnecting basic logic gate primitives. By comparing the Most Significant Bit first and proceeding toward the Least Significant Bit only when necessary, the design efficiently determines whether one 3-bit binary number is greater than, equal to, or less than another. This project reinforces the concept of building complex digital systems from simple hardware components.