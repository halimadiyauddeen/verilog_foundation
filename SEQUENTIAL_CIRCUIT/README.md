 Sequential Circuits in Verilog

**Author:** Halima Diyauddeen

---

 Overview

This folder contains the implementation of various **Sequential Circuits** in Verilog. Unlike combinational circuits, sequential 
circuits store information and produce outputs based on both the **current inputs** and the **previous state** of the circuit. This
memory capability makes sequential circuits essential for designing digital systems that require synchronization, storage, and state 
transitions.

Most sequential circuits are controlled by a **clock signal**, allowing state changes to occur only at specific clock edges. 
They form the foundation of memories, registers, counters, finite state machines (FSMs), and digital processors.

---

 Objective

- Understand the fundamentals of sequential circuits.
- Learn how memory elements are implemented in Verilog.
- Design synchronous digital systems using clock signals.
- Understand state transitions and timing behavior.
- Verify sequential circuits through simulation.

---

 What are Sequential Circuits?

A sequential circuit is a digital circuit whose output depends on:

- The **current input values**, and
- The **previous state** (stored information).

Unlike combinational circuits, sequential circuits contain memory elements such as flip-flops or latches that retain information
until it is updated.

State changes typically occur on the rising or falling edge of a clock signal.

---

 Key Concepts

Sequential circuit design relies on the following concepts:

- Clock signals
- Flip-flops
- Registers
- Memory elements
- State transitions
- Synchronous and asynchronous reset
- Finite State Machines (FSMs)

---

 Circuits Included

This folder contains the following sequential circuit implementations:

- FIFO (First-In, First-Out)
- RAM (Random Access Memory)
- Moore Finite State Machine (FSM)
- Mealy Finite State Machine (FSM)

Each project includes:

- Design Under Test (DUT)
- Testbench
- Project README

---

 Verilog Constructs Used

The designs in this folder make use of:

- `always @(posedge clk)` blocks
- Non-blocking assignments (`<=`)
- `if` and `case` statements
- Registers (`reg`)
- Parameters for state encoding
- Arrays (for memory implementation)

Example:

```verilog
always @(posedge clk) begin
    if (rst)
        q <= 1'b0;
    else
        q <= d;
end
```

---

 Characteristics of Sequential Circuits

- Output depends on current inputs and previous state.
- Requires memory elements.
- Usually synchronized by a clock signal.
- State changes occur at clock edges.
- Can implement complex control and storage functions.

---

 Advantages

- Stores and processes data over time.
- Suitable for memory and control applications.
- Supports complex digital system design.
- Enables synchronization using clock signals.
- Forms the basis of processors and embedded systems.

---

 Limitations

- More complex than combinational circuits.
- Requires careful clock and reset design.
- Timing issues such as setup and hold time must be considered.
- Simulation and debugging are generally more involved.

---

 Typical Design Flow

The general workflow for sequential circuit design is:

1. Define the required functionality.
2. Determine the required states or memory structure.
3. Implement the design using clocked `always` blocks.
4. Develop a testbench to verify operation.
5. Simulate and validate the design.

---

 Simulation

Each sequential circuit is verified using a dedicated testbench that generates clock pulses, applies input stimuli, and monitors the outputs.

Typical simulation steps include:

- Initializing signals
- Generating a clock
- Applying reset
- Applying input sequences
- Monitoring outputs using `$monitor`
- Verifying state transitions and timing behavior

---

 Learning Outcomes

After completing this folder, you should be able to:

- Understand the operation of sequential circuits.
- Design clock-driven digital systems.
- Implement memories and finite state machines.
- Use non-blocking assignments correctly.
- Analyze timing and state transitions.
- Verify sequential circuits through simulation.

---

 Applications

Sequential circuits are widely used in:

- Memory systems
- Registers
- FIFOs
- RAM and ROM
- Finite State Machines (FSMs)
- Digital controllers
- Communication systems
- Embedded systems
- FPGA designs
- ASIC designs
- Computer processors

---

 Comparison with Combinational Circuits

| Feature | Combinational Circuit | Sequential Circuit |
|---------|------------------------|--------------------|
| Output Depends On | Present inputs only | Present inputs and previous state |
| Memory | No | Yes |
| Clock Required | No | Usually yes |
| Feedback | No | Yes |
| Examples | MUX, Decoder, Encoder, Comparator | FIFO, RAM, FSM, Registers |

---

Conclusion

The **Sequential Circuits** projects in this folder demonstrate how digital systems can store, process, and control data over time using
memory elements and clock-driven logic. By implementing designs such as FIFO, RAM, and Finite State Machines (FSMs), this folder provides
a solid foundation in sequential logic design, preparing you for advanced FPGA, ASIC, and digital system development.
