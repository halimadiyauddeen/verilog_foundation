 XOR Gate – Behavioral Modeling

**Author:** Halima Diyauddeen

---

 Overview

This project implements an **XOR Gate** using **Behavioral Modeling** in Verilog. Behavioral Modeling describes the functionality of a circuit using procedural statements inside an `always` block rather than gate primitives or continuous assignment statements.

---

 Objective

- Understand Behavioral Modeling in Verilog.
- Implement an XOR gate using an `always @(*)` block.
- Verify the design using randomly generated test vectors.

---

 Behavioral Implementation

```verilog
always @(*) begin
    y = a ^ b;
end
```

The `always @(*)` block ensures the output is updated whenever any input changes, accurately modeling combinational logic.

---

 Truth Table

| A | B | Y |
|:-:|:-:|:-:|
| 0 | 0 | 0 |
| 0 | 1 | 1 |
| 1 | 0 | 1 |
| 1 | 1 | 0 |

---

 Project Files

| File | Description |
|------|-------------|
| `xor_gate.v` | Design Under Test (DUT) |
| `xor_gate_tb.v` | Testbench used to verify the DUT |
| `README.md` | Project documentation |

---

 Verilog Implementation

The design uses:

- `always @(*)`
- Blocking assignment (`=`)
- Bitwise XOR operator (`^`)

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
A = 0 | B = 0 | Y = 0
A = 0 | B = 1 | Y = 1
A = 1 | B = 0 | Y = 1
A = 1 | B = 1 | Y = 0
```

---

 Learning Outcomes

After completing this project, you should be able to:

- Understand Behavioral Modeling in Verilog.
- Implement combinational logic using an `always @(*)` block.
- Use the bitwise XOR (`^`) operator.
- Verify logic gate functionality using predefined test vectors.
- Relate simulation results to the XOR gate truth table.

---

 Conclusion

The **XOR Gate** demonstrates how Behavioral Modeling can be used to describe combinational logic using an `always @(*)` block. By using the bitwise XOR (`^`) operator, the design produces a HIGH output only when the input signals are different. This project provides a foundation for implementing arithmetic circuits such as Half Adders and Full Adders, where the XOR gate plays a key role.