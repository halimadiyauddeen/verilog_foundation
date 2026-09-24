 Encoders – Structural Modeling

**Author:** Halima Diyauddeen

---

 Overview

This folder contains the implementation of **digital encoders** using **Structural Modeling** in Verilog. An encoder is a combinational
circuit that converts multiple input lines into a smaller number of binary output lines. It performs the inverse operation of a decoder
by encoding the active input into its corresponding binary representation.

The designs in this folder are implemented by **instantiating smaller reusable modules** and connecting them together using wires. 
Structural Modeling emphasizes the hardware organization of a circuit by describing how individual modules are interconnected to form 
a complete system.

---

 Objective

- Understand the operation of digital encoders.
- Learn how to implement encoders using Structural Modeling.
- Practice module instantiation and port mapping.
- Understand hierarchical digital design.
- Verify encoder functionality through simulation.

---

 Circuits Included

This folder contains the following encoder implementations:

- 4×2 Encoder
- 8×3 Encoder

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
encoder_4x2 ENC1 (
    .i(in[3:0]),
    .y(w)
);

encoder_2x1 ENC2 (
    .i(w),
    .y(out)
);
```

In this example, a larger encoder is constructed by instantiating smaller encoder modules and connecting them through intermediate 
wires, demonstrating hierarchical design.

---

 Encoder Operation

An encoder converts one active input into its corresponding binary output.

Example for a **4×2 Encoder**:

| Active Input | Binary Output |
|:------------:|:-------------:|
| `i0` | `00` |
| `i1` | `01` |
| `i2` | `10` |
| `i3` | `11` |

 **Note:** A basic encoder assumes that only one input is active at a time. If multiple inputs are active simultaneously, the output 
 is undefined unless a priority encoder is used.

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

Each encoder is verified using a dedicated testbench that activates one input at a time and monitors the corresponding binary output.

Example:

```verilog
i0 = 1; i1 = 0; i2 = 0; i3 = 0; #10;
i0 = 0; i1 = 1; i2 = 0; i3 = 0; #10;
i0 = 0; i1 = 0; i2 = 1; i3 = 0; #10;
i0 = 0; i1 = 0; i2 = 0; i3 = 1; #10;
```

---

 Learning Outcomes

After completing this folder, you should be able to:

- Understand the operation of digital encoders.
- Implement encoders using Structural Modeling.
- Build larger circuits by instantiating smaller modules.
- Apply module instantiation and port mapping techniques.
- Verify hierarchical designs through simulation.

---

 Applications

Encoders are widely used in:

- Keyboard encoding
- Interrupt controllers
- Data compression
- Digital communication systems
- Memory address generation
- Control units
- FPGA designs
- ASIC designs

---

 Conclusion

The **Encoders – Structural Modeling** projects demonstrate how larger digital circuits can be constructed by interconnecting smaller 
reusable modules in Verilog. By implementing 4×2 and 8×3 encoders using hierarchical design techniques, this folder provides a 
practical understanding of Structural Modeling while emphasizing modularity, scalability, and hardware-oriented digital design.
