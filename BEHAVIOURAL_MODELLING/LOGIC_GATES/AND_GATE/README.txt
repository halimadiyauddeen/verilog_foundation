 AND Gate – Behavioral Modeling

**Author:** Halima Diyauddeen

---

 Overview

This project implements an **AND Gate** using **Behavioral Modeling** in Verilog. Behavioral Modeling describes how a circuit functions using procedural statements inside an `always` block rather than gate primitives or continuous assignment statements.

---

 Objective

- Understand Behavioral Modeling in Verilog.
- Implement an AND gate using an `always @(*)` block.
- Verify the design using randomly generated test vectors.

---

 Behavioral Implementation

```verilog
always @(*) begin
    y = a & b;
end
```

The `always @(*)` block ensures the output is updated whenever any input changes, accurately modeling combinational logic.

---

 Truth Table

| A | B | Y |
|:-:|:-:|:-:|
| 0 | 0 | 0 |
| 0 | 1 | 0 |
| 1 | 0 | 0 |
| 1 | 1 | 1 |

---

 Project Files

| File | Description |
|------|-------------|
| `and_gate.v` | Design Under Test (DUT) |
| `and_gate_tb.v` | Testbench used to verify the DUT |
| `README.md` | Project documentation |

---

 Verilog Implementation

The design uses:

- `always @(*)`
- Blocking assignment (`=`)
- Bitwise AND operator (`&`)

No `assign` statements or gate primitives are used.

---

 Simulation

The testbench generates random input combinations using Verilog's `$random` system function and applies them using concatenation.

```verilog
repeat (10) begin
    {a, b} = $random;
    #10;
end
```

---

 Sample Output

```text
A=0 | B=1 | Y=0
A=1 | B=0 | Y=0
A=1 | B=1 | Y=1
A=0 | B=0 | Y=0
...
```

Because `$random` is used, the order of the input combinations may vary each time the simulation runs.

---

 Learning Outcomes

After completing this project, you should be able to:

- Understand Behavioral Modeling in Verilog.
- Use `always @(*)` for combinational circuits.
- Apply blocking assignments correctly.
- Generate random test vectors using `$random`.
- Use concatenation (`{}`) to assign multiple inputs simultaneously.

---

 Conclusion

The **AND Gate** demonstrates the fundamentals of Behavioral Modeling in Verilog. By describing the circuit's behavior with an `always @(*)` block and verifying it using randomly generated test vectors, this project provides a practical introduction to writing and testing combinational logic in a behavioral style.