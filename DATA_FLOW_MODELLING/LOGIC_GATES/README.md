 Logic Gates – Dataflow Modeling

**Author:** Halima Diyauddeen

---

 Overview

This folder contains the implementation of the fundamental **logic gates** using **Dataflow Modeling** in Verilog. Dataflow Modeling describes the behavior of a digital circuit by expressing the relationship between the inputs and outputs through continuous assignment statements (`assign`) and logic operators.

Logic gates are the basic building blocks of digital systems. More complex digital circuits such as adders, subtractors, multiplexers, decoders, encoders, comparators, memories, and processors are constructed by combining these basic gates.

---

 Objective

- Understand the fundamentals of Dataflow Modeling in Verilog.
- Learn how to implement logic gates using continuous assignments.
- Understand the use of Verilog logic operators.
- Verify logic gate functionality through simulation.
- Build a strong foundation for designing combinational circuits.

---

 Logic Gates Included

This folder contains the following logic gate implementations:

- AND Gate
- OR Gate
- NOT Gate
- NAND Gate
- NOR Gate
- XOR Gate
- XNOR Gate

Each project includes:

- Design Under Test (DUT)
- Testbench
- Project README

---

 Dataflow Modeling

Dataflow Modeling describes how data flows from the inputs to the outputs using the `assign` statement.

Example:

```verilog
assign y = a & b;
```

The output is continuously updated whenever one or more input signals change.

---

 Verilog Operators Used

The designs make use of the following bitwise operators:

| Operator | Description |
|:--------:|-------------|
| `&` | AND |
| `|` | OR |
| `~` | NOT |
| `^` | XOR |
| `~^` or `^~` | XNOR |

---

 Verilog Implementation

The designs use:

- Dataflow Modeling
- Continuous assignment (`assign`)
- Bitwise operators
- Wire outputs

No `always` blocks or gate primitives are used.

---

 Simulation

Each logic gate is verified using a dedicated testbench that applies all possible input combinations and monitors the corresponding outputs.

Example:

```verilog
a = 0; b = 0; #10;
a = 0; b = 1; #10;
a = 1; b = 0; #10;
a = 1; b = 1; #10;
```

---

 Learning Outcomes

After completing this folder, you should be able to:

- Understand Dataflow Modeling in Verilog.
- Implement logic gates using continuous assignments.
- Use Verilog bitwise operators effectively.
- Differentiate between Dataflow and Behavioral Modeling.
- Verify combinational circuits through simulation.

---

 Applications

Logic gates implemented using Dataflow Modeling are commonly used in:

- Arithmetic circuits
- Comparators
- Multiplexers
- Demultiplexers
- Encoders
- Decoders
- Control logic
- Digital processors
- FPGA and ASIC designs

---

 Conclusion
The **Logic Gates – Dataflow Modeling** projects demonstrate how combinational circuits can be described using continuous
assignments in Verilog. By implementing the seven fundamental logic gates with the `assign` statement, this folder provides 
a solid foundation for understanding Dataflow Modeling and serves as the first step toward designing more advanced digital systems.
