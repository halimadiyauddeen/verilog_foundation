# 4×2 Encoder – Gate-Level Modeling

**Author:** Halima Diyauddeen

---

## Overview

This project implements a **4×2 Encoder** using **Verilog Gate-Level Modeling**. A 4×2 encoder converts one active input out of four into a 2-bit binary code.

> **Note:** This is a **simple encoder**, meaning only one input should be HIGH (`1`) at any given time. If multiple inputs are active simultaneously, the output is undefined.

---

## Objective

- Understand the operation of a 4×2 Encoder.
- Implement an encoder using Verilog gate primitives.
- Verify the design using a dedicated testbench.

---

## Gate Primitives Used

```verilog
or (y1, d2, d3);
or (y0, d1, d3);
```

The encoder uses Verilog's built-in `or` gate primitive to generate the binary output.

---

## Truth Table

| D3 | D2 | D1 | D0 | Y1 | Y0 |
|:--:|:--:|:--:|:--:|:--:|:--:|
| 0 | 0 | 0 | 1 | 0 | 0 |
| 0 | 0 | 1 | 0 | 0 | 1 |
| 0 | 1 | 0 | 0 | 1 | 0 |
| 1 | 0 | 0 | 0 | 1 | 1 |

---

## Project Files

| File | Description |
|------|-------------|
| `encoder_4x2.v` | Design Under Test (DUT) |
| `encoder_4x2_tb.v` | Testbench used to verify the DUT |
| `README.md` | Project documentation |

---

## Verilog Implementation

The encoder is implemented entirely using Verilog's built-in gate primitives.

Primitive used:

- `or`

No `assign` statements are used, making this a true Gate-Level Modeling implementation.

---

## Simulation

The testbench activates one input at a time and displays the corresponding binary output using the `$monitor` system task.

---

## Expected Output

```text
D0=1 D1=0 D2=0 D3=0 | Y1=0 Y0=0
D0=0 D1=1 D2=0 D3=0 | Y1=0 Y0=1
D0=0 D1=0 D2=1 D3=0 | Y1=1 Y0=0
D0=0 D1=0 D2=0 D3=1 | Y1=1 Y0=1
```

---

## Learning Outcomes

After completing this project, you should be able to:

- Understand the operation of a 4×2 Encoder.
- Implement an encoder using Verilog gate primitives.
- Design combinational circuits using Gate-Level Modeling.
- Verify encoder functionality through simulation.

---

## Conclusion

The **4×2 Encoder** is a fundamental combinational circuit that converts one of four active input lines into a 2-bit binary output. Implementing it using Verilog gate primitives demonstrates how simple logic gates can be combined to perform encoding operations and prepares you for more advanced encoder designs, such as priority encoders.