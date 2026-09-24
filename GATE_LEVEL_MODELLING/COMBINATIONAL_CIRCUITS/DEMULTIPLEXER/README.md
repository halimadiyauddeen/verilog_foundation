 Demultiplexers – Gate-Level Modeling

**Author:** Halima Diyauddeen

---

 Overview

This folder contains the implementation of **digital demultiplexers (DEMUX)** using **Gate-Level Modeling** in Verilog. A demultiplexer is a combinational circuit that routes a single input signal to one of several output lines based on the value of the select lines. It performs the opposite function of a multiplexer by distributing one input to multiple outputs.

The designs in this folder are constructed by interconnecting Verilog's built-in gate primitives such as `and` and `not`. This approach closely represents the actual hardware implementation of a demultiplexer.

---

 Objective

- Understand the operation of digital demultiplexers.
- Learn how to implement demultiplexers using Gate-Level Modeling.
- Practice building combinational circuits using gate primitives.
- Understand how select lines control data routing.
- Verify demultiplexer functionality through simulation.

---

 Circuits Included

This folder contains the following demultiplexer implementations:

- 1×4 Demultiplexer
- 1×8 Demultiplexer

Each project includes:

- Design Under Test (DUT)
- Testbench
- Project README

---

 Gate-Level Modeling

Gate-Level Modeling describes a digital circuit by connecting Verilog's built-in logic gate primitives.

Example:

```verilog
not n1(sel0_bar, sel[0]);
not n2(sel1_bar, sel[1]);

and a1(y0, d, sel1_bar, sel0_bar);
and a2(y1, d, sel1_bar, sel[0]);
and a3(y2, d, sel[1], sel0_bar);
and a4(y3, d, sel[1], sel[0]);
```

In this example:

- `not` gates generate the complemented select signals.
- `and` gates route the input signal to the selected output.

The outputs are automatically updated whenever the input or select signals change.

---

 Demultiplexer Operation

A demultiplexer routes a single input signal to one output based on the select lines.

Example for a **1×4 Demultiplexer**:

| Select Input | Active Output |
|:------------:|:-------------:|
| `00` | `y0 = d` |
| `01` | `y1 = d` |
| `10` | `y2 = d` |
| `11` | `y3 = d` |

All non-selected outputs remain at logic `0`.

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

The demultiplexer designs make use of the following Verilog gate primitives:

| Gate Primitive | Purpose |
|:--------------:|---------|
| `not` | Generates complemented select signals |
| `and` | Routes the input signal to the selected output |

---

 Characteristics

- Combinational circuit
- No memory elements
- No clock signal required
- Output depends only on present inputs
- Built using interconnected logic gates
- Routes one input to one selected output

---

 Simulation

Each demultiplexer is verified using a dedicated testbench that applies different combinations of input and select signals while
monitoring the outputs.

Example:

```verilog
d = 1; sel = 2'b00; #10;
d = 1; sel = 2'b01; #10;
d = 1; sel = 2'b10; #10;
d = 1; sel = 2'b11; #10;
```

---

 Learning Outcomes

After completing this folder, you should be able to:

- Understand the operation of digital demultiplexers.
- Implement demultiplexers using Gate-Level Modeling.
- Construct routing logic using gate primitives.
- Understand how logic gates perform data distribution.
- Verify demultiplexer functionality through simulation.

---

 Applications

Demultiplexers are widely used in:

- Data distribution systems
- Communication networks
- Memory addressing
- Digital switching systems
- Signal routing
- FPGA designs
- ASIC designs
- Embedded systems

---

 Conclusion

The **Demultiplexers – Gate-Level Modeling** projects demonstrate how a single input signal can be routed to one of several outputs by 
interconnecting Verilog's built-in gate primitives. By implementing 1×4 and 1×8 demultiplexers at the gate level, this folder provides 
a practical understanding of hardware-oriented digital design and illustrates how combinational circuits are constructed from 
fundamental logic gates.
