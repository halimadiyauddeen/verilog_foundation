 Demultiplexers – Dataflow Modeling

**Author:** Halima Diyauddeen

---

 Overview

This folder contains the implementation of **digital demultiplexers (DEMUX)** using **Dataflow Modeling** in Verilog. A demultiplexer 
is a combinational circuit that routes a single input signal to one of several output lines based on the value of the select lines. 
It performs the opposite function of a multiplexer by distributing one input to multiple outputs.

The designs in this folder use continuous assignment statements (`assign`) and Verilog operators to implement the routing logic. 
Since demultiplexers are combinational circuits, their outputs depend only on the current input and select line values.

---

 Objective

- Understand the operation of digital demultiplexers.
- Learn how to implement demultiplexers using Dataflow Modeling.
- Practice using continuous assignment statements (`assign`).
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

 Dataflow Modeling

Dataflow Modeling describes the relationship between inputs and outputs using continuous assignment statements.

Example:

```verilog
assign y0 = (~sel[1] & ~sel[0]) ? d : 1'b0;
assign y1 = (~sel[1] &  sel[0]) ? d : 1'b0;
assign y2 = ( sel[1] & ~sel[0]) ? d : 1'b0;
assign y3 = ( sel[1] &  sel[0]) ? d : 1'b0;
```

The outputs are continuously updated whenever the input or select signals change.

---

 Demultiplexer Operation

A demultiplexer directs the input signal to one output based on the select lines.

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

- Dataflow Modeling
- Continuous assignment (`assign`)
- Conditional operator (`?:`)
- Bitwise operators
- Wire outputs

No `always` blocks or gate primitives are used.

---

 Characteristics

- Combinational circuit
- No memory elements
- No clock signal required
- Output depends only on present inputs
- Routes one input to one selected output
- All non-selected outputs remain inactive

---

 Simulation

Each demultiplexer is verified using a dedicated testbench that applies different combinations of input and select signals while monitoring the outputs.

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
- Implement demultiplexers using Dataflow Modeling.
- Route data using select lines.
- Use continuous assignment statements and conditional operators effectively.
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

The **Demultiplexers – Dataflow Modeling** projects demonstrate how a single input signal can be routed to one of several outputs using
continuous assignments in Verilog. By implementing 1×4 and 1×8 demultiplexers, this folder introduces an essential combinational circuit 
used for data distribution, signal routing, and digital communication systems.
