 8×1 Multiplexer (MUX) – Structural Modeling

**Author:** Halima Diyauddeen

---

 Overview

This project implements an **8×1 Multiplexer (MUX)** using **Structural Modeling** in Verilog. An 8×1 MUX selects one of eight data inputs (`i0` through `i7`) and routes the selected input to the output (`y`) based on the values of the three select inputs (`s2`, `s1`, and `s0`). The circuit is built using Verilog gate primitives.

---

 Objective

- Understand Structural Modeling in Verilog.
- Implement an 8×1 MUX using gate primitives.
- Learn how multiplexers select one input from multiple data sources.
- Verify the design using randomly generated test vectors.

---

 Structural Implementation

The design uses the following Verilog gate primitives:

- `not`
- `and`
- `or`

The three select lines are first inverted. Eight AND gates generate the selection terms, and one OR gate combines them to produce the output.

---

 Truth Table

| S2 | S1 | S0 | Output (Y) |
|:--:|:--:|:--:|:----------:|
| 0 | 0 | 0 | I0 |
| 0 | 0 | 1 | I1 |
| 0 | 1 | 0 | I2 |
| 0 | 1 | 1 | I3 |
| 1 | 0 | 0 | I4 |
| 1 | 0 | 1 | I5 |
| 1 | 1 | 0 | I6 |
| 1 | 1 | 1 | I7 |

---

 Project Files

| File | Description |
|------|-------------|
| `mux_8x1.v` | Design Under Test (DUT) |
| `mux_8x1_tb.v` | Testbench used to verify the DUT |
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
    {i0, i1, i2, i3, i4, i5, i6, i7, s2, s1, s0} = $random;
    #10;
end
```

> **Note:** Concatenation (`{}`) is used because the multiplexer has eleven separate input signals (`i0`–`i7`, `s2`, `s1`, and `s0`). This allows all inputs to receive random values simultaneously, making the testbench concise, readable, and scalable.

---

 Sample Output

```text
I0=1 | I1=0 | I2=1 | I3=0 | I4=1 | I5=0 | I6=1 | I7=0 | S2=1 | S1=0 | S0=1 | Y=0
I0=1 | I1=0 | I2=1 | I3=0 | I4=1 | I5=0 | I6=1 | I7=0 | S2=0 | S1=1 | S0=0 | Y=1
...
```

Because `$random` is used, the order of the input combinations may vary each time the simulation runs.

---

## Learning Outcomes

After completing this project, you should be able to:

- Understand Structural Modeling in Verilog.
- Build an 8×1 multiplexer using gate primitives.
- Connect logic gates using internal wires.
- Generate random test vectors using `$random`.
- Use concatenation (`{}`) to assign multiple input signals simultaneously.
- Verify multiplexer functionality through simulation.

---

 Conclusion

The **8×1 Multiplexer** demonstrates how Structural Modeling builds a larger combinational circuit by interconnecting basic logic gate primitives. Using three NOT gates, eight AND gates, and one OR gate, the design correctly selects one of eight input signals based on the three select lines, reinforcing the principles of digital hardware design using structural connections.