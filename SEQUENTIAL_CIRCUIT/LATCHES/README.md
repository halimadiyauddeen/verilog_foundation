 Latches in Verilog

**Author:** Halima Diyauddeen

---

 Overview

This folder contains the implementation of various **Latches** in Verilog. A latch is a **level-sensitive sequential circuit** that
stores one bit of binary information. Unlike flip-flops, which are triggered by the edge of a clock signal, latches continuously respond
to changes in their inputs while the enable signal is active.

Latches are fundamental memory elements in digital electronics and are used for temporary data storage, synchronization, and control 
logic. They serve as the basic building blocks for more complex sequential circuits.

---

 Objective

- Understand the fundamentals of latches.
- Learn how latches store binary data.
- Implement different types of latches in Verilog.
- Understand level-sensitive operation.
- Verify latch functionality through simulation.

---

 What is a Latch?

A **latch** is a sequential circuit that stores a single bit of information. It is **level-sensitive**, meaning its output changes 
whenever the enable signal is active and the inputs change.

When the enable signal is inactive, the latch retains its previously stored value until the enable signal becomes active again.

---

 Key Concepts

Latch design relies on the following concepts:

- Level-sensitive operation
- Enable signal
- Data storage
- Feedback
- Memory elements
- Sequential logic

---

 Latches Included

This folder contains implementations of common latch types, including:

- SR (Set-Reset) Latch
- D (Data) Latch
- JK Latch
- T (Toggle) Latch

Each project includes:

- Design Under Test (DUT)
- Testbench
- Project README

---

 Verilog Constructs Used

The latch designs commonly use:

- `always` blocks
- `if` statements
- `case` statements
- Blocking assignments (`=`)
- Registers (`reg`)

Example:

```verilog
always @(d or en) begin
    if (en)
        q = d;
end
```

---

 Characteristics

- Sequential circuit
- Stores one bit of data
- Level-sensitive
- Controlled by an enable signal
- Can retain its previous value
- Faster response while enabled

---

 Types of Latches

 SR Latch
- Uses **Set (S)** and **Reset (R)** inputs.
- Stores or clears data based on the input combination.
- Contains an invalid state when both inputs are asserted simultaneously (for the basic NOR implementation).

 D Latch
- Uses a single **Data (D)** input and an **Enable (EN)** signal.
- Eliminates the invalid state found in the SR latch.
- Widely used for temporary data storage.

 JK Latch
- Uses **J** and **K** inputs.
- Similar to the SR latch but removes the invalid input condition.
- Can hold, set, reset, or toggle its output.

 T Latch
- Uses a single **Toggle (T)** input.
- Toggles its output whenever the enable signal is active and the toggle input is asserted.

---

 Advantages

- Simple circuit design.
- Fast operation.
- Requires fewer hardware resources.
- Useful for temporary data storage.
- Forms the basis of more complex memory elements.

---

 Limitations

- Sensitive to input changes while enabled.
- Can introduce unwanted changes if inputs are not stable.
- Less suitable than flip-flops for synchronous digital systems.
- May cause timing issues in large digital designs.

---

 Typical Design Flow

The general workflow for latch design is:

1. Select the latch type.
2. Define the input and output signals.
3. Implement the latch using an `always` block.
4. Develop a testbench.
5. Simulate and verify the operation.

---

 Simulation

Each latch is verified using a dedicated testbench that applies different input combinations while observing the output.

Typical simulation steps include:

- Initializing signals
- Applying input combinations
- Enabling and disabling the latch
- Monitoring outputs using `$monitor`
- Verifying data storage behavior

---

 Learning Outcomes

After completing this folder, you should be able to:

- Understand how latches operate.
- Differentiate between various latch types.
- Explain level-sensitive behavior.
- Implement latches in Verilog.
- Verify latch functionality through simulation.

---

 Applications

Latches are widely used in:

- Temporary data storage
- Control circuits
- Timing circuits
- Synchronization circuits
- Digital communication systems
- Embedded systems
- FPGA prototyping
- ASIC design

---

 Comparison of Common Latches

| Latch Type | Inputs | Output Behavior |
|------------|--------|-----------------|
| SR Latch | S, R | Set, Reset, Hold |
| D Latch | D, EN | Stores input data while enabled |
| JK Latch | J, K | Set, Reset, Hold, Toggle |
| T Latch | T, EN | Toggles output while enabled |

---

 Latches vs Flip-Flops

| Feature | Latch | Flip-Flop |
|---------|-------|-----------|
| Triggering | Level-sensitive | Edge-triggered |
| Control Signal | Enable | Clock |
| Output Changes | While enable is active | Only on clock edge |
| Complexity | Simpler | More complex |
| Typical Use | Temporary storage | Synchronous systems |

---

 Conclusion

The **Latches in Verilog** projects demonstrate how level-sensitive memory elements can store and maintain binary data. By implementing 
SR, D, JK, and T latches, this folder provides a strong foundation in sequential logic and highlights the differences between latches and
flip-flops. Understanding latch operation is essential for mastering digital electronics and progressing to more advanced sequential 
circuit design.
