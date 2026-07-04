# 8×3 Encoder – Gate-Level Modeling

**Author:** Halima Diyauddeen

---

## Overview

This project implements an **8×3 Encoder** using **Verilog Gate-Level Modeling**. An 8×3 encoder converts one active input out of eight into a 3-bit binary output.

> **Note:** This is a **simple encoder**, meaning only one input should be HIGH (`1`) at any given time. If multiple inputs are active simultaneously, the output is undefined.

---

## Objective

- Understand the operation of an 8×3 Encoder.
- Implement an encoder using Verilog gate primitives.
- Verify the design using a dedicated testbench.

---

## Gate Primitives Used

```verilog
or (y2, d4, d5, d6, d7);
or (y1, d2, d3, d6, d7);
or (y0, d1, d3, d5, d7);
```

The encoder uses Verilog's built-in `or` gate primitive to generate the 3-bit binary output.

---

## Truth Table

| Active Input | Y2 | Y1 | Y0 |
|:------------:|:--:|:--:|:--:|
| D0 | 0 | 0 | 0 |
| D1 | 0 | 0 | 1 |
| D2 | 0 | 1 | 0 |
| D3 | 0 | 1 | 1 |
| D4 | 1 | 0 | 0 |
| D5 | 1 | 0 | 1 |
| D6 | 1 | 1 | 0 |
| D7 | 1 | 1 | 1 |

---

## Project Files

| File | Description |
|------|-------------|
| `encoder_8x3.v` | Design Under Test (DUT) |
| `encoder_8x3_tb.v` | Testbench used to verify the DUT |
| `README.md` | Project documentation |

---

## Verilog Implementation

The encoder is implemented entirely using Verilog's built-in gate primitives.

Primitive used:

- `or`

No `assign` statements are used, making this a true Gate-Level Modeling implementation.

---

## Simulation

The testbench activates one input at a time and displays the corresponding 3-bit binary output using the `$monitor` system task.

---

## Expected Output

```text
D0=1 D1=0 D2=0 D3=0 D4=0 D5=0 D6=0 D7=0 | Y2=0 Y1=0 Y0=0
D0=0 D1=1 D2=0 D3=0 D4=0 D5=0 D6=0 D7=0 | Y2=0 Y1=0 Y0=1
D0=0 D1=0 D2=1 D3=0 D4=0 D5=0 D6=0 D7=0 | Y2=0 Y1=1 Y0=0
D0=0 D1=0 D2=0 D3=1 D4=0 D5=0 D6=0 D7=0 | Y2=0 Y1=1 Y0=1
D0=0 D1=0 D2=0 D3=0 D4=1 D5=0 D6=0 D7=0 | Y2=1 Y1=0 Y0=0
D0=0 D1=0 D2=0 D3=0 D4=0 D5=1 D6=0 D7=0 | Y2=1 Y1=0 Y0=1
D0=0 D1=0 D2=0 D3=0 D4=0 D5=0 D6=1 D7=0 | Y2=1 Y1=1 Y0=0
D0=0 D1=0 D2=0 D3=0 D4=0 D5=0 D6=0 D7=1 | Y2=1 Y1=1 Y0=1
```

---

## Learning Outcomes

After completing this project, you should be able to:

- Understand the operation of an 8×3 Encoder.
- Implement an encoder using Verilog gate primitives.
- Design combinational circuits using Gate-Level Modeling.
- Verify encoder functionality through simulation.

---

## Conclusion

The **8×3 Encoder** is a fundamental combinational circuit that converts one of eight active input lines into a 3-bit binary output. Implementing it using Verilog gate primitives demonstrates how logic gates perform encoding operations and provides a foundation for studying more advanced encoder designs, such as priority encoders.