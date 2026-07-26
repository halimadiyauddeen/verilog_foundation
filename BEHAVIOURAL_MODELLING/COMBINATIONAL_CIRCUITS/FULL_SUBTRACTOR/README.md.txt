 Full Subtractor – Behavioral Modeling

**Author:** Halima Diyauddeen

---

 Overview

This project implements a **Full Subtractor** using **Behavioral Modeling** in Verilog. A Full Subtractor subtracts two one-bit binary numbers along with a borrow input (`bin`) and produces a **Difference** output and a **Borrow** output.

---

 Objective

- Understand Behavioral Modeling in Verilog.
- Implement a Full Subtractor using an `always @(*)` block.
- Learn how logical operators are used to generate the Difference and Borrow outputs.
- Verify the design using randomly generated test vectors.

---

 Behavioral Implementation

```verilog
always @(*) begin
    diff   = a ^ b ^ bin;
    borrow = (~a & b) | (~a & bin) | (b & bin);
end
```

The `always @(*)` block continuously monitors the three input signals and updates the outputs whenever any input changes.

---

 Truth Table

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

 Project Files

| File | Description |
|------|-------------|
| `full_subtractor.v` | Design Under Test (DUT) |
| `full_subtractor_tb.v` | Testbench used to verify the DUT |
| `README.md` | Project documentation |

---

 Verilog Implementation

The design uses:

- `always @(*)`
- Blocking assignments (`=`)
- Bitwise operators (`^`, `~`, `&`, `|`)

No `assign` statements or gate primitives are used.

---

 Simulation

The testbench generates random input values using Verilog's `$random` system function and applies them using concatenation.

```verilog
repeat (10) begin
    {a, b, bin} = $random;
    #10;
end
```

> **Note:** Concatenation (`{}`) is used because the Full Subtractor has three separate input signals (`a`, `b`, and `bin`). This allows all inputs to receive random values simultaneously, making the testbench concise, readable, and scalable for larger designs.

---

 Sample Output

```text
A=0 | B=0 | Bin=0 | Diff=0 | Borrow=0
A=0 | B=1 | Bin=0 | Diff=1 | Borrow=1
A=1 | B=0 | Bin=1 | Diff=0 | Borrow=0
A=1 | B=1 | Bin=1 | Diff=1 | Borrow=1
...
```

Because `$random` is used, the order of the input combinations may vary each time the simulation runs.

---

 Learning Outcomes

After completing this project, you should be able to:

- Use `always @(*)` for combinational circuits.
- Implement a Full Subtractor using Behavioral Modeling.
- Apply blocking assignments correctly.
- Use bitwise operators to generate Difference and Borrow outputs.
- Generate random test vectors using `$random`.
- Use concatenation (`{}`) to assign multiple input signals simultaneously.
- Verify Full Subtractor functionality through simulation.

---

 Conclusion

The **Full Subtractor** demonstrates how Behavioral Modeling can be used to implement binary subtraction in Verilog. By combining an `always @(*)` block with bitwise operators, the design produces accurate Difference and Borrow outputs while maintaining clear, readable, and efficient Verilog code.