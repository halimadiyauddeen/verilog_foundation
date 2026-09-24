 Comparators Using Tasks in Verilog

**Author:** Halima Diyauddeen

---

 Overview

This folder contains the implementation of **digital comparators** using **Tasks** in Verilog. A comparator is a combinational circuit 
that compares two binary numbers and determines whether one number is **greater than**, **less than**, or **equal to** the other.

In these projects, **tasks are used within the testbench** to apply input combinations and test vectors efficiently. Using tasks 
eliminates repetitive code, improves readability, and makes the verification process more organized.

---

 Objective

- Understand the operation of digital comparators.
- Learn how to use tasks in Verilog testbenches.
- Practice creating reusable procedures for applying test vectors.
- Reduce repetitive code during simulation.
- Verify comparator functionality efficiently.

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

 Tasks in the Testbench

A **task** is used to group repeated operations into a reusable block of code. Instead of manually assigning input values for every test
case, a task is called with different arguments to generate multiple test vectors.

Example:

```verilog
task apply_test;

    input [2:0] a;
    input [2:0] b;

    begin
        A = a;
        B = b;
        #10;
    end

endtask
```

Calling the task:

```verilog
initial begin

    apply_test(3'b000, 3'b000);
    apply_test(3'b001, 3'b010);
    apply_test(3'b101, 3'b011);
    apply_test(3'b111, 3'b111);

end
```

---

 Comparator Operation

A comparator compares two binary numbers and generates one of three outputs.

| Output | Description |
|:------:|-------------|
| `greater` | High when the first input is greater than the second input |
| `equal` | High when both inputs are equal |
| `less` | High when the first input is less than the second input |

Only one output is asserted for each comparison.

---

 Verilog Implementation

The projects use:

- Module instantiation for the DUT
- Tasks for applying test vectors
- Procedural blocks (`initial`)
- Timing delays (`#`)
- `$monitor` for observing outputs

The DUT performs the comparison logic, while the task simplifies the verification process by applying different input combinations.

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

Each comparator is verified using a dedicated testbench that repeatedly calls a task to apply different combinations of input values.

Example:

```verilog
initial begin

    apply_test(2'b00, 2'b00);
    apply_test(2'b01, 2'b10);
    apply_test(2'b11, 2'b01);
    apply_test(2'b10, 2'b10);

end
```

The outputs are monitored after each task call to verify whether the first input is greater than, equal to, or less than the second input.

---

 Learning Outcomes

After completing this folder, you should be able to:

- Understand the operation of digital comparators.
- Write reusable tasks in Verilog.
- Apply test vectors using task calls.
- Improve testbench organization and readability.
- Verify combinational circuits more efficiently.

---

 Applications

Comparators and Verilog tasks are widely used in:

- Arithmetic Logic Units (ALUs)
- Digital processors
- Sorting circuits
- Address comparison
- Decision-making circuits
- FPGA verification
- ASIC verification
- Digital system testing
- Automated testbench development

---

 Conclusion

The **Comparators Using Tasks in Verilog** projects demonstrate how reusable tasks can simplify the verification of digital comparators.
By encapsulating repetitive stimulus generation into tasks, the testbenches become cleaner, more modular, and easier to maintain. This 
approach improves verification efficiency while reinforcing the use of tasks as an essential feature of professional Verilog testbench 
development.
