 Decoders – Gate-Level Modeling

**Author:** Halima Diyauddeen

---

## Overview

This folder contains the implementation of **digital decoders** using **Gate-Level Modeling** in Verilog. A decoder is a combinational circuit that converts an *n*-bit binary input into one of **2ⁿ** unique output lines. For every valid binary input, only one output is asserted while all remaining outputs remain inactive.

The designs in this folder are constructed by interconnecting Verilog's built-in gate primitives such as `and` and `not`. This approach closely represents the actual hardware implementation of a decoder.

---

 Objective

- Understand the operation of digital decoders.
- Learn how to implement decoders using Gate-Level Modeling.
- Practice building combinational circuits using gate primitives.
- Understand how logic gates work together to perform binary decoding.
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

 Gate-Level Modeling

Gate-Level Modeling describes a digital circuit by connecting Verilog's built-in logic gate primitives.

Example:

```verilog
not n1(a_bar, a);
not n2(b_bar, b);

and a1(y0, a_bar, b_bar);
and a2(y1, a_bar, b);
and a3(y2, a, b_bar);
and a4(y3, a, b);
```

In this example:

- `not` gates generate the complemented input signals.
- `and` gates activate the appropriate output line based on the binary input.

The outputs are automatically updated whenever the input values change.

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

- Gate-Level Modeling
- Built-in gate primitives
- Gate instantiation
- Wire outputs

No `always` blocks or continuous assignment (`assign`) statements are used.

---

 Gate Primitives Used

The decoder designs make use of the following Verilog gate primitives:

| Gate Primitive | Purpose |
|:--------------:|---------|
| `not` | Generates complemented input signals |
| `and` | Activates the required output line |

---

 Characteristics

- Combinational circuit
- No memory elements
- No clock signal required
- Output depends only on present inputs
- Built using interconnected logic gates
- Activates one output line at a time

---

 Simulation

Each decoder is verified using a dedicated testbench that applies all possible input combinations and monitors the corresponding
outputs.

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
- Implement decoders using Gate-Level Modeling.
- Construct decoding logic using gate primitives.
- Understand how basic logic gates perform binary decoding.
- Verify decoder functionality through simulation.

---

 Applications

Decoders are widely used in:

- Memory address decoding
- Memory chip selection
- Instruction decoding
- Display systems
- Digital communication systems
- Control units
- FPGA designs
- ASIC designs

---

 Conclusion

The **Decoders – Gate-Level Modeling** projects demonstrate how binary input values can be translated into unique output lines by 
interconnecting Verilog's built-in gate primitives. By implementing 2×4 and 3×8 decoders at the gate level, this folder provides a 
practical understanding of hardware-oriented digital design and illustrates how combinational circuits are constructed from fundamental
logic gates.
