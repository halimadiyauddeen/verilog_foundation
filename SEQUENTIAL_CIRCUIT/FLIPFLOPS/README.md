 Flip-Flops in Verilog

**Author:** Halima Diyauddeen

---

 Overview

This folder contains the implementation of various **Flip-Flops** in Verilog. A flip-flop is an **edge-triggered sequential circuit** 
that stores one bit of binary information. Unlike latches, which are level-sensitive, flip-flops update their outputs only on a specific 
edge of the clock signal (rising or falling edge).

Flip-flops are the fundamental memory elements used in synchronous digital systems. They are widely used in registers, counters, finite 
state machines (FSMs), memory devices, processors, and digital communication systems.

---

 Objective

- Understand the fundamentals of flip-flops.
- Learn how flip-flops store binary data.
- Implement different types of flip-flops in Verilog.
- Understand edge-triggered sequential logic.
- Verify flip-flop functionality through simulation.

---

 What is a Flip-Flop?

A **flip-flop** is a sequential circuit that stores a single bit of binary information. It changes its output only on the active edge of 
a clock signal, making it an **edge-triggered** storage element.

Once data is stored, the flip-flop retains its value until the next active clock edge or until it is reset.

---

 Key Concepts

Flip-flop design relies on the following concepts:

- Clock signal
- Rising-edge triggering
- Falling-edge triggering
- Data storage
- Memory elements
- Sequential logic
- Reset operation

---

 Flip-Flops Included

This folder contains implementations of the following flip-flops:

- SR (Set-Reset) Flip-Flop
- D (Data) Flip-Flop
- JK Flip-Flop
- T (Toggle) Flip-Flop

Each project includes:

- Design Under Test (DUT)
- Testbench
- Project README

---

 Verilog Constructs Used

The flip-flop designs commonly use:

- `always @(posedge clk)` or `always @(negedge clk)`
- Non-blocking assignments (`<=`)
- `if` statements
- `case` statements
- Registers (`reg`)

Example:

```verilog
always @(posedge clk or posedge rst) begin
    if (rst)
        q <= 1'b0;
    else
        q <= d;
end
```

---

 Characteristics

- Sequential circuit
- Stores one bit of binary data
- Edge-triggered
- Controlled by a clock signal
- Retains data until the next clock edge
- Supports synchronous or asynchronous reset

---

 Types of Flip-Flops

 SR Flip-Flop
- Uses **Set (S)** and **Reset (R)** inputs.
- Sets or resets the stored value.
- Has an invalid state when both inputs are asserted simultaneously (for the basic implementation).

 D Flip-Flop
- Uses a single **Data (D)** input.
- Stores the input value on the active clock edge.
- Eliminates the invalid state of the SR flip-flop.
- The most commonly used flip-flop in digital systems.

 JK Flip-Flop
- Uses **J** and **K** inputs.
- Eliminates the invalid condition found in the SR flip-flop.
- Can hold, set, reset, or toggle its output.

 T Flip-Flop
- Uses a single **Toggle (T)** input.
- Toggles its output on each active clock edge when the toggle input is asserted.
- Commonly used in counters and frequency dividers.

---

 Advantages

- Reliable edge-triggered operation.
- Stable data storage.
- Widely used in synchronous digital systems.
- Easy to synchronize with a clock.
- Forms the basis of registers, counters, and FSMs.

---

 Limitations

- Requires a clock signal.
- More complex than latches.
- Subject to setup and hold time constraints.
- Consumes more hardware resources than combinational circuits.

---

 Typical Design Flow

The general workflow for flip-flop design is:

1. Select the flip-flop type.
2. Define the input, output, clock, and reset signals.
3. Implement the design using a clocked `always` block.
4. Develop a testbench to verify the design.
5. Simulate and validate the operation.

---

 Simulation

Each flip-flop is verified using a dedicated testbench that generates a clock signal, applies different input combinations, and monitors 
the output.

Typical simulation steps include:

- Initializing signals
- Generating the clock
- Applying reset
- Applying input combinations
- Monitoring outputs using `$monitor`
- Verifying data storage on the active clock edge

---

 Learning Outcomes

After completing this folder, you should be able to:

- Understand how flip-flops operate.
- Differentiate between various flip-flop types.
- Explain edge-triggered behavior.
- Implement flip-flops in Verilog.
- Verify sequential circuits through simulation.

---

 Applications

Flip-flops are widely used in:

- Registers
- Counters
- Finite State Machines (FSMs)
- Memory devices
- Shift registers
- Digital processors
- Communication systems
- FPGA designs
- ASIC designs
- Embedded systems

---

 Comparison of Common Flip-Flops

| Flip-Flop Type | Inputs | Output Behavior |
|---------------|--------|-----------------|
| SR Flip-Flop | S, R | Set, Reset, Hold |
| D Flip-Flop | D | Stores input data on the active clock edge |
| JK Flip-Flop | J, K | Set, Reset, Hold, Toggle |
| T Flip-Flop | T | Toggles output on the active clock edge |

---

 Latches vs Flip-Flops

| Feature | Latch | Flip-Flop |
|---------|-------|-----------|
| Triggering | Level-sensitive | Edge-triggered |
| Control Signal | Enable | Clock |
| Output Changes | While enable is active | Only on the active clock edge |
| Complexity | Simpler | More complex |
| Typical Use | Temporary storage | Synchronous digital systems |

---

 Conclusion

The **Flip-Flops in Verilog** projects demonstrate how edge-triggered memory elements store and synchronize binary data in digital 
systems. By implementing SR, D, JK, and T flip-flops, this folder provides a strong foundation in sequential logic design and prepares
learners for advanced topics such as registers, counters, finite state machines (FSMs), memory systems, and processor design.
