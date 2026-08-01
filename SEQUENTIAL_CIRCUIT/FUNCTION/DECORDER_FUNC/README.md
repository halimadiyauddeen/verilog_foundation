 Decoders Using Functions in Verilog

**Author:** Halima Diyauddeen

---

 Overview

This folder contains the implementation of **digital decoders** using **Functions** in Verilog. A decoder is a combinational circuit that 
converts an **n-bit binary input** into one of **2ⁿ unique output lines**. For every valid binary input, only one output line is 
activated while all remaining outputs remain inactive.
In these projects, **functions are used to implement the decoding logic**. By encapsulating the decoding operation inside a function, 
the design becomes more modular, reusable, and easier to maintain. Since functions execute in **zero simulation time** and return a 
single value, they are well suited for implementing combinational logic such as decoders.

---

 Objective

- Understand the operation of digital decoders.
- Learn how to use functions in Verilog.
- Implement combinational logic using functions.
- Improve code modularity and readability.
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

 Functions in the Design

A **function** is used to perform the decoding operation and return the corresponding output vector.

Example:

```verilog
function [3:0] decoder;

    input [1:0] in;

    begin
        case (in)
            2'b00: decoder = 4'b0001;
            2'b01: decoder = 4'b0010;
            2'b10: decoder = 4'b0100;
            2'b11: decoder = 4'b1000;
            default: decoder = 4'b0000;
        endcase
    end

endfunction
```

Calling the function:

```verilog
assign y = decoder(data);
```

The function evaluates the binary input and returns the corresponding one-hot output.

---

 Decoder Operation

A decoder activates one output line corresponding to the applied binary input.

Example for a **2×4 Decoder**:

| Binary Input | Active Output |
|:------------:|:-------------:|
| `00` | `y0` |
| `01` | `y1` |
| `10` | `y2` |
| `11` | `y3` |

Only one output is active for each valid input combination.

---

 Verilog Implementation

The projects use:

- Functions for decoding logic
- Module instantiation in the testbench
- Continuous assignments (`assign`)
- `case` statements
- Procedural blocks (`initial`)
- `$monitor` for observing outputs

The function performs the combinational decoding, while the testbench verifies the design using different input combinations.

---

 Characteristics

- Combinational circuit
- Function returns one value
- Zero simulation time
- Modular and reusable design
- Reduced repetitive code
- Improved readability and maintainability

---

 Simulation

Each decoder is verified using a dedicated testbench that applies different binary input combinations while monitoring the outputs.

Example:

```verilog
initial begin

    data = 2'b00; #10;
    data = 2'b01; #10;
    data = 2'b10; #10;
    data = 2'b11; #10;

end
```

The outputs are checked after each input combination to verify that the correct output line is activated.

---

 Learning Outcomes

After completing this folder, you should be able to:

- Understand the operation of decoders.
- Write reusable functions in Verilog.
- Implement combinational logic using functions.
- Improve code organization and readability.
- Verify decoder functionality through simulation.

---

 Applications

Decoders and Verilog functions are widely used in:

- Memory address decoding
- Chip selection
- Instruction decoding
- Display systems
- Control units
- FPGA designs
- ASIC designs
- Embedded systems

---

 Conclusion

The **Decoders Using Functions in Verilog** projects demonstrate how functions can simplify the implementation of combinational decoding
logic by encapsulating the decoding process into a reusable block of code. Because functions execute in zero simulation time and return a 
single value, they provide a clean, modular, and efficient approach to implementing decoder designs in Verilog.
