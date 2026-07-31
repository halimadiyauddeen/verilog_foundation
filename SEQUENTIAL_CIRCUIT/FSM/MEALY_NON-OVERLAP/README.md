 Mealy Non-Overlap Sequence Detector – FSM (Mealy)

**Author:** Halima Diyauddeen

---

 Overview

This project implements a **Mealy Non-Overlap Sequence Detector** using a **Mealy Finite State Machine (FSM)** in Verilog. The detector identifies a predefined binary sequence from a serial input stream while **preventing overlapping sequence detection**. In a Mealy FSM, the output depends on both the **current state** and the **current input**, allowing the output to be asserted immediately when the final bit of the sequence is received.

The design is implemented using two separate blocks for the state register and the combined next-state/output logic.

---

 Objective

- Understand the operation of a Mealy Finite State Machine (FSM).
- Implement a non-overlapping sequence detector using Mealy modeling.
- Learn how state transitions are controlled by the input sequence.
- Understand how Mealy outputs depend on both the current state and the input.
- Verify the FSM using a dedicated testbench.

---

 FSM Implementation

The design consists of two functional blocks:

- State register
- Combined next-state and output logic

The state register updates the present state on the rising edge of the clock.

```verilog
always @(posedge clk) begin

    if (rst)
        present_state <= S0;
    else
        present_state <= next_state;

end
```

The next-state logic and output logic are implemented together.

```verilog
always @(*) begin

    y = 1'b0;

    case (present_state)

        ...

    endcase

end
```

The output is generated immediately when the required input is received while the FSM is in the appropriate state.

---

 State Description

| State | Description |
|:-----:|-------------|
| S0 | Initial state |
| S1 | First portion of the sequence detected |
| S2 | Second portion of the sequence detected |
| S3 | Third portion of the sequence detected |

---

 State Transition Table

| Present State | Input (X) | Next State | Output (Y) |
|:-------------:|:---------:|:----------:|:----------:|
| S0 | 0 | S0 | 0 |
| S0 | 1 | S1 | 0 |
| S1 | 0 | S2 | 0 |
| S1 | 1 | S1 | 0 |
| S2 | 0 | S0 | 0 |
| S2 | 1 | S3 | 0 |
| S3 | 0 | S2 | 0 |
| S3 | 1 | S0 | 1 |

---

 Project Files

| File | Description |
|------|-------------|
| `mealy_non_overlap.v` | Design Under Test (DUT) |
| `mealy_non_overlap_tb.v` | Testbench used to verify the DUT |
| `README.md` | Project documentation |

---

 Verilog Implementation

The design uses:

- Mealy Finite State Machine (FSM)
- Sequential Modeling
- `always @(posedge clk)`
- `always @(*)`
- Parameters for state encoding
- State register
- Combined next-state and output logic
- `case` statements

No gate primitives or `assign` statements are used.

---

 Simulation

The testbench generates a clock signal, applies a reset, and then supplies a serial stream of input bits to verify that the FSM correctly detects the target sequence.

```verilog
x = 1; #10;
x = 0; #10;
x = 1; #10;
x = 1; #10;
...
```

> **Note:** Since this is a **non-overlapping sequence detector**, the FSM returns to the initial state after a successful detection. This ensures that a new detection starts only after a completely new occurrence of the sequence.

---

 Sample Output

```text
Time=0   | RST=1 | X=0 | Y=0
Time=10  | RST=0 | X=1 | Y=0
Time=20  | RST=0 | X=0 | Y=0
Time=30  | RST=0 | X=1 | Y=0
Time=40  | RST=0 | X=1 | Y=1
Time=50  | RST=0 | X=0 | Y=0
Time=60  | RST=0 | X=0 | Y=0
Time=70  | RST=0 | X=1 | Y=0
Time=80  | RST=0 | X=0 | Y=0
Time=90  | RST=0 | X=1 | Y=0
Time=100 | RST=0 | X=1 | Y=1
...
```

The exact simulation output depends on the input sequence applied during simulation.

---

 Learning Outcomes

After completing this project, you should be able to:

- Understand the architecture of a Mealy FSM.
- Design a non-overlapping sequence detector.
- Implement state machines using Sequential Modeling.
- Combine next-state and output logic in a single combinational block.
- Understand how Mealy outputs depend on both the present state and the input.
- Verify FSM functionality through simulation.
- Compare the behavior of Mealy and Moore sequence detectors.

---

 Conclusion

The **Mealy Non-Overlap Sequence Detector** demonstrates how a Mealy Finite State Machine can recognize serial input patterns while preventing overlapping detections. By returning to the initial state after each successful detection, the FSM ensures that each detected sequence is independent of the previous one. This implementation highlights the efficiency of Mealy FSMs while illustrating the behavioral differences between overlapping and non-overlapping sequence detection.