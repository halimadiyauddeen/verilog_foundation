 Half Adder – Behavioral Modeling

**Author:** Halima Diyauddeen

---

 Overview

This project implements a **Half Adder** using **Behavioral Modeling** in Verilog. A Half Adder adds two one-bit binary inputs (`a` and `b`) and produces a **Sum** output and a **Carry** output.

---

 Objective

- Understand Behavioral Modeling in Verilog.
- Implement a Half Adder using an `always @(*)` block.
- Learn how logical operators are used to generate the Sum and Carry outputs.
- Verify the design using randomly generated test vectors.

---

 Behavioral Implementation

```verilog
always @(*) begin
    sum   = a ^ b;
    carry = a & b;
end
```

The `always @(*)` block continuously monitors the two input signals and updates the outputs whenever either input changes.

---

 Truth Table

| A | B | Sum | Carry |
|:-:|:-:|:---:|:-----:|
| 0 | 0 | 0 | 0 |
| 0 | 1 | 1 | 0 |
| 1 | 0 | 1 | 0 |
| 1 | 1 | 0 | 1 |

---

 Project Files

| File | Description |
|------|-------------|
| `half_adder.v` | Design Under Test (DUT) |
| `half_adder_tb.v` | Testbench used to verify the DUT |
| `README.md` | Project documentation |

---

 Verilog Implementation

The design uses:

- `always @(*)`
- Blocking assignments (`=`)
- Bitwise operators (`^`, `&`)

No `assign` statements or gate primitives are used.

---

 Simulation

The testbench generates random input values using Verilog's `$random` system function and applies them using concatenation.

```verilog
repeat (10) begin
    {a, b} = $random;
    #10;
end
```

> **Note:** Concatenation (`{}`) is used because the Half Adder has two separate input signals (`a` and `b`). This allows both inputs to receive random values simultaneously, making the testbench concise, readable, and scalable for larger designs.

---

 Sample Output

```text
A=0 | B=0 | Sum=0 | Carry=0
A=0 | B=1 | Sum=1 | Carry=0
A=1 | B=0 | Sum=1 | Carry=0
A=1 | B=1 | Sum=0 | Carry=1
...
```

Because `$random` is used, the order of the input combinations may vary each time the simulation runs.

---

 Learning Outcomes

After completing this project, you should be able to:

- Use `always @(*)` for combinational circuits.
- Implement a Half Adder using Behavioral Modeling.
- Apply blocking assignments correctly.
- Use bitwise operators to generate Sum and Carry outputs.
- Generate random test vectors using `$random`.
- Use concatenation (`{}`) to assign multiple input signals simultaneously.
- Verify Half Adder functionality through simulation.

---

 Conclusion

The **Half Adder** demonstrates how Behavioral Modeling can be used to implement binary addition in Verilog. By combining an `always @(*)` block with bitwise operators, the design produces accurate Sum and Carry outputs while maintaining clear, readable, and efficient Verilog code.