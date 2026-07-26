 4×1 MUX – Gate-Level Modeling

**Author:** Halima Diyauddeen

---

 Overview

This project implements a **4×1 Multiplexer (MUX)** using **Verilog Gate-Level Modeling**. A 4×1 multiplexer selects one of four data inputs and routes it to a single output based on the values of two select inputs.

---

 Objective

- Understand the operation of a 4×1 Multiplexer.
- Implement a MUX using Verilog gate primitives.
- Verify the design using a dedicated testbench.

---

 Gate Primitives Used

```verilog
not (not_s1, s1);
not (not_s0, s0);

and (w0, i0, not_s1, not_s0);
and (w1, i1, not_s1, s0);
and (w2, i2, s1, not_s0);
and (w3, i3, s1, s0);

or (y, w0, w1, w2, w3);
```

The `not` gates generate the complements of the select inputs, the `and` gates select the appropriate input, and the `or` gate combines the intermediate signals to produce the final output.

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

The multiplexer is implemented using Verilog's built-in gate primitives:

- `not`
- `and`
- `or`

No `assign` statements are used, making this a true Gate-Level Modeling implementation.

---

 Simulation

The testbench applies input combinations that demonstrate the selection of each input (`I0` through `I3`) and displays the corresponding output using the `$monitor` system task.

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

- Understand the operation of a 4×1 Multiplexer.
- Implement multiplexers using Verilog gate primitives.
- Design combinational circuits using Gate-Level Modeling.
- Verify multiplexer functionality through simulation.

---

 Conclusion

The **4×1 Multiplexer** is an essential combinational circuit used to select one of four input signals and route it to a single output based on two select lines. Implementing it with Verilog gate primitives reinforces the principles of Gate-Level Modeling and serves as a foundation for building larger multiplexers and more complex digital systems.