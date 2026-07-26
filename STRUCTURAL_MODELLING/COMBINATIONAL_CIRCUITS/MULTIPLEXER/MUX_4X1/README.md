4×1 Multiplexer (MUX) – Structural Modeling

**Author:** Halima Diyauddeen

---

 Overview

This project implements a **4×1 Multiplexer (MUX)** using **Structural Modeling** in Verilog. A 4×1 MUX selects one of four data inputs (`i0`, `i1`, `i2`, or `i3`) and routes the selected input to the output (`y`) based on the values of the two select inputs (`s1` and `s0`). The circuit is built using Verilog gate primitives.

---

 Objective

- Understand Structural Modeling in Verilog.
- Implement a 4×1 MUX using gate primitives.
- Learn how multiplexers select one input from multiple data sources.
- Verify the design using randomly generated test vectors.

---

 Structural Implementation

The design uses the following Verilog gate primitives:

- `not`
- `and`
- `or`

The select lines are first inverted. Four AND gates generate the selection terms, and one OR gate combines them to produce the output.

```verilog
not (s1_bar, s1);
not (s0_bar, s0);

and (w0, i0, s1_bar, s0_bar);
and (w1, i1, s1_bar, s0);
and (w2, i2, s1, s0_bar);
and (w3, i3, s1, s0);

or (y, w0, w1, w2, w3);
```

---

 Truth Table

| S1 | S0 | Output (Y) |
|:--:|:--:|:----------:|
| 0 | 0 | I0 |
| 0 | 1 | I1 |
| 1 | 0 | I2 |
| 1 | 1 | I3 |

---

 Project Files

| File | Description |
|------|-------------|
| `mux_4x1.v` | Design Under Test (DUT) |
| `mux_4x1_tb.v` | Testbench used to verify the DUT |
| `README.md` | Project documentation |

---

 Verilog Implementation

The design uses:

- Verilog `not` gate primitive
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
    {i0, i1, i2, i3, s1, s0} = $random;
    #10;
end
```

> **Note:** Concatenation (`{}`) is used because the multiplexer has six separate input signals (`i0`, `i1`, `i2`, `i3`, `s1`, and `s0`). This allows all inputs to receive random values simultaneously, making the testbench concise, readable, and scalable.

---

 Sample Output

```text
I0=1 | I1=0 | I2=1 | I3=0 | S1=0 | S0=0 | Y=1
I0=1 | I1=0 | I2=1 | I3=0 | S1=0 | S0=1 | Y=0
I0=1 | I1=0 | I2=1 | I3=0 | S1=1 | S0=0 | Y=1
I0=1 | I1=0 | I2=1 | I3=0 | S1=1 | S0=1 | Y=0
...
```

Because `$random` is used, the order of the input combinations may vary each time the simulation runs.

---

 Learning Outcomes

After completing this project, you should be able to:

- Understand Structural Modeling in Verilog.
- Build a multiplexer using gate primitives.
- Connect logic gates using internal wires.
- Generate random test vectors using `$random`.
- Use concatenation (`{}`) to assign multiple input signals simultaneously.
- Verify multiplexer functionality through simulation.

---

 Conclusion

The **4×1 Multiplexer** demonstrates how Structural Modeling builds a combinational circuit by interconnecting basic logic gate primitives. Using two NOT gates, four AND gates, and one OR gate, the design correctly selects one of four input signals based on the select lines, illustrating the hardware implementation of a multiplexer.