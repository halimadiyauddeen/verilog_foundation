 Half Adder – Structural Modeling

**Author:** Halima Diyauddeen

---

 Overview

This project implements a **Half Adder** using **Structural Modeling** in Verilog. A Half Adder adds two one-bit binary inputs (`a` and `b`) and produces a **Sum** output and a **Carry** output. The circuit is constructed using Verilog gate primitives.

---

 Objective

- Understand Structural Modeling in Verilog.
- Implement a Half Adder using logic gate primitives.
- Learn how arithmetic circuits are built from basic logic gates.
- Verify the design using randomly generated test vectors.

---

 Structural Implementation

The design uses the following Verilog gate primitives:

- `xor`
- `and`

The Sum output is produced using an XOR gate, while the Carry output is generated using an AND gate.

```verilog
xor (sum, a, b);
and (carry, a, b);
```

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

- Verilog `xor` gate primitive
- Verilog `and` gate primitive
- Structural Modeling

No `always` blocks, `assign` statements, or behavioral operators are used.

---

 Simulation

The testbench generates random input values using Verilog's `$random` system function and applies them using concatenation.

```verilog
repeat (10) begin
    {a, b} = $random;
    #10;
end
```

> **Note:** Concatenation (`{}`) is used because the Half Adder has two separate input signals (`a` and `b`). This allows both inputs to receive random values simultaneously, making the testbench concise, readable, and scalable.

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

- Understand Structural Modeling in Verilog.
- Build arithmetic circuits using gate primitives.
- Generate random test vectors using `$random`.
- Use concatenation (`{}`) to assign multiple input signals simultaneously.
- Verify Half Adder functionality through simulation.

---

 Conclusion

The **Half Adder** demonstrates how Structural Modeling constructs arithmetic circuits by interconnecting basic logic gate primitives. Using one XOR gate and one AND gate, the design correctly computes the Sum and Carry outputs for two one-bit binary inputs. This project serves as the foundation for implementing Full Adders and more complex arithmetic circuits.