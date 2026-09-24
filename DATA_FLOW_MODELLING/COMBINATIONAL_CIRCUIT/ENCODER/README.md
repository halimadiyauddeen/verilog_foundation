 Encoders – Dataflow Modeling

**Author:** Halima Diyauddeen

---

 Overview

This folder contains the implementation of **digital encoders** using **Dataflow Modeling** in Verilog. An encoder is a combinational circuit that converts multiple input lines into a smaller number of binary output lines. It performs the inverse operation of a decoder by encoding the active input into its corresponding binary representation.

The designs in this folder use continuous assignment statements (`assign`) and Verilog operators to implement the encoding logic. Since encoders are combinational circuits, their outputs depend only on the current input values.

---

 Objective

- Understand the operation of digital encoders.
- Learn how to implement encoders using Dataflow Modeling.
- Practice using continuous assignment statements (`assign`).
- Understand binary encoding techniques.
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

 Dataflow Modeling

Dataflow Modeling describes the relationship between inputs and outputs using continuous assignment statements.

Example:

```verilog
assign y[1] = i2 | i3;
assign y[0] = i1 | i3;
```

The outputs are continuously updated whenever the input values change.

---

 Encoder Operation

An encoder converts one active input into its equivalent binary output.

Example for a **4×2 Encoder**:

| Active Input | Binary Output |
|:------------:|:-------------:|
| `i0` | `00` |
| `i1` | `01` |
| `i2` | `10` |
| `i3` | `11` |

> **Note:** A basic encoder assumes that only one input is active at a time. If multiple inputs are active simultaneously, the output is undefined unless a priority encoder is used.

---

 Verilog Implementation

The designs use:

- Dataflow Modeling
- Continuous assignment (`assign`)
- Bitwise operators
- Logical operators
- Wire outputs

No `always` blocks or gate primitives are used.

---

 Characteristics

- Combinational circuit
- No memory elements
- No clock signal required
- Output depends only on present inputs
- Performs binary encoding
- Assumes one active input at a time

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

 Learning Outcomes

After completing this folder, you should be able to:

- Understand the operation of digital encoders.
- Implement encoders using Dataflow Modeling.
- Convert active input lines into binary outputs.
- Use continuous assignment statements effectively.
- Verify encoder functionality through simulation.

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

The **Encoders – Dataflow Modeling** projects demonstrate how multiple input signals can be converted into compact binary representations
using continuous assignments in Verilog. By implementing 4×2 and 8×3 encoders, this folder introduces an important class of combinational 
circuits used for data encoding, control logic, and digital communication systems.
