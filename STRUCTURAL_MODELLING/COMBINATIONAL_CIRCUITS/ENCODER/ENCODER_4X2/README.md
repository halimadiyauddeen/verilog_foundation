# 4×2 Encoder – Structural Modeling

**Author:** Halima Diyauddeen

---

## Overview

This project implements a **4×2 Encoder** using **Structural Modeling** in Verilog. A 4×2 encoder converts one active input out of four (`d0`–`d3`) into a 2-bit binary code (`y1`, `y0`). The circuit is implemented using Verilog gate primitives.

---

## Objective

- Understand Structural Modeling in Verilog.
- Implement a 4×2 encoder using gate primitives.
- Learn how binary encoding converts one-hot inputs into binary outputs.
- Verify the design using valid one-hot test vectors.

---

## Structural Implementation

The design uses the following Verilog gate primitive:

- `or`

The outputs are generated as follows:

```verilog
or (y1, d2, d3);
or (y0, d1, d3);
```

---

## Truth Table

| D3 | D2 | D1 | D0 | Y1 | Y0 |
|:--:|:--:|:--:|:--:|:--:|:--:|
| 0 | 0 | 0 | 1 | 0 | 0 |
| 0 | 0 | 1 | 0 | 0 | 1 |
| 0 | 1 | 0 | 0 | 1 | 0 |
| 1 | 0 | 0 | 0 | 1 | 1 |

> **Note:** This is a basic encoder and assumes that **only one input is HIGH at any given time**.

---

## Project Files

| File | Description |
|------|-------------|
| `encoder_4x2.v` | Design Under Test (DUT) |
| `encoder_4x2_tb.v` | Testbench used to verify the DUT |
| `README.md` | Project documentation |

---

## Verilog Implementation

The design uses:

- Verilog `or` gate primitive
- Structural Modeling

No `always` blocks, `assign` statements, or behavioral operators are used.

---

## Simulation

The testbench applies the four valid one-hot input combinations.

```verilog
{d0, d1, d2, d3} = 4'b0001;
{d0, d1, d2, d3} = 4'b0010;
{d0, d1, d2, d3} = 4'b0100;
{d0, d1, d2, d3} = 4'b1000;
```

> **Note:** Unlike other combinational circuits in this repository, a basic encoder is **not tested with `$random`** because random values often produce multiple HIGH inputs, which are invalid for a standard encoder. Therefore, only valid one-hot input combinations are used.

---

## Sample Output

```text
D0=1 | D1=0 | D2=0 | D3=0 | Y1=0 | Y0=0
D0=0 | D1=1 | D2=0 | D3=0 | Y1=0 | Y0=1
D0=0 | D1=0 | D2=1 | D3=0 | Y1=1 | Y0=0
D0=0 | D1=0 | D2=0 | D3=1 | Y1=1 | Y0=1
```

---

## Learning Outcomes

After completing this project, you should be able to:

- Understand Structural Modeling in Verilog.
- Implement an encoder using gate primitives.
- Understand one-hot encoding.
- Verify encoder functionality using valid input combinations.
- Recognize why basic encoders require one-hot inputs.

---

## Conclusion

The **4×2 Encoder** demonstrates how Structural Modeling converts one active input into a binary output using simple OR gate connections. It also highlights an important concept in digital design: a standard encoder assumes one-hot inputs, so valid test vectors must be used during verification.