 Comparators – Behavioral Modeling

**Author:** Halima Diyauddeen

---

 Overview

This folder contains the implementation of **digital comparators** using **Behavioral Modeling** in Verilog. A comparator is a 
combinational circuit that compares two binary numbers and determines whether one value is **greater than**, **less than**, 
or **equal to** the other.

The designs in this folder use `always` blocks and procedural statements to implement the comparison logic. Since comparators are 
combinational circuits, their outputs depend only on the current input values and update immediately whenever the inputs change.

---

 Objective

- Understand the operation of digital comparators.
- Learn how to implement comparators using Behavioral Modeling.
- Practice using `always` blocks and procedural assignments.
- Understand comparison operators in Verilog.
- Verify comparator functionality through simulation.

---

## Circuits Included

This folder contains the following comparator implementations:

- 2-Bit Comparator
- 3-Bit Comparator

Each project includes:

- Design Under Test (DUT)
- Testbench
- Project README

---

 Behavioral Modeling

Behavioral Modeling describes **how a circuit behaves** using procedural blocks such as `always`.

Example:

```verilog
always @(*) begin

    if (a > b)
        greater = 1'b1;
    else
        greater = 1'b0;

end
```

The `always @(*)` block ensures that the outputs are updated whenever any input changes.

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

- Behavioral Modeling
- `always @(*)`
- Procedural (blocking) assignments (`=`)
- Comparison operators (`>`, `<`, `==`)
- `reg` outputs

No continuous assignment (`assign`) statements or gate primitives are used.

---

 Characteristics

- Combinational circuit
- No memory elements
- No clock signal required
- Output depends only on present inputs
- Uses procedural logic
- Immediate output response to input changes

---

 Simulation

Each comparator is verified using a dedicated testbench that applies multiple combinations of input values and monitors the
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
- Implement comparators using Behavioral Modeling.
- Use comparison operators within `always` blocks.
- Interpret comparator outputs correctly.
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

The **Comparators – Behavioral Modeling** projects demonstrate how binary values can be compared using procedural logic in Verilog. 
By implementing 2-bit and 3-bit comparators with `always` blocks, this folder introduces an essential combinational circuit used for 
decision-making, arithmetic operations, and digital system design.
