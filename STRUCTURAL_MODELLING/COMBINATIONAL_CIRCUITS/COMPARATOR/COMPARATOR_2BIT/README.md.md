 2-Bit Comparator – Structural Modeling

**Author:** Halima Diyauddeen

---

 Overview

This project implements a **2-Bit Comparator** using **Structural Modeling** in Verilog. The comparator determines whether a 2-bit input `A` is greater than, equal to, or less than another 2-bit input `B` by interconnecting basic logic gate primitives.

---

 Objective

- Understand Structural Modeling in Verilog.
- Build a 2-bit comparator using gate primitives.
- Learn how complex combinational circuits are constructed from basic logic gates.
- Verify the design using randomly generated test vectors.

---

 Structural Implementation

The design uses the following gate primitives:

- `not`
- `and`
- `or`
- `xnor`

Internal wires are used to connect intermediate signals and produce the final comparison outputs.

---

 Truth Table

| A | B | Greater | Equal | Less |
|:-:|:-:|:-------:|:-----:|:----:|
| 00 | 00 | 0 | 1 | 0 |
| 00 | 01 | 0 | 0 | 1 |
| 01 | 00 | 1 | 0 | 0 |
| 01 | 01 | 0 | 1 | 0 |
| ... | ... | ... | ... | ... |

---

 Project Files

| File | Description |
|------|-------------|
| `comparator_2bit.v` | Design Under Test (DUT) |
| `comparator_2bit_tb.v` | Testbench used to verify the DUT |
| `README.md` | Project documentation |

---

 Verilog Implementation

The design uses:

- `not`
- `and`
- `or`
- `xnor`
- Internal wires
- Structural Modeling

No `always` blocks, `assign` statements, or behavioral operators are used.

---

 Simulation

The testbench generates random values using Verilog's `$random` system function and applies them using concatenation.

```verilog
repeat (10) begin
    {a1, a0, b1, b0} = $random;
    #10;
end
```

> **Note:** Concatenation (`{}`) is used because the comparator has four separate input signals (`a1`, `a0`, `b1`, and `b0`). This allows all inputs to receive random values simultaneously, making the testbench concise and scalable.

---

 Sample Output

```text
A=10 | B=01 | Greater=1 | Equal=0 | Less=0
A=01 | B=01 | Greater=0 | Equal=1 | Less=0
A=00 | B=11 | Greater=0 | Equal=0 | Less=1
...
```

Because `$random` is used, the order of the input combinations may vary each time the simulation runs.

---

 Learning Outcomes

After completing this project, you should be able to:

- Implement a comparator using Structural Modeling.
- Connect logic gate primitives using internal wires.
- Understand hierarchical combinational circuit design.
- Generate random test vectors using `$random`.
- Use concatenation (`{}`) to assign multiple input signals simultaneously.
- Verify comparator functionality through simulation.

---

 Conclusion

The **2-Bit Comparator** demonstrates how Structural Modeling connects basic logic gate primitives to form a complete combinational circuit. This approach closely represents real digital hardware and provides a strong foundation for designing more complex systems.