 Comparators – Structural Modeling

**Author:** Halima Diyauddeen

---

 Overview

This folder contains the implementation of **digital comparators** using **Structural Modeling** in Verilog. A comparator is a
combinational circuit that compares two binary numbers and determines whether one value is **greater than**, **less than**, or 
**equal to** the other.

The designs in this folder are implemented by **instantiating smaller reusable modules** and connecting them together using wires. 
Structural Modeling emphasizes the hardware organization of a circuit by describing how individual modules are interconnected to form
a complete system.

---

 Objective

- Understand the operation of digital comparators.
- Learn how to implement comparators using Structural Modeling.
- Practice module instantiation and port mapping.
- Understand hierarchical digital design.
- Verify comparator functionality through simulation.

---

 Circuits Included

This folder contains the following comparator implementations:

- 2-Bit Comparator
- 3-Bit Comparator

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
comparator_1bit COMP1 (
    .a(a[0]),
    .b(b[0]),
    .greater(g0),
    .equal(e0),
    .less(l0)
);

comparator_1bit COMP2 (
    .a(a[1]),
    .b(b[1]),
    .greater(g1),
    .equal(e1),
    .less(l1)
);
```

The outputs from the smaller comparator modules are combined through additional logic to determine whether the complete binary
numbers are greater than, equal to, or less than each other. This demonstrates hierarchical design using reusable modules.

---

 Comparator Operation

A comparator produces three outputs:

| Output | Description |
|:------:|-------------|
| `greater` | High when the first input is greater than the second input |
| `equal` | High when both inputs are equal |
| `less` | High when the first input is less than the second input |

Only one of these outputs is asserted for any valid input combination.

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

Each comparator is verified using a dedicated testbench that applies different combinations of input values and monitors the
corresponding outputs.

Example:

```verilog
a = 2'b00; b = 2'b00; #10;
a = 2'b01; b = 2'b00; #10;
a = 2'b10; b = 2'b11; #10;
a = 2'b11; b = 2'b11; #10;
```

---

 Learning Outcomes

After completing this folder, you should be able to:

- Understand the operation of digital comparators.
- Implement comparators using Structural Modeling.
- Build larger circuits by instantiating smaller modules.
- Apply module instantiation and port mapping techniques.
- Verify hierarchical designs through simulation.

---

 Applications

Comparators are widely used in:

- Arithmetic Logic Units (ALUs)
- Digital processors
- Sorting circuits
- Address comparison
- Control units
- Decision-making circuits
- FPGA designs
- ASIC designs

---

 Conclusion

The **Comparators – Structural Modeling** projects demonstrate how larger digital circuits can be constructed by interconnecting 
smaller reusable modules in Verilog. By implementing 2-bit and 3-bit comparators using hierarchical design techniques, this folder 
provides a practical understanding of Structural Modeling while emphasizing modularity, scalability, and hardware-oriented digital 
design.
