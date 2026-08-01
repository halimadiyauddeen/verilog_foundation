 Combinational Circuits – Dataflow Modeling

**Author:** Halima Diyauddeen

---

 Overview

This folder contains the implementation of various **Combinational Circuits** using **Dataflow Modeling** in Verilog. Dataflow Modeling 
describes digital circuits by defining the relationship between inputs and outputs through continuous assignment statements (`assign`) 
and Verilog operators.

A combinational circuit is a digital circuit whose output depends **only on the present values of its inputs**. These circuits do not 
contain memory elements or clock signals, meaning the output changes immediately whenever the inputs change.

The projects in this folder demonstrate how basic logic gates can be combined to perform arithmetic operations, data selection,
data routing, encoding, decoding, and comparison.

---

 Objective

- Understand the concept of combinational circuits.
- Learn how to implement combinational circuits using Dataflow Modeling.
- Practice using continuous assignment statements (`assign`).
- Understand how logic operators are used to build larger digital systems.
- Verify combinational circuits through simulation.

---

 Circuits Included

This folder contains the following combinational circuit implementations:

- Half Adder
- Full Adder
- Half Subtractor
- Full Subtractor
- Ripple Carry Adder
- 4×1 Multiplexer (MUX)
- 8×1 Multiplexer (MUX)
- 1×4 Demultiplexer (DEMUX)
- 1×8 Demultiplexer (DEMUX)
- 2×4 Decoder
- 3×8 Decoder
- 4×2 Encoder
- 8×3 Encoder
- 2-Bit Comparator
- 3-Bit Comparator

Each project includes:

- Design Under Test (DUT)
- Testbench
- Project README

---

 Dataflow Modeling

Dataflow Modeling describes how signals move through a circuit using continuous assignments.

Example:

```verilog
assign sum   = a ^ b;
assign carry = a & b;
```

Whenever an input changes, the output is automatically updated.

---

 Verilog Implementation

The designs use:

- Dataflow Modeling
- Continuous assignment (`assign`)
- Bitwise operators
- Logical operators
- Conditional operator (`?:`)
- Wire outputs

No `always` blocks or gate primitives are used.

---

 Characteristics of Combinational Circuits

- Output depends only on present inputs.
- No memory elements.
- No clock signal required.
- No feedback paths.
- Immediate output response when inputs change.

---

 Simulation

Each circuit is verified using a dedicated testbench that applies multiple input combinations and monitors the corresponding outputs.

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

- Understand combinational logic design.
- Implement combinational circuits using Dataflow Modeling.
- Use continuous assignments effectively.
- Design arithmetic and data routing circuits.
- Build larger digital systems from smaller combinational blocks.
- Verify digital designs through simulation.

---

 Applications

Combinational circuits are widely used in:

- Arithmetic Logic Units (ALUs)
- Digital calculators
- Data routing systems
- Address decoding
- Communication systems
- Computer processors
- FPGA designs
- ASIC designs
- Embedded systems

---

 Conclusion

The **Combinational Circuits – Dataflow Modeling** projects demonstrate how digital circuits can be described using continuous assignments
in Verilog. By implementing arithmetic, routing, encoding, decoding, and comparison circuits, this folder builds upon the fundamentals
of logic gates and provides a strong foundation for designing more advanced digital systems and preparing for FPGA and ASIC development.
