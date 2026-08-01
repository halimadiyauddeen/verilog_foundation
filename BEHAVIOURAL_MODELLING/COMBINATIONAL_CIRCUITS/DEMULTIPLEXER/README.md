 Demultiplexers – Behavioral Modeling

**Author:** Halima Diyauddeen

---

 Overview

This folder contains the implementation of **digital demultiplexers (DEMUX)** using **Behavioral Modeling** in Verilog. A demultiplexer is a combinational circuit that routes a single input signal to one of several output lines based on the value of the select lines. It performs the opposite function of a multiplexer by distributing one input to multiple outputs.

The designs in this folder use `always` blocks and procedural statements to implement the routing logic. Since demultiplexers are 
combinational circuits, their outputs depend only on the current input value and the select line values.

---

 Objective

- Understand the operation of digital demultiplexers.
- Learn how to implement demultiplexers using Behavioral Modeling.
- Practice using `always` blocks and procedural assignments.
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

 Behavioral Modeling

Behavioral Modeling describes **how a circuit behaves** using procedural blocks such as `always`.

Example:

```verilog
always @(*) begin

    y = 4'b0000;

    case (sel)

        2'b00: y[0] = d;
        2'b01: y[1] = d;
        2'b10: y[2] = d;
        2'b11: y[3] = d;

    endcase

end
```

The `always @(*)` block ensures that the outputs are updated whenever the input or select signals change.

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

- Behavioral Modeling
- `always @(*)`
- Procedural (blocking) assignments (`=`)
- `case` statements
- `reg` outputs

No continuous assignment (`assign`) statements or gate primitives are used.

---

 Characteristics

- Combinational circuit
- No memory elements
- No clock signal required
- Output depends only on present inputs
- Routes one input to one selected output
- Uses procedural logic for data routing

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
- Implement demultiplexers using Behavioral Modeling.
- Use `case` statements to route data.
- Develop combinational circuits using procedural logic.
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

The **Demultiplexers – Behavioral Modeling** projects demonstrate how a single input signal can be routed to one of several outputs
using procedural logic in Verilog. By implementing 1×4 and 1×8 demultiplexers with `always` blocks and `case` statements, this folder 
introduces an essential combinational circuit used for data distribution, signal routing, and digital communication systems.
