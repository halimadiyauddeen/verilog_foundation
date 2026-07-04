# 2x1 Encoder – Dataflow Modeling

**Author:** Halima Diyauddeen

---

## Overview

This project implements a **2x1 Encoder** using **Verilog Dataflow Modeling**. An encoder converts one active input line into its corresponding binary code. A 2x1 encoder has two input lines and one output bit.

> **Note:** This encoder assumes that only one input is HIGH at any given time.

---

## Objective

- Understand the operation of a 2x1 Encoder.
- Implement a 2x1 Encoder using Verilog Dataflow Modeling.
- Verify the design using a dedicated testbench.

---

## Boolean Expression

```text
Y = D1
```

---

## Truth Table

| D1 | D0 | Y |
|:--:|:--:|:-:|
| 0 | 1 | 0 |
| 1 | 0 | 1 |

**Invalid Inputs**

| D1 | D0 |
|:--:|:--:|
| 0 | 0 |
| 1 | 1 |

These input combinations are not valid for a standard encoder because more than one input is inactive or active simultaneously.

---

## Project Files

| File | Description |
|------|-------------|
| `encoder_2x1.v` | Design Under Test (DUT) |
| `encoder_2x1_tb.v` | Testbench used to verify the DUT |
| `README.md` | Project documentation |

---

## Verilog Implementation

The encoder is implemented using a continuous assignment statement.

```verilog
assign y = d1;
```

---

## Simulation

The testbench applies all valid one-hot input combinations:

- D0 = 1, D1 = 0
- D0 = 0, D1 = 1

The output is observed using the `$monitor` system task.

---

## Expected Output

```text
D0 = 1 | D1 = 0 | Y = 0
D0 = 0 | D1 = 1 | Y = 1
```

---

## Learning Outcomes

After completing this project, you should be able to:

- Understand the operation of a 2x1 Encoder.
- Explain the concept of one-hot input encoding.
- Implement an encoder using Dataflow Modeling.
- Verify encoder functionality through simulation.

---

## Conclusion

The 2x1 Encoder is the simplest encoder circuit and introduces the concept of converting an active input into its binary representation. It serves as the foundation for larger encoder circuits such as the 4x2 and 8x3 encoders.