 Logic Gates – Gate-Level Modeling

**Author:** Halima Diyauddeen

---

 Overview

This folder contains the implementation of the fundamental **logic gates** using **Gate-Level Modeling** in Verilog. Gate-Level Modeling describes a digital circuit by directly instantiating Verilog's built-in gate primitives, making the design closely resemble the actual hardware implementation.

Logic gates are the basic building blocks of digital systems. By using gate primitives, designers can model circuits at a lower level of abstraction, showing how hardware is physically interconnected.

---

 Objective

- Understand the fundamentals of Gate-Level Modeling in Verilog.
- Learn how to implement logic gates using built-in gate primitives.
- Understand the relationship between Verilog code and digital hardware.
- Verify logic gate functionality through simulation.
- Build a strong foundation for structural digital circuit design.

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

 Gate-Level Modeling

Gate-Level Modeling describes a circuit by connecting Verilog's predefined logic gate primitives.

Example:

```verilog
and and1 (y, a, b);
```

In this example:

- `and` is the built-in gate primitive.
- `and1` is the instance name.
- `y` is the output.
- `a` and `b` are the inputs.

The output is automatically updated whenever the input values change.

---

 Gate Primitives Used

The designs make use of the following Verilog gate primitives:

| Gate Primitive | Description |
|:--------------:|-------------|
| `and` | AND Gate |
| `or` | OR Gate |
| `not` | NOT Gate |
| `nand` | NAND Gate |
| `nor` | NOR Gate |
| `xor` | XOR Gate |
| `xnor` | XNOR Gate |

---

 Verilog Implementation

The designs use:

- Gate-Level Modeling
- Built-in gate primitives
- Gate instantiation
- Wire outputs

No `always` blocks or continuous assignment (`assign`) statements are used.

---

 Characteristics

- Combinational circuit implementation
- Represents actual hardware connections
- Uses built-in gate primitives
- No memory elements
- No clock signal required
- Output depends only on present inputs

---

 Simulation

Each logic gate is verified using a dedicated testbench that applies all possible input combinations and monitors the corresponding 
outputs.

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

- Understand Gate-Level Modeling in Verilog.
- Implement logic gates using built-in gate primitives.
- Relate Verilog gate primitives to physical hardware.
- Differentiate between Gate-Level, Dataflow, and Behavioral Modeling.
- Verify logic gate functionality through simulation.

---

 Applications

Gate-Level Modeling is widely used in:

- Basic digital circuit design
- Structural hardware modeling
- FPGA learning and prototyping
- ASIC design fundamentals
- Logic verification
- Educational demonstrations
- Digital system design

---

 Conclusion

The **Logic Gates – Gate-Level Modeling** projects demonstrate how digital circuits can be implemented using Verilog's built-in gate 
primitives. By constructing the seven fundamental logic gates at the gate level, this folder provides a clear understanding of 
hardware-oriented design and establishes a strong foundation for more advanced structural and combinational circuit implementations.
