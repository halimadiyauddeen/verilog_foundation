 Decoders – Behavioral Modeling

**Author:** Halima Diyauddeen

---

 Overview

This folder contains the implementation of **digital decoders** using **Behavioral Modeling** in Verilog. A decoder is a combinational 
circuit that converts an *n*-bit binary input into one of **2ⁿ** unique output lines. For every valid binary input, only one output is
asserted while all remaining outputs remain inactive.

The designs in this folder use `always` blocks and procedural statements to implement the decoding logic. Since decoders are
combinational circuits, their outputs depend only on the current input values.

---

 Objective

- Understand the operation of digital decoders.
- Learn how to implement decoders using Behavioral Modeling.
- Practice using `always` blocks and procedural assignments.
- Understand binary decoding techniques.
- Verify decoder functionality through simulation.

---

 Circuits Included

This folder contains the following decoder implementations:

- 2×4 Decoder
- 3×8 Decoder

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

    case (a)

        2'b00: y = 4'b0001;
        2'b01: y = 4'b0010;
        2'b10: y = 4'b0100;
        2'b11: y = 4'b1000;

    endcase

end
```

The `always @(*)` block ensures that the outputs are updated whenever the input changes.

---

 Decoder Operation

A decoder activates one output line corresponding to the applied binary input.

Example for a **2×4 Decoder**:

| Input | Active Output |
|:-----:|:-------------:|
| `00` | `y0` |
| `01` | `y1` |
| `10` | `y2` |
| `11` | `y3` |

Only one output is active for each valid input combination.

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
- Uses procedural logic
- Activates one output line at a time

---

 Simulation

Each decoder is verified using a dedicated testbench that applies all possible input combinations and monitors the corresponding 
outputs.

Example:

```verilog
a = 2'b00; #10;
a = 2'b01; #10;
a = 2'b10; #10;
a = 2'b11; #10;
```

---

 Learning Outcomes

After completing this folder, you should be able to:

- Understand the operation of digital decoders.
- Implement decoders using Behavioral Modeling.
- Use `case` statements to perform binary decoding.
- Develop combinational circuits using procedural logic.
- Verify decoder functionality through simulation.

---

 Applications

Decoders are widely used in:

- Memory address decoding
- Memory chip selection
- Instruction decoding
- Display systems
- Digital communication systems
- Control units
- FPGA designs
- ASIC designs

---

 Conclusion

The **Decoders – Behavioral Modeling** projects demonstrate how binary input values can be translated into unique output lines using
procedural logic in Verilog. By implementing 2×4 and 3×8 decoders with `always` blocks and `case` statements, this folder introduces a
fundamental combinational circuit widely used for address decoding, control logic, and digital system design.
