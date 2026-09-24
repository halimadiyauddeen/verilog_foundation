 Comparators Using Functions in Verilog

**Author:** Halima Diyauddeen

---

 Overview

This folder contains the implementation of **digital comparators** using **Functions** in Verilog. A comparator is a combinational circuit
that compares two binary numbers and determines whether the first number is **greater than**, **less than**, or **equal to** the second 
number.

In these projects, **functions are used to implement the comparison logic**. By encapsulating the comparison operation inside a function,
the design becomes more modular, reusable, and easier to maintain. Since functions execute in **zero simulation time** and return a
single value, they are well suited for implementing combinational circuits such as comparators.

---

 Objective

- Understand the operation of digital comparators.
- Learn how to use functions in Verilog.
- Implement combinational logic using functions.
- Improve code modularity and readability.
- Verify comparator functionality through simulation.

---

 Circuits Included

This folder contains the following comparator implementations:

- 2-Bit Comparator
- 3-Bit Comparator

Each project includes:

- Design Under Test (DUT)
- Testbench
- Project README

---

 Functions in the Design

A **function** is used to perform the comparison operation and return the comparison result.

Example:

```verilog
function [1:0] compare;

    input [2:0] a;
    input [2:0] b;

    begin
        if (a > b)
            compare = 2'b10;
        else if (a < b)
            compare = 2'b01;
        else
            compare = 2'b00;
    end

endfunction
```

Calling the function:

```verilog
assign result = compare(A, B);
```

The function evaluates the two input values and returns the corresponding comparison result.

---

 Comparator Operation

A comparator compares two binary numbers and generates one of three possible results.

| Comparison | Meaning |
|:----------:|---------|
| `A > B` | The first input is greater than the second input |
| `A < B` | The first input is less than the second input |
| `A = B` | Both inputs are equal |

Only one comparison result is valid for any given pair of input values.

---

 Verilog Implementation

The projects use:

- Functions for comparison logic
- Continuous assignments (`assign`)
- Relational operators (`>`, `<`, `==`)
- `if-else` statements
- Module instantiation in the testbench
- Procedural blocks (`initial`)
- `$monitor` for observing outputs

The function performs the comparison, while the testbench verifies the design using different input combinations.

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

Each comparator is verified using a dedicated testbench that applies different combinations of input values while monitoring the outputs.

Example:

```verilog
initial begin

    A = 3'b000; B = 3'b000; #10;
    A = 3'b101; B = 3'b011; #10;
    A = 3'b001; B = 3'b110; #10;
    A = 3'b111; B = 3'b111; #10;

end
```

The outputs are checked after each input combination to verify that the comparator correctly identifies whether the first input is 
greater than, less than, or equal to the second input.

---

 Learning Outcomes

After completing this folder, you should be able to:

- Understand the operation of digital comparators.
- Write reusable functions in Verilog.
- Implement comparison logic using functions.
- Improve code organization and readability.
- Verify comparator functionality through simulation.

---

 Applications

Comparators and Verilog functions are widely used in:

- Arithmetic Logic Units (ALUs)
- Digital processors
- Sorting circuits
- Address comparison
- Decision-making systems
- FPGA designs
- ASIC designs
- Embedded systems

---

 Conclusion

The **Comparators Using Functions in Verilog** projects demonstrate how functions can simplify the implementation of comparison logic by 
encapsulating the comparison process into a reusable block of code. Because functions execute in zero simulation time and return a single
value, they provide a clean, modular, and efficient approach to implementing comparator designs in Verilog.
