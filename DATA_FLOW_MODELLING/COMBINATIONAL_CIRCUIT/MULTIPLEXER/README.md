Multiplexers – Dataflow Modeling

**Author:** Halima Diyauddeen

---

 Overview

This folder contains the implementation of **digital multiplexers (MUX)** using **Dataflow Modeling** in Verilog. A multiplexer is a 
combinational circuit that selects one of several input signals and forwards it to a single output based on the value of the select 
lines. It is commonly referred to as a **data selector** because it chooses one input from multiple available inputs.

The designs in this folder use continuous assignment statements (`assign`) and Verilog operators to implement the selection logic. 
Since multiplexers are combinational circuits, their outputs depend only on the current input values and the select line values.

---

 Objective

- Understand the operation of digital multiplexers.
- Learn how to implement multiplexers using Dataflow Modeling.
- Practice using continuous assignment statements (`assign`).
- Understand how select lines control data selection.
- Verify multiplexer functionality through simulation.

---

 Circuits Included

This folder contains the following multiplexer implementations:

- 4×1 Multiplexer
- 8×1 Multiplexer

Each project includes:

- Design Under Test (DUT)
- Testbench
- Project README

---

 Dataflow Modeling

Dataflow Modeling describes the relationship between inputs and outputs using continuous assignment statements.

Example:

```verilog
assign y = (sel == 2'b00) ? i0 :
           (sel == 2'b01) ? i1 :
           (sel == 2'b10) ? i2 :
                            i3;
```

The output is continuously updated whenever the input or select signals change.

---

 Multiplexer Operation

A multiplexer selects one input signal and forwards it to the output based on the select lines.

Example for a **4×1 Multiplexer**:

| Select Input | Output |
|:------------:|:------:|
| `00` | `i0` |
| `01` | `i1` |
| `10` | `i2` |
| `11` | `i3` |

Only one input is connected to the output at any given time.

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
- Selects one input from multiple inputs
- Controlled by select lines

---

 Simulation

Each multiplexer is verified using a dedicated testbench that applies different combinations of input and select signals while 
monitoring the output.

Example:

```verilog
i0 = 0;
i1 = 1;
i2 = 0;
i3 = 1;

sel = 2'b00; #10;
sel = 2'b01; #10;
sel = 2'b10; #10;
sel = 2'b11; #10;
```

---

 Learning Outcomes

After completing this folder, you should be able to:

- Understand the operation of digital multiplexers.
- Implement multiplexers using Dataflow Modeling.
- Select data using control (select) lines.
- Use continuous assignment statements and conditional operators effectively.
- Verify multiplexer functionality through simulation.

---

 Applications

Multiplexers are widely used in:

- Data selection
- Data routing
- Communication systems
- Arithmetic Logic Units (ALUs)
- Bus switching
- Control units
- FPGA designs
- ASIC designs
- Embedded systems

---

 Conclusion

The **Multiplexers – Dataflow Modeling** projects demonstrate how one of several input signals can be selected and routed to a single 
output using continuous assignments in Verilog. By implementing 4×1 and 8×1 multiplexers, this folder introduces an essential 
combinational circuit widely used for data selection, signal routing, and digital system design.
