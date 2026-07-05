# 8×3 Encoder – Structural Modeling

**Author:** Halima Diyauddeen

---

## Overview

This project implements an **8×3 Encoder** using **Structural Modeling** in Verilog. An 8×3 encoder converts one active input out of eight (`d0`–`d7`) into a 3-bit binary output (`y2`, `y1`, `y0`). The circuit is implemented using Verilog gate primitives.

---

## Objective

- Understand Structural Modeling in Verilog.
- Implement an 8×3 encoder using gate primitives.
- Learn how binary encoding converts one-hot inputs into binary outputs.
- Verify the design using valid one-hot test vectors.

---

## Structural Implementation

The design uses the following Verilog gate primitive:

- `or`

The outputs are generated as follows:

```verilog
or (y2, d4, d5, d6, d7);
or (y1, d2, d3, d6, d7);
or (y0, d1, d3, d5, d7);
```

---

## Truth Table

| D7 | D6 | D5 | D4 | D3 | D2 | D1 | D0 | Y2 | Y1 | Y0 |
|:--:|:--:|:--:|:--:|:--:|:--:|:--:|:--:|:--:|:--:|:--:|
|0|0|0|0|0|0|0|1|0|0|0|
|0|0|0|0|0|0|1|0|0|0|1|
|0|0|0|0|0|1|0|0|0|1|0|
|0|0|0|0|1|0|0|0|0|1|1|
|0|0|0|1|0|0|0|0|1|0|0|
|0|0|1|0|0|0|0|0|1|0|1|
|0|1|0|0|0|0|0|0|1|1|0|
|1|0|0|0|0|0|0|0|1|1|1|

> **Note:** This is a  basic 8×3 encoder expects only one input to be HIGH at a time (one-hot input). Therefore, $random is not suitable for testing because it frequently generates invalid combinations where multiple inputs are HIGH simultaneously. The testbench uses the eight valid one-hot input combinations instead**.

---

## Project Files

| File | Description |
|------|-------------|
| `encoder_8x3.v` | Design Under Test (DUT) |
| `encoder_8x3_tb.v` | Testbench used to verify the DUT |
| `README.md` | Project documentation |

---

## Verilog Implementation

The design uses:

- Verilog `or` gate primitive
- Structural Modeling

No `always` blocks, `assign` statements, or behavioral operators are used.

---

## Simulation

The testbench applies the eight valid one-hot input combinations.

```verilog
{d0,d1,d2,d3,d4,d5,d6,d7} = 8'b00000001;
{d0,d1,d2,d3,d4,d5,d6,d7} = 8'b00000010;
{d0,d1,d2,d3,d4,d5,d6,d7} = 8'b00000100;
{d0,d1,d2,d3,d4,d5,d6,d7} = 8'b00001000;
{d0,d1,d2,d3,d4,d5,d6,d7} = 8'b00010000;
{d0,d1,d2,d3,d4,d5,d6,d7} = 8'b00100000;
{d0,d1,d2,d3,d4,d5,d6,d7} = 8'b01000000;
{d0,d1,d2,d3,d4,d5,d6,d7} = 8'b10000000;
```

> **Note:** Unlike other combinational circuits in this repository, a basic encoder is **not tested with `$random`** because random values often generate multiple HIGH inputs, which are invalid for a standard encoder.

---

## Sample Output

```text
D0=1 | D1=0 | D2=0 | D3=0 | D4=0 | D5=0 | D6=0 | D7=0 | Y2=0 | Y1=0 | Y0=0
D0=0 | D1=1 | D2=0 | D3=0 | D4=0 | D5=0 | D6=0 | D7=0 | Y2=0 | Y1=0 | Y0=1
D0=0 | D1=0 | D2=1 | D3=0 | D4=0 | D5=0 | D6=0 | D7=0 | Y2=0 | Y1=1 | Y0=0
...
D0=0 | D1=0 | D2=0 | D3=0 | D4=0 | D5=0 | D6=0 | D7=1 | Y2=1 | Y1=1 | Y0=1
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

The **8×3 Encoder** demonstrates how Structural Modeling converts one active input into a 3-bit binary output using simple OR gate connections. It reinforces the concept of one-hot encoding and shows why valid input combinations are essential when testing standard encoders.