 Decoders Using Tasks in Verilog

**Author:** Halima Diyauddeen

---

 Overview

This folder contains the implementation of **digital decoders** using **Tasks** in Verilog. A decoder is a combinational circuit that
converts an **n-bit binary input** into one of **2ⁿ unique output lines**. For every valid binary input, only one output line is asserted 
while all remaining outputs remain inactive.

In these projects, **tasks are used within the testbench** to apply input combinations and test vectors efficiently. Using tasks 
eliminates repetitive code, improves readability, and makes the verification process more organized.

---

 Objective

- Understand the operation of digital decoders.
- Learn how to use tasks in Verilog testbenches.
- Practice creating reusable procedures for applying test vectors.
- Reduce repetitive code during simulation.
- Verify decoder functionality efficiently.

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

 Tasks in the Testbench

A **task** is used to group repeated operations into a reusable block of code. Instead of manually assigning input values for every test
case, a task is called with different arguments to generate multiple test vectors.

Example:

```verilog
task apply_test;

    input [2:0] in;

    begin
        data = in;
        #10;
    end

endtask
```

Calling the task:

```verilog
initial begin

    apply_test(3'b000);
    apply_test(3'b001);
    apply_test(3'b010);
    apply_test(3'b011);
    apply_test(3'b100);
    apply_test(3'b101);
    apply_test(3'b110);
    apply_test(3'b111);

end
```

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

The projects use:

- Module instantiation for the DUT
- Tasks for applying test vectors
- Procedural blocks (`initial`)
- Timing delays (`#`)
- `$monitor` for observing outputs

The DUT implements the decoder logic, while the task simplifies the verification process by applying different input combinations.

---

 Characteristics

- Combinational circuit
- Reusable task for applying test cases
- Reduced repetitive code
- Improved readability and maintainability
- Easy to extend with additional test vectors
- Faster verification process

---

 Simulation

Each decoder is verified using a dedicated testbench that repeatedly calls a task to apply different binary input combinations.

Example:

```verilog
initial begin

    apply_test(2'b00);
    apply_test(2'b01);
    apply_test(2'b10);
    apply_test(2'b11);

end
```

The outputs are monitored after each task call to ensure the correct output line is activated.

---

 Learning Outcomes

After completing this folder, you should be able to:

- Understand the operation of decoders.
- Write reusable tasks in Verilog.
- Apply test vectors using task calls.
- Improve testbench organization and readability.
- Verify combinational circuits more efficiently.

---

 Applications

Decoders and Verilog tasks are widely used in:

- Memory address decoding
- Memory chip selection
- Instruction decoding
- Display systems
- Control units
- FPGA verification
- ASIC verification
- Digital system testing
- Automated testbench development

---

 Conclusion

The **Decoders Using Tasks in Verilog** projects demonstrate how reusable tasks can simplify the verification of digital decoders. By 
encapsulating repetitive stimulus generation into tasks, the testbenches become cleaner, more modular, and easier to maintain. This 
approach improves verification efficiency while reinforcing the use of tasks as an essential feature of professional Verilog testbench 
development.
