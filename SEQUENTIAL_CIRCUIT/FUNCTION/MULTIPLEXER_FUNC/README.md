 Multiplexers Using Functions in Verilog

**Author:** Halima Diyauddeen

---

 Overview

This folder contains the implementation of **digital multiplexers (MUX)** using **Functions** in Verilog. A multiplexer is a combinational
circuit that selects one of several input signals and forwards it to a single output based on the value of the select lines. It is 
commonly referred to as a **data selector** because it selects one input from multiple available inputs.

In these projects, **functions are used to implement the selection logic**. By encapsulating the multiplexer operation inside a function,
the design becomes more modular, reusable, and easier to understand. Since functions execute in **zero simulation time** and return a 
single value, they are well suited for combinational logic such as multiplexers.

---

 Objective

- Understand the operation of digital multiplexers.
- Learn how to use functions in Verilog.
- Implement combinational logic using functions.
- Improve code modularity and readability.
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

 Functions in the Design

A **function** is used to perform the multiplexer selection logic and return the selected input value.

Example:

```verilog
function mux;

    input [3:0] in;
    input [1:0] sel;

    begin
        case (sel)
            2'b00: mux = in[0];
            2'b01: mux = in[1];
            2'b10: mux = in[2];
            2'b11: mux = in[3];
        endcase
    end

endfunction
```

Calling the function:

```verilog
assign y = mux(data, select);
```

The function evaluates the select lines and returns the corresponding input to the output.

---

 Multiplexer Operation

A multiplexer selects one input signal and forwards it to the output according to the select lines.

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

The projects use:

- Functions for selection logic
- Module instantiation in the testbench
- Continuous assignments (`assign`)
- `case` statements
- Procedural blocks (`initial`)
- `$monitor` for observing outputs

The function performs the combinational selection, while the testbench verifies the design by applying different input combinations.

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

Each multiplexer is verified using a dedicated testbench that applies different combinations of input values and select signals while
monitoring the output.

Example:

```verilog
initial begin

    data = 4'b1010; select = 2'b00; #10;
    data = 4'b1010; select = 2'b01; #10;
    data = 4'b1010; select = 2'b10; #10;
    data = 4'b1010; select = 2'b11; #10;

end
```

The output is checked after each input combination to verify that the correct input is selected.

---

 Learning Outcomes

After completing this folder, you should be able to:

- Understand the operation of multiplexers.
- Write reusable functions in Verilog.
- Implement combinational logic using functions.
- Improve code organization and readability.
- Verify multiplexer functionality through simulation.

---

 Applications

Multiplexers and Verilog functions are widely used in:

- Data selection
- Bus routing
- Communication systems
- Arithmetic Logic Units (ALUs)
- FPGA designs
- ASIC designs
- Digital signal processing
- Embedded systems

---

 Conclusion

The **Multiplexers Using Functions in Verilog** projects demonstrate how functions can simplify the implementation of combinational logic 
by encapsulating the selection process into a reusable block of code. Because functions execute in zero simulation time and return a 
single value, they are ideal for multiplexer designs, resulting in cleaner, more modular, and maintainable Verilog code.
