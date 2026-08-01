 Multiplexers – Gate-Level Modeling

**Author:** Halima Diyauddeen

---

 Overview

This folder contains the implementation of **digital multiplexers (MUX)** using **Gate-Level Modeling** in Verilog. A multiplexer is a
combinational circuit that selects one of several input signals and forwards it to a single output based on the value of the select 
lines. It is commonly referred to as a **data selector** because it chooses one input from multiple available inputs.

The designs in this folder are constructed by interconnecting Verilog's built-in gate primitives such as `and`, `or`, and `not`. This 
approach closely represents the actual hardware implementation of a multiplexer.

---

 Objective

- Understand the operation of digital multiplexers.
- Learn how to implement multiplexers using Gate-Level Modeling.
- Practice building combinational circuits using gate primitives.
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

 Gate-Level Modeling

Gate-Level Modeling describes a digital circuit by connecting Verilog's built-in logic gate primitives.

Example:

```verilog
not n1(sel0_bar, sel[0]);
not n2(sel1_bar, sel[1]);

and a1(w0, i0, sel1_bar, sel0_bar);
and a2(w1, i1, sel1_bar, sel[0]);
and a3(w2, i2, sel[1], sel0_bar);
and a4(w3, i3, sel[1], sel[0]);

or o1(y, w0, w1, w2, w3);
```

In this example:

- `not` gates generate the complemented select signals.
- `and` gates enable only the selected input.
- The `or` gate combines the enabled signal to produce the final output.

The output is automatically updated whenever the input or select signals change.

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

- Gate-Level Modeling
- Built-in gate primitives
- Gate instantiation
- Wire outputs

No `always` blocks or continuous assignment (`assign`) statements are used.

---

 Gate Primitives Used

The multiplexer designs make use of the following Verilog gate primitives:

| Gate Primitive | Purpose |
|:--------------:|---------|
| `not` | Generates complemented select signals |
| `and` | Enables the selected input |
| `or` | Combines the enabled signal to produce the output |

---

 Characteristics

- Combinational circuit
- No memory elements
- No clock signal required
- Output depends only on present inputs
- Built using interconnected logic gates
- Selects one input from multiple inputs

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
- Implement multiplexers using Gate-Level Modeling.
- Construct selection logic using gate primitives.
- Understand how interconnected logic gates perform data selection.
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

The **Multiplexers – Gate-Level Modeling** projects demonstrate how one of several input signals can be selected and routed to a single
output by interconnecting Verilog's built-in gate primitives. By implementing 4×1 and 8×1 multiplexers at the gate level, this folder 
provides a practical understanding of hardware-oriented digital design and illustrates how combinational circuits are constructed from
fundamental logic gates.
