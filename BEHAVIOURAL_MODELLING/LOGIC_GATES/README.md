 Logic Gates – Behavioral Modeling

**Author:** Halima Diyauddeen

---

 Overview

This folder contains the implementation of the fundamental **logic gates** using **Behavioral Modeling** in Verilog. Behavioral 
Modeling describes the functionality of a digital circuit by specifying **how the circuit behaves**, rather than describing its 
internal structure or data flow.

The designs in this folder use `always` blocks and procedural statements to implement the logic. Logic gates are the fundamental 
building blocks of digital systems, and understanding their behavioral implementation provides a strong foundation for designing more 
complex combinational and sequential circuits.

---

 Objective

- Understand the fundamentals of Behavioral Modeling in Verilog.
- Learn how to implement logic gates using `always` blocks.
- Practice using procedural assignments.
- Understand combinational logic using behavioral descriptions.
- Verify logic gate functionality through simulation.

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

 Behavioral Modeling

Behavioral Modeling describes **how a circuit operates** using procedural blocks such as `always`.

Example:

```verilog
always @(*) begin
    y = a & b;
end
```

The `always @(*)` block ensures that the output is updated whenever any input used within the block changes, making it suitable for
describing combinational logic.

---

 Verilog Constructs Used

The designs make use of the following Verilog constructs:

| Construct | Description |
|:---------:|-------------|
| `always @(*)` | Executes whenever an input changes |
| Procedural assignment (`=`) | Assigns values inside an `always` block |
| Bitwise operators | Perform logical operations on inputs |
| `reg` output | Stores values assigned within the `always` block |

---

 Verilog Implementation

The designs use:

- Behavioral Modeling
- `always @(*)`
- Procedural (blocking) assignments (`=`)
- Bitwise operators
- `reg` outputs

No continuous assignment (`assign`) statements or gate primitives are used.

---

 Characteristics

- Combinational circuit implementation
- Uses procedural blocks
- Output updates whenever an input changes
- Easy to understand and modify
- Suitable for describing complex logic

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

- Understand Behavioral Modeling in Verilog.
- Implement logic gates using `always` blocks.
- Use procedural assignments correctly.
- Differentiate between Behavioral and Dataflow Modeling.
- Verify combinational circuits through simulation.

---

 Applications

Behavioral Modeling is widely used in:

- Digital circuit design
- Combinational logic implementation
- Control logic
- Arithmetic circuits
- FPGA designs
- ASIC designs
- Digital system verification
- Hardware prototyping

---

 Conclusion

The **Logic Gates – Behavioral Modeling** projects demonstrate how digital circuits can be described using procedural statements in
Verilog. By implementing the seven fundamental logic gates with `always` blocks, this folder provides a solid understanding of 
Behavioral Modeling and prepares you for designing more advanced combinational and sequential digital systems.
