 Full Adder – Behavioral Modeling

**Author:** Halima Diyauddeen

---

 Overview

This project implements a **Full Adder** using **Behavioral Modeling** in Verilog. A Full Adder adds three one-bit binary inputs (`a`, `b`, and `cin`) and produces a **Sum** output and a **Carry** output.

---

 Objective

- Understand Behavioral Modeling in Verilog.
- Implement a Full Adder using an `always @(*)` block.
- Learn how arithmetic and logical operators are used to generate the Sum and Carry outputs.
- Verify the design using randomly generated test vectors.

---

 Behavioral Implementation

```verilog
always @(*) begin
    sum   = a ^ b ^ cin;
    carry = (a & b) | (b & cin) | (a & cin);
end
```

The `always @(*)` block continuously monitors the three input signals and updates the outputs whenever any input changes.

---

 Truth Table

| A | B | Cin | Sum | Carry |
|:-:|:-:|:---:|:---:|:-----:|
| 0 | 0 | 0 | 0 | 0 |
| 0 | 0 | 1 | 1 | 0 |
| 0 | 1 | 0 | 1 | 0 |
| 0 | 1 | 1 | 0 | 1 |
| 1 | 0 | 0 | 1 | 0 |
| 1 | 0 | 1 | 0 | 1 |
| 1 | 1 | 0 | 0 | 1 |
| 1 | 1 | 1 | 1 | 1 |

---

 Project Files

| File | Description |
|------|-------------|
| `full_adder.v` | Design Under Test (DUT) |
| `full_adder_tb.v` | Testbench used to verify the DUT |
| `README.md` | Project documentation |

---

 Verilog Implementation

The design uses:

- `always @(*)`
- Blocking assignments (`=`)
- Bitwise operators (`^`, `&`, `|`)

No `assign` statements or gate primitives are used.

---

 Simulation

The testbench generates random input values using Verilog's `$random` system function and applies them using concatenation.

```verilog
repeat (10) begin
    {a, b, cin} = $random;
    #10;
end
```

> **Note:** Concatenation (`{}`) is used because the Full Adder has three separate input signals (`a`, `b`, and `cin`). This allows all inputs to receive random values simultaneously, making the testbench concise, readable, and scalable for larger designs.

---

 Sample Output

```text
A=0 | B=0 | Cin=0 | Sum=0 | Carry=0
A=0 | B=1 | Cin=1 | Sum=0 | Carry=1
A=1 | B=0 | Cin=1 | Sum=0 | Carry=1
A=1 | B=1 | Cin=1 | Sum=1 | Carry=1
...
```

Because `$random` is used, the order of the input combinations may vary each time the simulation runs.

---

 Learning Outcomes

After completing this project, you should be able to:

- Use `always @(*)` for combinational circuits.
- Implement a Full Adder using Behavioral Modeling.
- Apply blocking assignments correctly.
- Use bitwise operators to generate arithmetic outputs.
- Generate random test vectors using `$random`.
- Use concatenation (`{}`) to assign multiple input signals simultaneously.
- Verify Full Adder functionality through simulation.

---

 Conclusion

The **Full Adder** demonstrates how Behavioral Modeling can be used to implement binary addition in Verilog. By combining an `always @(*)` block with bitwise operators, the design produces accurate Sum and Carry outputs while maintaining clear, readable, and efficient Verilog code.