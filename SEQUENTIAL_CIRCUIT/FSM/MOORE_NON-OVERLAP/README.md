 Moore Non-Overlap Sequence Detector – FSM (Moore)

**Author:** Halima Diyauddeen

---

 Overview

This project implements a **Moore Non-Overlap Sequence Detector** using a **Moore Finite State Machine (FSM)** in Verilog. The detector identifies a predefined binary sequence from a serial input stream while **preventing overlapping sequence detection**. In a Moore FSM, the output depends **only on the current state**, making the output stable and synchronized with the clock.

The design is implemented using three separate blocks for the state register, next-state logic, and output logic.

---

 Objective

- Understand the operation of a Moore Finite State Machine (FSM).
- Implement a non-overlapping sequence detector using Moore modeling.
- Learn how state transitions are controlled by the input sequence.
- Understand the difference between present state and next state.
- Verify the FSM using a dedicated testbench.

---

 FSM Implementation

The design consists of three functional blocks:

- State register
- Next-state logic
- Output logic

The state register updates the present state on the rising edge of the clock.

```verilog
always @(posedge clk) begin

    if (rst)
        present_state <= S0;
    else
        present_state <= next_state;

end
```

The next-state logic determines the next state based on the current state and the input signal.

```verilog
always @(*) begin

    case (present_state)

        ...

    endcase

end
```

The output logic generates the output based only on the current state.

```verilog
always @(*) begin

    case (present_state)

        S4: y = 1'b1;

        default: y = 1'b0;

    endcase

end
```

---

 State Description

| State | Description |
|:-----:|-------------|
| S0 | Initial state |
| S1 | First portion of the sequence detected |
| S2 | Second portion of the sequence detected |
| S3 | Third portion of the sequence detected |
| S4 | Complete sequence detected (Output = 1) |

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
| S3 | 1 | S4 | 0 |
| S4 | 0 | S0 | 1 |
| S4 | 1 | S0 | 1 |

---

 Verilog Implementation

The design uses:

- Moore Finite State Machine (FSM)
- Sequential Modeling
- `always @(posedge clk)`
- `always @(*)`
- Parameters for state encoding
- State register
- Next-state logic
- Output logic
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

> **Note:** Since this is a **non-overlapping sequence detector**, the FSM returns to the initial state after a successful detection. This prevents the detector from reusing bits from the previously detected sequence.

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
...
```

The exact simulation output depends on the input sequence applied during simulation.

---

 Learning Outcomes

After completing this project, you should be able to:

- Understand the architecture of a Moore FSM.
- Design a non-overlapping sequence detector.
- Separate state register, next-state logic, and output logic.
- Implement state machines using Sequential Modeling.
- Understand state transitions in an FSM.
- Verify FSM functionality through simulation.

---

 Conclusion

The **Moore Non-Overlap Sequence Detector** demonstrates how a Moore Finite State Machine can be used to recognize serial input patterns while preventing overlapping detections. By returning to the initial state after each successful detection, the FSM ensures that every detected sequence is independent of the previous one. This design illustrates the modular structure of Moore FSMs and serves as a foundation for more advanced digital controllers and pattern recognition circuits.