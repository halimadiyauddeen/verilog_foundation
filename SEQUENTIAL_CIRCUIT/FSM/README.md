 Finite State Machines (FSMs) in Verilog

**Author:** Halima Diyauddeen

---

 Overview

This folder contains the implementation of **Finite State Machines (FSMs)** in Verilog. A Finite State Machine (FSM) is a sequential 
digital circuit that transitions between a finite number of states based on input signals and a clock. The current state, along with the 
input values, determines the next state and the circuit outputs.

FSMs are fundamental components of digital system design and are widely used in processors, communication protocols, traffic light 
controllers, vending machines, sequence detectors, and control units.

---

 Objective

- Understand the fundamentals of Finite State Machines (FSMs).
- Learn the difference between Moore and Mealy FSMs.
- Implement sequence detectors using Verilog.
- Understand state transitions and state encoding.
- Verify FSM functionality through simulation.

---

 What is a Finite State Machine?

A **Finite State Machine (FSM)** is a sequential circuit whose operation depends on:

- The current state
- The input signals
- The clock signal

An FSM changes from one state to another only on the active edge of the clock. The output is generated according to the FSM type 
(Moore or Mealy).

---

 Key Concepts

FSM design relies on the following concepts:

- States
- State transitions
- Present state
- Next state
- Input signals
- Output signals
- Clock signal
- Reset signal
- State encoding

---

 FSMs Included

This folder contains implementations of the following sequence detectors:

 Moore Finite State Machines
- Moore Overlapping Sequence Detector
- Moore Non-Overlapping Sequence Detector

 Mealy Finite State Machines
- Mealy Overlapping Sequence Detector
- Mealy Non-Overlapping Sequence Detector

Each project includes:

- Design Under Test (DUT)
- Testbench
- Project README

---

 Classification of FSMs

Finite State Machines are classified into two main types:

 1. Moore Machine

- Output depends **only on the current state**.
- Output changes only after a state transition.
- Simpler and more stable.
- May require more states than a Mealy machine.

**Output Equation:**

```
Output = f(Current State)
```

---

 2. Mealy Machine

- Output depends on **both the current state and the input**.
- Output can change immediately when the input changes.
- Usually requires fewer states.
- Faster response than a Moore machine.

**Output Equation:**

```
Output = f(Current State, Input)
```

---

 Overlapping vs Non-Overlapping Sequence Detection

 Overlapping Sequence Detector

- Allows a new sequence to begin before the previous sequence has completely finished.
- Shares matching bits between consecutive sequences.
- Detects patterns more frequently.

 Non-Overlapping Sequence Detector

- After detecting a sequence, the FSM resets and begins searching for a completely new sequence.
- Previously detected bits are not reused.

---

 Verilog Constructs Used

The FSM designs commonly use:

- `parameter` for state encoding
- `reg` variables
- `always @(posedge clk or posedge rst)`
- `always @(*)`
- `case` statements
- Non-blocking assignments (`<=`)

Example:

```verilog
always @(posedge clk or posedge rst) begin
    if (rst)
        state <= S0;
    else
        state <= next_state;
end
```

---

 Characteristics

- Sequential circuit
- Clock-driven operation
- Finite number of states
- Controlled by inputs and current state
- Predictable state transitions
- Suitable for control applications

---

 Advantages

- Simplifies complex control logic.
- Improves system organization.
- Easy to model and verify.
- Widely supported by synthesis tools.
- Suitable for synchronous digital systems.

---

 Limitations

- Large designs may require many states.
- Moore machines may require additional states.
- Poor state assignment can increase hardware usage.
- Design complexity increases with system size.

---

 Typical Design Flow

The general workflow for FSM design is:

1. Define the required states.
2. Draw the state diagram.
3. Encode the states.
4. Implement the state register.
5. Design the next-state logic.
6. Implement the output logic.
7. Develop a testbench.
8. Simulate and verify the FSM.

---

 Simulation

Each FSM is verified using a dedicated testbench that generates a clock signal, applies reset, and provides input sequences while 
monitoring state transitions and outputs.

Typical simulation steps include:

- Initializing signals
- Generating the clock
- Applying reset
- Applying input sequences
- Monitoring outputs using `$monitor`
- Verifying state transitions

---

 Learning Outcomes

After completing this folder, you should be able to:

- Understand the operation of Finite State Machines.
- Differentiate between Moore and Mealy machines.
- Explain overlapping and non-overlapping sequence detection.
- Design FSMs using Verilog.
- Verify sequential control logic through simulation.

---

 Applications

Finite State Machines are widely used in:

- Sequence detectors
- Traffic light controllers
- Vending machines
- Elevator controllers
- Communication protocols
- Processor control units
- Embedded systems
- FPGA designs
- ASIC designs
- Robotics and automation

---

 Moore vs Mealy FSM

| Feature | Moore Machine | Mealy Machine |
|---------|---------------|---------------|
| Output Depends On | Current State | Current State and Input |
| Output Timing | After state transition | Immediately with input change |
| Number of States | Usually more | Usually fewer |
| Response Speed | Slower | Faster |
| Design Complexity | Simpler | Slightly more complex |

---

 Conclusion

The **Finite State Machines (FSMs) in Verilog** projects demonstrate how sequential systems can be modeled using a finite number of 
states and controlled transitions. By implementing Moore and Mealy machines with both overlapping and non-overlapping sequence detection,
this folder provides a comprehensive understanding of FSM design, state-based control logic, and sequence detection techniques used in 
modern FPGA, ASIC, and embedded system development.
