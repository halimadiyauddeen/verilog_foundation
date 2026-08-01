 Demultiplexers Using Tasks in Verilog

**Author:** Halima Diyauddeen

---

 Overview

This folder contains the implementation of **digital demultiplexers (DEMUX)** using **Tasks** in Verilog. A demultiplexer is a 
combinational circuit that routes a single input signal to one of several output lines based on the value of the select lines. 
It performs the opposite function of a multiplexer by distributing one input to multiple outputs.

In these projects, **tasks are used within the testbench** to apply input combinations and test vectors efficiently. Using tasks 
eliminates repetitive code, improves readability, and makes the verification process more organized.

---

 Objective

- Understand the operation of digital demultiplexers.
- Learn how to use tasks in Verilog testbenches.
- Practice creating reusable procedures for applying test vectors.
- Reduce repetitive code during simulation.
- Verify demultiplexer functionality efficiently.

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

 Tasks in the Testbench

A **task** is used to group repeated operations into a reusable block of code. Instead of manually assigning input values and select
signals for every test case, a task is called with different arguments to generate multiple test vectors.

Example:

```verilog
task apply_test;

    input d;
    input [2:0] sel;

    begin
        data = d;
        select = sel;
        #10;
    end

endtask
```

Calling the task:

```verilog
initial begin

    apply_test(1'b1, 3'b000);
    apply_test(1'b1, 3'b001);
    apply_test(1'b1, 3'b010);
    apply_test(1'b1, 3'b111);

end
```

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

- Module instantiation for the DUT
- Tasks for applying test vectors
- Procedural blocks (`initial`)
- Timing delays (`#`)
- `$monitor` for observing outputs

The DUT implements the demultiplexer logic, while the task simplifies the verification process by applying different input combinations.

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

Each demultiplexer is verified using a dedicated testbench that repeatedly calls a task to apply different combinations of the input and
select signals.

Example:

```verilog
initial begin

    apply_test(1'b1, 2'b00);
    apply_test(1'b1, 2'b01);
    apply_test(1'b1, 2'b10);
    apply_test(1'b1, 2'b11);

end
```

The outputs are monitored after each task call to ensure the input signal is routed to the correct output.

---

 Learning Outcomes

After completing this folder, you should be able to:

- Understand the operation of demultiplexers.
- Write reusable tasks in Verilog.
- Apply test vectors using task calls.
- Improve testbench organization and readability.
- Verify combinational circuits more efficiently.

---

 Applications

Demultiplexers and Verilog tasks are widely used in:

- Data distribution
- Communication systems
- Memory addressing
- Signal routing
- FPGA verification
- ASIC verification
- Digital system testing
- Automated testbench development

---

 Conclusion

The **Demultiplexers Using Tasks in Verilog** projects demonstrate how reusable tasks can simplify the verification of digital 
demultiplexers. By encapsulating repetitive stimulus generation into tasks, the testbenches become cleaner, more modular, and easier to 
maintain. This approach improves verification efficiency while reinforcing the use of tasks as an essential feature of professional 
Verilog testbench development.
