 Comparators – Gate-Level Modeling

**Author:** Halima Diyauddeen

---

 Overview

This folder contains the implementation of **digital comparators** using **Gate-Level Modeling** in Verilog. A comparator is a combinational circuit that compares two binary numbers and determines whether one value is **greater than**, **less than**, or **equal to** the other.

The designs in this folder are constructed by interconnecting Verilog's built-in gate primitives such as `and`, `or`, `not`, `xor`,
and `xnor`. This approach closely represents the actual hardware implementation of a comparator.

---

 Objective

- Understand the operation of digital comparators.
- Learn how to implement comparators using Gate-Level Modeling.
- Practice building digital circuits using gate primitives.
- Understand how logic gates work together to perform comparisons.
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

 Gate-Level Modeling

Gate-Level Modeling describes a digital circuit by connecting Verilog's built-in logic gate primitives.

Example:

```verilog
xnor x1(eq0, a0, b0);
xnor x2(eq1, a1, b1);
and  a1(equal, eq0, eq1);
```

In this example:

- `xnor` compares each pair of input bits.
- `and` combines the comparison results to determine if all bits are equal.

The outputs are automatically updated whenever the input values change.

---

 Comparator Outputs

A comparator typically produces three outputs:

| Output | Description |
|:------:|-------------|
| `greater` | High when the first input is greater than the second input |
| `equal` | High when both inputs are equal |
| `less` | High when the first input is less than the second input |

Only one of these outputs is asserted for any valid input combination.

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

The comparator designs make use of the following Verilog gate primitives:

| Gate Primitive | Purpose |
|:--------------:|---------|
| `and` | Combines comparison conditions |
| `or` | Produces greater or less outputs |
| `not` | Generates complementary signals |
| `xor` | Detects bit differences |
| `xnor` | Detects equal bits |

---

 Characteristics

- Combinational circuit
- No memory elements
- No clock signal required
- Output depends only on present inputs
- Built using interconnected logic gates
- Closely represents actual hardware

---

 Simulation

Each comparator is verified using a dedicated testbench that applies multiple combinations of input values and monitors the corresponding outputs.

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
- Implement comparators using Gate-Level Modeling.
- Construct comparison logic using gate primitives.
- Understand how multiple logic gates combine to perform binary comparisons.
- Verify comparator functionality through simulation.

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

The **Comparators – Gate-Level Modeling** projects demonstrate how binary values can be compared by interconnecting Verilog's built-in
gate primitives. By implementing 2-bit and 3-bit comparators using gate-level techniques, this folder provides a practical 
understanding of hardware-oriented digital design and illustrates how complex combinational circuits are constructed from fundamental 
logic gates.
