 Encoders Using Functions in Verilog

**Author:** Halima Diyauddeen

---

 Overview

This folder contains the implementation of **digital encoders** using **Functions** in Verilog. An encoder is a combinational circuit 
hat converts one active input line into its corresponding binary output code. It performs the opposite function of a decoder by reducing
multiple input lines into fewer output bits.

In these projects, **functions are used to implement the encoding logic**. By placing the encoding operation inside a function, the
design becomes more modular, reusable, and easier to maintain. Since functions execute in **zero simulation time** and return a single 
value, they are ideal for implementing combinational circuits such as encoders.

---

 Objective

- Understand the operation of digital encoders.
- Learn how to use functions in Verilog.
- Implement combinational logic using functions.
- Improve code modularity and readability.
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

 Functions in the Design

A **function** is used to perform the encoding operation and return the corresponding binary output.

Example:

```verilog
function [1:0] encoder;

    input [3:0] in;

    begin
        case (in)
            4'b0001: encoder = 2'b00;
            4'b0010: encoder = 2'b01;
            4'b0100: encoder = 2'b10;
            4'b1000: encoder = 2'b11;
            default: encoder = 2'b00;
        endcase
    end

endfunction
```

Calling the function:

```verilog
assign y = encoder(data);
```

The function evaluates the active input and returns the corresponding binary code.

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

 **Note:** A basic encoder assumes that only one input is active at a time. If multiple inputs are active simultaneously, the output is 
 undefined unless a priority encoder is used.

---

 Verilog Implementation

The projects use:

- Functions for encoding logic
- Module instantiation in the testbench
- Continuous assignments (`assign`)
- `case` statements
- Procedural blocks (`initial`)
- `$monitor` for observing outputs

The function performs the combinational encoding, while the testbench verifies the design using different input combinations.

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

Each encoder is verified using a dedicated testbench that applies different input combinations while monitoring the output.

Example:

```verilog
initial begin

    data = 4'b0001; #10;
    data = 4'b0010; #10;
    data = 4'b0100; #10;
    data = 4'b1000; #10;

end
```

The output is checked after each input combination to verify that the correct binary code is generated.

---

 Learning Outcomes

After completing this folder, you should be able to:

- Understand the operation of encoders.
- Write reusable functions in Verilog.
- Implement combinational logic using functions.
- Improve code organization and readability.
- Verify encoder functionality through simulation.

---

 Applications

Encoders and Verilog functions are widely used in:

- Keyboard encoding
- Interrupt controllers
- Data compression
- Communication systems
- Priority encoding
- FPGA designs
- ASIC designs
- Embedded systems

---
 Conclusion

The **Encoders Using Functions in Verilog** projects demonstrate how functions can simplify the implementation of combinational logic by 
encapsulating the encoding process into a reusable block of code. Because functions execute in zero simulation time and return a single
value, they provide a clean, modular, and efficient approach to implementing encoder designs in Verilog.
