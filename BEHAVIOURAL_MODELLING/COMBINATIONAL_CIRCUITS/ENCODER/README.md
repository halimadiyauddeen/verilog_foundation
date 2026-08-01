 Encoders – Behavioral Modeling

**Author:** Halima Diyauddeen

---

 Overview

This folder contains the implementation of **digital encoders** using **Behavioral Modeling** in Verilog. An encoder is a 
combinational circuit that converts multiple input lines into a smaller number of binary output lines. It performs the inverse
operation of a decoder by encoding the active input into its corresponding binary representation.

The designs in this folder use `always` blocks and procedural statements to implement the encoding logic. Since encoders are
combinational circuits, their outputs depend only on the current input values.

---

 Objective

- Understand the operation of digital encoders.
- Learn how to implement encoders using Behavioral Modeling.
- Practice using `always` blocks and procedural assignments.
- Understand binary encoding techniques.
- Verify encoder functionality through simulation.

---

 Circuits Included

This folder contains the following encoder implementations:

- 4×2 Encoder
- 8×3 Encoder

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

    case (1'b1)

        i0: y = 2'b00;
        i1: y = 2'b01;
        i2: y = 2'b10;
        i3: y = 2'b11;

        default: y = 2'b00;

    endcase

end
```

The `always @(*)` block ensures that the outputs are updated whenever the input changes.

---

 Encoder Operation

An encoder converts one active input into its corresponding binary output.

Example for a **4×2 Encoder**:

| Active Input | Binary Output |
|:------------:|:-------------:|
| `i0` | `00` |
| `i1` | `01` |
| `i2` | `10` |
| `i3` | `11` |

 **Note:** A basic encoder assumes that only one input is active at a time. If multiple inputs are active simultaneously, the output
is undefined unless a priority encoder is used.

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
- Converts active input lines into binary outputs

---

 Simulation

Each encoder is verified using a dedicated testbench that activates one input at a time and monitors the corresponding binary output.

Example:

```verilog
i0 = 1; i1 = 0; i2 = 0; i3 = 0; #10;
i0 = 0; i1 = 1; i2 = 0; i3 = 0; #10;
i0 = 0; i1 = 0; i2 = 1; i3 = 0; #10;
i0 = 0; i1 = 0; i2 = 0; i3 = 1; #10;
```

---

 Learning Outcomes

After completing this folder, you should be able to:

- Understand the operation of digital encoders.
- Implement encoders using Behavioral Modeling.
- Use `case` statements to perform binary encoding.
- Develop combinational circuits using procedural logic.
- Verify encoder functionality through simulation.

---

 Applications

Encoders are widely used in:

- Keyboard encoding
- Interrupt controllers
- Data compression
- Digital communication systems
- Memory address generation
- Control units
- FPGA designs
- ASIC designs

---

 Conclusion

The **Encoders – Behavioral Modeling** projects demonstrate how multiple input signals can be converted into compact binary 
representations using procedural logic in Verilog. By implementing 4×2 and 8×3 encoders with `always` blocks and `case` statements, 
this folder introduces an essential combinational circuit used for data encoding, control logic, and digital communication systems.
