 1×4 DEMUX – Structural Modeling

**Author:** Halima Diyauddeen

---

 Overview

This project implements a **1×4 Demultiplexer (DEMUX)** using **Structural Modeling** in Verilog. A 1×4 DEMUX routes a single data input (`d`) to one of four outputs (`y0`, `y1`, `y2`, or `y3`) based on the values of the two select inputs (`s1` and `s0`). The circuit is constructed using Verilog gate primitives.

---

 Objective

- Understand Structural Modeling in Verilog.
- Implement a 1×4 DEMUX using gate primitives.
- Learn how a DEMUX routes data to multiple outputs.
- Verify the design using randomly generated test vectors.

---

 Structural Implementation

The design uses the following Verilog gate primitives:

- `not`
- `and`

The two select lines are first inverted, then four AND gates generate the appropriate output based on the select inputs.

```verilog
not (s1_bar, s1);
not (s0_bar, s0);

and (y0, d, s1_bar, s0_bar);
and (y1, d, s1_bar, s0);
and (y2, d, s1, s0_bar);
and (y3, d, s1, s0);
```

---

 Truth Table

| D | S1 | S0 | Y0 | Y1 | Y2 | Y3 |
|:-:|:--:|:--:|:--:|:--:|:--:|:--:|
| 0 | 0 | 0 | 0 | 0 | 0 | 0 |
| 1 | 0 | 0 | 1 | 0 | 0 | 0 |
| 1 | 0 | 1 | 0 | 1 | 0 | 0 |
| 1 | 1 | 0 | 0 | 0 | 1 | 0 |
| 1 | 1 | 1 | 0 | 0 | 0 | 1 |

---

 Project Files

| File | Description |
|------|-------------|
| `demux_1x4.v` | Design Under Test (DUT) |
| `demux_1x4_tb.v` | Testbench used to verify the DUT |
| `README.md` | Project documentation |

---

 Verilog Implementation

The design uses:

- Verilog `not` gate primitive
- Verilog `and` gate primitive
- Internal wires
- Structural Modeling

No `always` blocks, `assign` statements, or behavioral operators are used.

---

 Simulation

The testbench generates random input values using Verilog's `$random` system function and applies them using concatenation.

```verilog
repeat (10) begin
    {d, s1, s0} = $random;
    #10;
end
```

> **Note:** Concatenation (`{}`) is used because the DEMUX has three separate input signals (`d`, `s1`, and `s0`). This allows all inputs to receive random values simultaneously, making the testbench concise, readable, and scalable.

---

 Sample Output

```text
D=1 | S1=0 | S0=0 | Y0=1 | Y1=0 | Y2=0 | Y3=0
D=1 | S1=0 | S0=1 | Y0=0 | Y1=1 | Y2=0 | Y3=0
D=1 | S1=1 | S0=0 | Y0=0 | Y1=0 | Y2=1 | Y3=0
D=1 | S1=1 | S0=1 | Y0=0 | Y1=0 | Y2=0 | Y3=1
...
```

Because `$random` is used, the order of the input combinations may vary each time the simulation runs.

---

 Learning Outcomes

After completing this project, you should be able to:

- Understand Structural Modeling in Verilog.
- Build a multi-output DEMUX using gate primitives.
- Connect logic gates using internal wires.
- Generate random test vectors using `$random`.
- Use concatenation (`{}`) to assign multiple input signals simultaneously.
- Verify DEMUX functionality through simulation.

---

 Conclusion

The **1×4 DEMUX** demonstrates how Structural Modeling builds a larger combinational circuit by interconnecting basic logic gate primitives. Using two NOT gates and four AND gates, the design accurately routes a single data input to one of four outputs based on the select signals, reinforcing the principles of hardware construction from simple digital components.