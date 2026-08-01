 Demultiplexers – Structural Modeling

**Author:** Halima Diyauddeen

---

 Overview

This folder contains the implementation of **digital demultiplexers (DEMUX)** using **Structural Modeling** in Verilog. A demultiplexer
is a combinational circuit that routes a single input signal to one of several output lines based on the value of the select lines. It
performs the opposite function of a multiplexer by distributing one input to multiple outputs.

The designs in this folder are implemented by **instantiating smaller reusable modules** and connecting them together using wires.
Structural Modeling emphasizes the hardware organization of a circuit by describing how individual modules are interconnected to form 
a complete system.

---

 Objective

- Understand the operation of digital demultiplexers.
- Learn how to implement demultiplexers using Structural Modeling.
- Practice module instantiation and port mapping.
- Understand hierarchical digital design.
- Verify demultiplexer functionality through simulation.

---

 Circuits Included

This folder contains the following demultiplexer implementations:

- 1×4 Demultiplexer
- 1×8 Demultiplexer

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
demux_1x4 DEMUX1 (
    .d(d),
    .sel(sel[1:0]),
    .y(w)
);

demux_1x2 DEMUX2 (
    .d(w[0]),
    .sel(sel[2]),
    .y(y[3:0])
);

demux_1x2 DEMUX3 (
    .d(w[1]),
    .sel(sel[2]),
    .y(y[7:4])
);
```

In this example, a larger demultiplexer is constructed by instantiating smaller demultiplexer modules and connecting them through 
intermediate wires, demonstrating hierarchical design.

---

 Demultiplexer Operation

A demultiplexer routes a single input signal to one output based on the select lines.

Example for a **1×4 Demultiplexer**:

| Select Input | Active Output |
|:------------:|:-------------:|
| `00` | `y0 = d` |
| `01` | `y1 = d` |
| `10` | `y2 = d` |
| `11` | `y3 = d` |

All non-selected outputs remain at logic `0`.

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

Each demultiplexer is verified using a dedicated testbench that applies different combinations of input and select signals while 
monitoring the outputs.

Example:

```verilog
d = 1; sel = 2'b00; #10;
d = 1; sel = 2'b01; #10;
d = 1; sel = 2'b10; #10;
d = 1; sel = 2'b11; #10;
```

---

 Learning Outcomes

After completing this folder, you should be able to:

- Understand the operation of digital demultiplexers.
- Implement demultiplexers using Structural Modeling.
- Build larger circuits by instantiating smaller modules.
- Apply module instantiation and port mapping techniques.
- Verify hierarchical designs through simulation.

---

 Applications

Demultiplexers are widely used in:

- Data distribution
- Communication systems
- Memory addressing
- Digital switching systems
- Signal routing
- FPGA designs
- ASIC designs
- Embedded systems

---

 Conclusion

The **Demultiplexers – Structural Modeling** projects demonstrate how larger digital circuits can be constructed by interconnecting 
smaller reusable modules in Verilog. By implementing 1×4 and 1×8 demultiplexers using hierarchical design techniques, this folder
provides a practical understanding of Structural Modeling while emphasizing modularity, scalability, and hardware-oriented digital 
design.
