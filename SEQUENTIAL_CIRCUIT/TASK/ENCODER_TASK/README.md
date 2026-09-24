 Encoders Using Tasks in Verilog

**Author:** Halima Diyauddeen

---

 Overview

This folder contains the implementation of **digital encoders** using **Tasks** in Verilog. An encoder is a combinational circuit that 
converts multiple input lines into a smaller number of binary output lines. It performs the inverse operation of a decoder by encoding 
the active input into its corresponding binary representation.

In these projects, **tasks are used within the testbench** to apply input combinations and test vectors efficiently. Using tasks 
eliminates repetitive code, improves readability, and makes the verification process more organized.

---

 Objective

- Understand the operation of digital encoders.
- Learn how to use tasks in Verilog testbenches.
- Practice creating reusable procedures for applying test vectors.
- Reduce repetitive code during simulation.
- Verify encoder functionality efficiently.

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

 Tasks in the Testbench

A **task** is used to group repeated operations into a reusable block of code. Instead of manually assigning input values for every test 
case, a task is called with different arguments to generate multiple test vectors.

Example:

```verilog
task apply_test;

    input [7:0] in;

    begin
        data = in;
        #10;
    end

endtask
```

Calling the task:

```verilog
initial begin

    apply_test(8'b00000001);
    apply_test(8'b00000010);
    apply_test(8'b00000100);
    apply_test(8'b00001000);

end
```

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

- Module instantiation for the DUT
- Tasks for applying test vectors
- Procedural blocks (`initial`)
- Timing delays (`#`)
- `$monitor` for observing outputs

The DUT implements the encoder logic, while the task simplifies the verification process by applying different input combinations.

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

Each encoder is verified using a dedicated testbench that repeatedly calls a task to apply different input combinations.

Example:

```verilog
initial begin

    apply_test(4'b0001);
    apply_test(4'b0010);
    apply_test(4'b0100);
    apply_test(4'b1000);

end
```

The outputs are monitored after each task call to ensure the correct binary code is generated.

---

 Learning Outcomes

After completing this folder, you should be able to:

- Understand the operation of encoders.
- Write reusable tasks in Verilog.
- Apply test vectors using task calls.
- Improve testbench organization and readability.
- Verify combinational circuits more efficiently.

---

 Applications

Encoders and Verilog tasks are widely used in:

- Keyboard encoding
- Interrupt controllers
- Data compression
- Communication systems
- FPGA verification
- ASIC verification
- Digital system testing
- Automated testbench development

---

 Conclusion

The **Encoders Using Tasks in Verilog** projects demonstrate how reusable tasks can simplify the verification of digital encoders. By 
encapsulating repetitive stimulus generation into tasks, the testbenches become cleaner, more modular, and easier to maintain. This 
approach improves verification efficiency while reinforcing the use of tasks as an essential feature of professional Verilog testbench 
development.
