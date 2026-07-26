Full Adder – Structural Modeling

**Author:** Halima Diyauddeen

---

 Overview

This project implements a **Full Adder** using **Structural Modeling** in Verilog. A Full Adder adds three one-bit binary inputs (`a`, `b`, and `cin`) and produces a **Sum** output and a **Carry** output. The circuit is constructed using Verilog gate primitives.

---

 Objective

- Understand Structural Modeling in Verilog.
- Implement a Full Adder using logic gate primitives.
- Learn how arithmetic circuits are built from basic logic gates.
- Verify the design using randomly generated test vectors.

---

 Structural Implementation

The design uses the following Verilog gate primitives:

- `xor`
- `and`
- `or`

The Sum output is produced using two XOR gates, while the Carry output is generated using three AND gates followed by one OR gate.

```verilog
xor (xor1, a, b);
xor (sum, xor1, cin);

and (and1, a, b);
and (and2, a, cin);
and (and3, b, cin);

or (carry, and1, and2, and3);
```

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

- Verilog `xor` gate primitive
- Verilog `and` gate primitive
- Verilog `or` gate primitive
- Internal wires
- Structural Modeling

No `always` blocks, `assign` statements, or behavioral operators are used.

---

 Simulation

The testbench generates random input values using Verilog's `$random` system function and applies them using concatenation.

```verilog
repeat (10) begin
    {a, b, cin} = $random;
    #10;
end
```

> **Note:** Concatenation (`{}`) is used because the Full Adder has three separate input signals (`a`, `b`, and `cin`). This allows all inputs to receive random values simultaneously, making the testbench concise, readable, and scalable.

---

 Sample Output

```text
A=0 | B=0 | Cin=0 | Sum=0 | Carry=0
A=0 | B=1 | Cin=0 | Sum=1 | Carry=0
A=1 | B=0 | Cin=1 | Sum=0 | Carry=1
A=1 | B=1 | Cin=1 | Sum=1 | Carry=1
...
```

Because `$random` is used, the order of the input combinations may vary each time the simulation runs.

---

 Learning Outcomes

After completing this project, you should be able to:

- Understand Structural Modeling in Verilog.
- Build arithmetic circuits using gate primitives.
- Connect logic gates using internal wires.
- Generate random test vectors using `$random`.
- Use concatenation (`{}`) to assign multiple input signals simultaneously.
- Verify Full Adder functionality through simulation.

---

 Conclusion

The **Full Adder** demonstrates how Structural Modeling constructs arithmetic circuits by interconnecting basic logic gate primitives. Using XOR, AND, and OR gates, the design accurately computes the Sum and Carry outputs, illustrating how complex digital circuits are built from simple hardware components.