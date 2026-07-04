# 1x2 Decoder – Dataflow Modeling

**Author:** Halima Diyauddeen

---

## Overview

This project implements a **1-to-2 Decoder** using **Verilog Dataflow Modeling**. A decoder is a combinational circuit that converts an n-bit binary input into one of \(2^n\) unique outputs. For a 1x2 decoder, one input selects one of two output lines.

---

## Objective

- Understand the operation of a 1x2 Decoder.
- Implement a 1x2 Decoder using Verilog Dataflow Modeling.
- Verify the design using a dedicated testbench.

---

## Boolean Expressions

```text
Y0 = ~A
Y1 =  A
```

---

## Truth Table

| A | Y0 | Y1 |
|:-:|:--:|:--:|
| 0 | 1  | 0  |
| 1 | 0  | 1  |

---

## Project Files

| File | Description |
|------|-------------|
| `decoder_1x2.v` | Design Under Test (DUT) |
| `decoder_1x2_tb.v` | Testbench used to verify the DUT |
| `README.md` | Project documentation |

---

## Verilog Implementation

The decoder is implemented using continuous assignment statements.

```verilog
assign y0 = ~a;
assign y1 =  a;
```

---

## Simulation

The testbench applies all possible input values:

- 0
- 1

The outputs are observed using the `$monitor` system task.

---

## Expected Output

```text
A = 0 | Y0 = 1 | Y1 = 0
A = 1 | Y0 = 0 | Y1 = 1
```

---

## Learning Outcomes

After completing this project, you should be able to:

- Understand the operation of a 1x2 Decoder.
- Implement a decoder using Dataflow Modeling.
- Use the NOT (`~`) operator and direct signal assignment in Verilog.
- Verify a combinational circuit through simulation.

---

## Conclusion

The 1x2 Decoder is the simplest decoder circuit and serves as the foundation for larger decoders such as the **2x4 Decoder**, **3x8 Decoder**, and higher-order decoding circuits used in digital systems.