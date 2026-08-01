 Decoders – Structural Modeling

**Author:** Halima Diyauddeen

---

 Overview

This folder contains the implementation of **digital decoders** using **Structural Modeling** in Verilog. A decoder is a combinational 
circuit that converts an *n*-bit binary input into one of **2ⁿ** unique output lines. For every valid binary input, only one output 
line is asserted while all remaining outputs remain inactive.

The designs in this folder are implemented by **instantiating smaller reusable modules** and connecting them together using wires. 
Structural Modeling emphasizes the hardware organization of a circuit by describing how individual modules are interconnected to form 
a complete system.

---

 Objective

- Understand the operation of digital decoders.
- Learn how to implement decoders using Structural Modeling.
- Practice module instantiation and port mapping.
- Understand hierarchical digital design.
- Verify decoder functionality through simulation.

---

 Circuits Included

This folder contains the following decoder implementations:

- 2×4 Decoder
- 3×8 Decoder

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
decoder_2x4 DEC1 (
    .a(in[1:0]),
    .y(w)
);

decoder_1x2 DEC2 (
    .a(in[2]),
    .en(w[0]),
    .y(y[3:0])
);

decoder_1x2 DEC3 (
    .a(in[2]),
    .en(w[1]),
    .y(y[7:4])
);
```

In this example, a larger decoder is constructed by instantiating smaller decoder modules and connecting them through intermediate 
wires, demonstrating hierarchical design.

---

 Decoder Operation

A decoder activates one output line corresponding to the applied binary input.

Example for a **2×4 Decoder**:

| Input | Active Output |
|:-----:|:-------------:|
| `00` | `y0` |
| `01` | `y1` |
| `10` | `y2` |
| `11` | `y3` |

Only one output is active for each valid input combination.

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

Each decoder is verified using a dedicated testbench that applies all possible input combinations and monitors the corresponding outputs.

Example:

```verilog
a = 2'b00; #10;
a = 2'b01; #10;
a = 2'b10; #10;
a = 2'b11; #10;
```

---

 Learning Outcomes

After completing this folder, you should be able to:

- Understand the operation of digital decoders.
- Implement decoders using Structural Modeling.
- Build larger circuits by instantiating smaller modules.
- Apply module instantiation and port mapping techniques.
- Verify hierarchical designs through simulation.

---

 Applications

Decoders are widely used in:

- Memory address decoding
- Memory chip selection
- Instruction decoding
- Display systems
- Control units
- Communication systems
- FPGA designs
- ASIC designs

---

 Conclusion

The **Decoders – Structural Modeling** projects demonstrate how larger digital circuits can be constructed by interconnecting smaller 
reusable modules in Verilog. By implementing 2×4 and 3×8 decoders using hierarchical design techniques, this folder provides a 
practical understanding of Structural Modeling while emphasizing modularity, scalability, and hardware-oriented digital design.
