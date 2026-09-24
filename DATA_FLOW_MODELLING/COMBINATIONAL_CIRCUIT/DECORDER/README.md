Decoders – Dataflow Modeling

**Author:** Halima Diyauddeen

---

 Overview

This folder contains the implementation of **digital decoders** using **Dataflow Modeling** in Verilog. A decoder is a combinational 
circuit that converts an *n*-bit binary input into one of **2ⁿ** unique output lines. For every valid binary input, only one output is 
asserted while all remaining outputs remain inactive.

The designs in this folder use continuous assignment statements (`assign`) and Verilog operators to implement the decoding logic. 
Since decoders are combinational circuits, their outputs depend only on the current input values.

---

 Objective

- Understand the operation of digital decoders.
- Learn how to implement decoders using Dataflow Modeling.
- Practice using continuous assignment statements (`assign`).
- Understand binary decoding techniques.
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

 Dataflow Modeling

Dataflow Modeling describes the relationship between inputs and outputs using continuous assignment statements.

Example:

```verilog
assign y[0] = ~a & ~b;
assign y[1] = ~a &  b;
assign y[2] =  a & ~b;
assign y[3] =  a &  b;
```

The outputs are continuously updated whenever the input values change.

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
- Activates one output line at a time
- Converts binary input into multiple output lines

---

 Simulation

Each decoder is verified using a dedicated testbench that applies all possible input combinations and monitors the corresponding outputs.

Example:

```verilog
a = 0;
b = 0;
#10;

a = 0;
b = 1;
#10;

a = 1;
b = 0;
#10;

a = 1;
b = 1;
#10;
```

---

 Learning Outcomes

After completing this folder, you should be able to:

- Understand the operation of digital decoders.
- Implement decoders using Dataflow Modeling.
- Convert binary inputs into unique output lines.
- Use continuous assignment statements effectively.
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

The **Decoders – Dataflow Modeling** projects demonstrate how binary input values can be translated into unique output lines using
continuous assignments in Verilog. By implementing 2×4 and 3×8 decoders, this folder introduces a fundamental combinational circuit 
widely used for address decoding, control logic, and digital system design.
