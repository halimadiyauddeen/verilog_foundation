 Demultiplexers Using Functions in Verilog

**Author:** Halima Diyauddeen

---

 Overview

This folder contains the implementation of **digital demultiplexers (DEMUX)** using **Functions** in Verilog. A demultiplexer is a 
combinational circuit that routes a single input signal to one of several output lines based on the value of the select lines. 
It performs the opposite function of a multiplexer by distributing one input to multiple outputs.

In these projects, **functions are used to implement the routing logic**. By encapsulating the selection process inside a function, the
design becomes more modular, reusable, and easier to understand. Since functions execute in **zero simulation time** and return a single
value, they are well suited for implementing combinational logic.

---

 Objective

- Understand the operation of digital demultiplexers.
- Learn how to use functions in Verilog.
- Implement combinational logic using functions.
- Improve code modularity and readability.
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

 Functions in the Design

A **function** is used to determine which output line should receive the input signal based on the select lines.

Example:

```verilog
function [3:0] demux;

    input d;
    input [1:0] sel;

    begin
        case (sel)
            2'b00: demux = {3'b000, d};
            2'b01: demux = {2'b00, d, 1'b0};
            2'b10: demux = {1'b0, d, 2'b00};
            2'b11: demux = {d, 3'b000};
        endcase
    end

endfunction
```

Calling the function:

```verilog
assign y = demux(data, select);
```

The function evaluates the select lines and returns the output vector with the input signal routed to the selected output.

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

The projects use:

- Functions for routing logic
- Module instantiation in the testbench
- Continuous assignments (`assign`)
- `case` statements
- Procedural blocks (`initial`)
- `$monitor` for observing outputs

The function performs the combinational routing, while the testbench verifies the design using different combinations of input and select 
signals.

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

Each demultiplexer is verified using a dedicated testbench that applies different combinations of the input signal and select lines while 
monitoring the outputs.

Example:

```verilog
initial begin

    data = 1'b1; select = 2'b00; #10;
    data = 1'b1; select = 2'b01; #10;
    data = 1'b1; select = 2'b10; #10;
    data = 1'b1; select = 2'b11; #10;

end
```

The outputs are checked after each input combination to verify that the input signal is routed to the correct output line.

---

 Learning Outcomes

After completing this folder, you should be able to:

- Understand the operation of demultiplexers.
- Write reusable functions in Verilog.
- Implement combinational logic using functions.
- Improve code organization and readability.
- Verify demultiplexer functionality through simulation.

---

 Applications

Demultiplexers and Verilog functions are widely used in:

- Data distribution
- Signal routing
- Communication systems
- Memory addressing
- FPGA designs
- ASIC designs
- Embedded systems
- Digital control systems

---

 Conclusion

The **Demultiplexers Using Functions in Verilog** projects demonstrate how functions can simplify the implementation of combinational
routing logic by encapsulating the selection process into a reusable block of code. Because functions execute in zero simulation time and 
return a single value, they provide a clean, modular, and efficient approach to implementing demultiplexer designs in Verilog.
