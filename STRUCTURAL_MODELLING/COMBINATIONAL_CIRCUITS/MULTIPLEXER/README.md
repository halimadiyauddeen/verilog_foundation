 Multiplexers – Structural Modeling

**Author:** Halima Diyauddeen

---

 Overview

This folder contains the implementation of **digital multiplexers (MUX)** using **Structural Modeling** in Verilog. A multiplexer is a
combinational circuit that selects one of several input signals and forwards it to a single output based on the value of the select
lines. It is commonly referred to as a **data selector** because it selects one input from multiple available inputs.

The designs in this folder are implemented by **instantiating smaller reusable modules** and connecting them together using wires. 
Structural Modeling emphasizes the hardware organization of a circuit by describing how individual modules are interconnected to form
a complete system.

---

 Objective

- Understand the operation of digital multiplexers.
- Learn how to implement multiplexers using Structural Modeling.
- Practice module instantiation and port mapping.
- Understand hierarchical digital design.
- Verify multiplexer functionality through simulation.

---

 Circuits Included

This folder contains the following multiplexer implementations:

- 4×1 Multiplexer
- 8×1 Multiplexer

Each project includes:

- Design Under Test (DUT)
- Testbench
- Project README

---

 Structural Modeling

Structural Modeling describes a digital circuit by connecting smaller modules together instead of describing the logic using `assign`
statements or `always` blocks.

Example:

```verilog
mux_4x1 MUX1 (
    .i0(in0),
    .i1(in1),
    .i2(in2),
    .i3(in3),
    .sel(sel[1:0]),
    .y(w0)
);

mux_4x1 MUX2 (
    .i0(in4),
    .i1(in5),
    .i2(in6),
    .i3(in7),
    .sel(sel[1:0]),
    .y(w1)
);

mux_2x1 MUX3 (
    .i0(w0),
    .i1(w1),
    .sel(sel[2]),
    .y(out)
);
```

In this example, an **8×1 multiplexer** is constructed by instantiating two **4×1 multiplexers** and one **2×1 multiplexer**, 
demonstrating hierarchical design.

---

 Multiplexer Operation

A multiplexer selects one input signal and forwards it to the output according to the select lines.

Example for a **4×1 Multiplexer**:

| Select Input | Output |
|:------------:|:------:|
| `00` | `i0` |
| `01` | `i1` |
| `10` | `i2` |
| `11` | `i3` |

Only one input is connected to the output at any given time.

---

 Verilog Implementation

The designs use:

- Structural Modeling
- Module instantiation
- Named port mapping
- Wire interconnections

No `always` blocks or continuous assignment (`assign`) statements are used in the top-level structural design.

---

 Characteristics

- Combinational circuit
- No memory elements
- No clock signal required
- Output depends only on present inputs
- Built by connecting reusable modules
- Supports hierarchical hardware design

---

 Simulation

Each multiplexer is verified using a dedicated testbench that applies different combinations of input and select signals while
monitoring the output.

Example:

```verilog
i0 = 0;
i1 = 1;
i2 = 0;
i3 = 1;

sel = 2'b00; #10;
sel = 2'b01; #10;
sel = 2'b10; #10;
sel = 2'b11; #10;
```

---

 Learning Outcomes

After completing this folder, you should be able to:

- Understand the operation of digital multiplexers.
- Implement multiplexers using Structural Modeling.
- Build larger circuits by instantiating smaller modules.
- Apply module instantiation and port mapping techniques.
- Verify hierarchical designs through simulation.

---

 Applications

Multiplexers are widely used in:

- Data selection
- Data routing
- Bus switching
- Arithmetic Logic Units (ALUs)
- Communication systems
- Control units
- FPGA designs
- ASIC designs
- Embedded systems

---

 Conclusion

The **Multiplexers – Structural Modeling** projects demonstrate how larger digital circuits can be built by interconnecting smaller
reusable modules in Verilog. By implementing 4×1 and 8×1 multiplexers using hierarchical design techniques, this folder provides a 
practical understanding of Structural Modeling and highlights the importance of modularity, scalability, and code reuse in digital 
system design.
