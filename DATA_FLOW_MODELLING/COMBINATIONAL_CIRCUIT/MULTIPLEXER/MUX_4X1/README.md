 4x1 Multiplexer (MUX) – Dataflow Modeling

**Author:** Halima Diyauddeen

---

 Overview

This project implements a **4x1 Multiplexer (MUX)** using **Verilog Dataflow Modeling**. A 4x1 MUX selects one of four input signals and forwards the selected input to a single output based on two select lines.

---

 Objective

- Understand the operation of a 4x1 Multiplexer.
- Implement a 4x1 MUX using Verilog Dataflow Modeling.
- Verify the design using a dedicated testbench.

---

 Boolean Expression

```text
Y = (~S1 & ~S0 & I0)
  | (~S1 &  S0 & I1)
  | ( S1 & ~S0 & I2)
  | ( S1 &  S0 & I3)
```

---

 Truth Table

| S1 | S0 | Selected Input | Y |
|:--:|:--:|:--------------:|:-:|
| 0 | 0 | I0 | I0 |
| 0 | 1 | I1 | I1 |
| 1 | 0 | I2 | I2 |
| 1 | 1 | I3 | I3 |

---

 Project Files

| File | Description |
|------|-------------|
| `mux_4x1.v` | Design Under Test (DUT) |
| `mux_4x1_tb.v` | Testbench used to verify the DUT |
| `README.md` | Project documentation |

---

 Verilog Implementation

The multiplexer is implemented using continuous assignment statements.

```verilog
assign y = (~s1 & ~s0 & i0) |
           (~s1 &  s0 & i1) |
           ( s1 & ~s0 & i2) |
           ( s1 &  s0 & i3);
```

---

 Simulation

The testbench verifies each input selection by changing the values of the select lines `S1` and `S0`.

The output is observed using the `$monitor` system task.

---

 Expected Output

```text
I0=1 I1=0 I2=0 I3=0 | S1=0 S0=0 | Y=1
I0=0 I1=1 I2=0 I3=0 | S1=0 S0=1 | Y=1
I0=0 I1=0 I2=1 I3=0 | S1=1 S0=0 | Y=1
I0=0 I1=0 I2=0 I3=1 | S1=1 S0=1 | Y=1
```

---

 Learning Outcomes

After completing this project, you should be able to:

- Understand the operation of a 4x1 Multiplexer.
- Implement a multiplexer using Dataflow Modeling.
- Use Boolean expressions to select one input from multiple inputs.
- Verify the functionality of a combinational circuit through simulation.

---

 Conclusion

The 4x1 Multiplexer is a fundamental data selection circuit used in digital systems. It extends the concept of the 2x1 MUX by allowing one of four inputs to be selected using two control signals. It serves as the basis for larger multiplexers and complex digital designs.