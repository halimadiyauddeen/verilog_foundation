 Tasks in Verilog

**Author:** Halima Diyauddeen

---

 Overview

This folder contains examples of using **Tasks** in Verilog. A task is a reusable procedural block that groups multiple statements 
together and performs a specific operation. Tasks help reduce code duplication, improve readability, and simplify the development of 
both design modules and testbenches.

Unlike functions, tasks can contain multiple statements, include timing controls, and return values through output or inout arguments.
They are commonly used in testbenches to generate stimulus, apply test vectors, perform repetitive operations, and improve code 
organization.

---

 Objective

- Understand the concept of tasks in Verilog.
- Learn how to define and call tasks.
- Practice using input, output, and inout arguments.
- Understand the differences between tasks and functions.
- Improve code reusability and readability.

---

 What is a Task?

A **task** is a named procedural block that performs one or more operations when called. It allows designers to write reusable code
instead of repeating the same statements multiple times.

A task can:

- Accept multiple inputs.
- Return multiple outputs.
- Contain multiple procedural statements.
- Include timing controls such as `#` delays and event controls.
- Be called multiple times from different procedural blocks.

---

 Task Syntax

General syntax:

```verilog
task task_name;

    input  input_signal;
    output output_signal;

    begin
        // Task statements
    end

endtask
```

Example:

```verilog
task apply_inputs;

    input a;
    input b;

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

    apply_inputs(0, 0);
    apply_inputs(0, 1);
    apply_inputs(1, 0);
    apply_inputs(1, 1);

end
```

---

 Components of a Task

A task may contain:

- Input arguments
- Output arguments
- Inout arguments
- Local variables
- Procedural statements
- Timing controls
- Loops
- Conditional statements

---

 Characteristics of Tasks

- Can contain multiple statements.
- Can have zero or more input arguments.
- Can return multiple outputs.
- May include delays (`#`) and event controls (`@`).
- Can call other tasks and functions.
- Improve code modularity and reusability.

---

 Advantages

- Reduces repetitive code.
- Improves code readability.
- Makes testbenches easier to maintain.
- Encourages modular programming.
- Simplifies complex verification environments.

---

 Limitations

- Cannot be used directly in continuous assignments (`assign`).
- Must be called from procedural blocks such as `initial` or `always`.
- Cannot be instantiated like a module.
- Tasks defined inside a module are local to that module unless otherwise made accessible.

---

 Tasks vs Functions

| Feature | Task | Function |
|---------|------|----------|
| Can contain multiple statements | Yes | Yes |
| Can include timing controls (`#`, `@`) | Yes | No |
| Returns multiple values | Yes | No (returns one value) |
| Input arguments | Yes | Yes |
| Output/Inout arguments | Yes | No |
| Can call another task | Yes | Yes |
| Typically used for | Testbenches and reusable procedures | Combinational calculations |

---

 Typical Design Flow

The general workflow when using tasks is:

1. Identify repetitive code.
2. Create a task containing the repeated statements.
3. Define the required input, output, or inout arguments.
4. Call the task whenever needed.
5. Simulate and verify the results.

---

 Simulation

Tasks are commonly used in testbenches to apply multiple test vectors efficiently.

Example:

```verilog
initial begin

    apply_inputs(0, 0);
    apply_inputs(0, 1);
    apply_inputs(1, 0);
    apply_inputs(1, 1);

end
```

This approach makes the testbench cleaner and easier to understand compared to writing each assignment separately.

---

 Learning Outcomes

After completing this folder, you should be able to:

- Define and use tasks in Verilog.
- Pass data using input, output, and inout arguments.
- Use timing controls within tasks.
- Reduce repetitive code through reusable procedures.
- Write cleaner and more maintainable testbenches.

---

 Applications

Tasks are widely used in:

- Testbench development
- Applying test vectors
- Stimulus generation
- Verification environments
- Reusable verification procedures
- Digital system testing
- FPGA verification
- ASIC verification

---

 Conclusion

The **Tasks in Verilog** projects demonstrate how reusable procedural blocks can simplify Verilog designs and testbenches. By grouping 
repetitive operations into tasks, designers can create cleaner, more organized, and maintainable code. Mastering tasks is an important 
step toward writing efficient verification environments and professional-quality Verilog code.
