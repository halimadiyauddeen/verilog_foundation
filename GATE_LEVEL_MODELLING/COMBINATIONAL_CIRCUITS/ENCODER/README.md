 Encoders – Gate-Level Modeling

**Author:** Halima Diyauddeen

---

 Overview

This folder contains the implementation of **digital encoders** using **Gate-Level Modeling** in Verilog. An encoder is a combinational
circuit that converts multiple input lines into a smaller number of binary output lines. It performs the inverse operation of a decoder
by encoding the active input into its corresponding binary representation.

The designs in this folder are constructed by interconnecting Verilog's built-in gate primitives such as `or` gates. This approach 
closely represents the actual hardware implementation of an encoder.

---

 Objective

- Understand the operation of digital encoders.
- Learn how to implement encoders using Gate-Level Modeling.
- Practice building combinational circuits using gate primitives.
- Understand how logic gates work together to perform binary encoding.
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

## Gate-Level Modeling

Gate-Level Modeling describes a digital circuit by connecting Verilog's built-in logic gate primitives.

Example:

```verilog
or o1(y[1], i2, i3);
or o2(y[0], i1, i3);
```

In this example:

- `or` gates combine the active input signals.
- The outputs represent the binary code corresponding to the active input.

The outputs are automatically updated whenever the input values change.

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

- Gate-Level Modeling
- Built-in gate primitives
- Gate instantiation
- Wire outputs

No `always` blocks or continuous assignment (`assign`) statements are used.

---

 Gate Primitives Used

The encoder designs make use of the following Verilog gate primitives:

| Gate Primitive | Purpose |
|:--------------:|---------|
| `or` | Generates the binary output from the active input signals |

---

 Characteristics

- Combinational circuit
- No memory elements
- No clock signal required
- Output depends only on present inputs
- Built using interconnected logic gates
- Converts active input lines into binary outputs

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
- Implement encoders using Gate-Level Modeling.
- Construct encoding logic using gate primitives.
- Understand how logic gates perform binary encoding.
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

The **Encoders – Gate-Level Modeling** projects demonstrate how multiple input signals can be converted into compact binary 
representations by interconnecting Verilog's built-in gate primitives. By implementing 4×2 and 8×3 encoders at the gate level, this f
older provides a practical understanding of hardware-oriented digital design and illustrates how combinational circuits are constructed
from fundamental logic gates.
