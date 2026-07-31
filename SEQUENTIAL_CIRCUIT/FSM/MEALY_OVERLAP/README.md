s Mealy Overlap Sequence Detector – FSM (Mealy)

**Author:** Halima Diyauddeen

---

 Overview

This project implements a **Mealy Overlap Sequence Detector** using a **Mealy Finite State Machine (FSM)** in Verilog. The detector identifies a predefined binary sequence from a serial input stream while allowing **overlapping sequence detection**. In a Mealy FSM, the output depends on both the **current state** and the **current input**, allowing the output to be asserted immediately when the final bit of the sequence is received.

The design is implemented using two separate blocks for the state register and the combined next-state/output logic.

---

 Objective

- Understand the operation of a Mealy Finite State Machine (FSM).
- Implement an overlapping sequence detector using Mealy modeling.
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
| S3 | 1 | S1 | 1 |

---

 Project Files

| File | Description |
|------|-------------|
| `mealy_overlap.v` | Design Under Test (DUT) |
| `mealy_overlap_tb.v` | Testbench used to verify the DUT |
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

The testbench generates a clock signal, applies a reset, and then supplies a serial stream of input bits to verify that the FSM correctly detects the target sequence while allowing overlapping detections.

```verilog
x = 1; #10;
x = 0; #10;
x = 1; #10;
x = 1; #10;
...
```

> **Note:** Since this is an **overlapping sequence detector**, the FSM transitions to the appropriate intermediate state after a successful detection instead of returning to the initial state. This enables the detector to recognize consecutive sequences that share one or more bits.

---

 Sample Output

```text
Time=0   | RST=1 | X=0 | Y=0
Time=10  | RST=0 | X=1 | Y=0
Time=20  | RST=0 | X=0 | Y=0
Time=30  | RST=0 | X=1 | Y=0
Time=40  | RST=0 | X=1 | Y=1
Time=50  | RST=0 | X=0 | Y=0
Time=60  | RST=0 | X=1 | Y=0
Time=70  | RST=0 | X=1 | Y=1
...
```

The exact simulation output depends on the input sequence applied during simulation.

---

 Learning Outcomes

After completing this project, you should be able to:

- Understand the architecture of a Mealy FSM.
- Design an overlapping sequence detector.
- Implement state machines using Sequential Modeling.
- Combine next-state and output logic in a single combinational block.
- Understand how Mealy outputs depend on both the present state and the input.
- Verify FSM functionality through simulation.
- Compare the behavior of Mealy and Moore sequence detectors.

---

 Conclusion

The **Mealy Overlap Sequence Detector** demonstrates how a Mealy Finite State Machine can recognize serial input patterns while supporting overlapping detections. By generating the output based on both the current state and the current input, the design detects the target sequence immediately after the final input bit is received. This approach typically requires fewer states than an equivalent Moore FSM, making Mealy machines efficient for pattern detection and digital control applications.