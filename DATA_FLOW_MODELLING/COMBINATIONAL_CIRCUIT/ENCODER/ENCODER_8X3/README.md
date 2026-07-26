 8x3 Encoder – Dataflow Modeling

**Author:** Halima Diyauddeen

---

 Overview

This project implements an **8x3 Encoder** using **Verilog Dataflow Modeling**. An encoder converts one active input line into its equivalent binary code. An 8x3 encoder has eight input lines and three output bits.

> **Note:** This implementation assumes that only one input is HIGH (logic 1) at a time.

---

 Objective

- Understand the operation of an 8x3 Encoder.
- Implement an 8x3 Encoder using Verilog Dataflow Modeling.
- Verify the design using a dedicated testbench.

---

 Boolean Expressions

```text
Y2 = D4 + D5 + D6 + D7
Y1 = D2 + D3 + D6 + D7
Y0 = D1 + D3 + D5 + D7
```

---

 Truth Table

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

 Project Files

| File | Description |
|------|-------------|
| `encoder_8x3.v` | Design Under Test (DUT) |
| `encoder_8x3_tb.v` | Testbench used to verify the DUT |
| `README.md` | Project documentation |

---

 Verilog Implementation

The encoder is implemented using continuous assignment statements.

```verilog
assign y2 = d4 | d5 | d6 | d7;
assign y1 = d2 | d3 | d6 | d7;
assign y0 = d1 | d3 | d5 | d7;
```

---

 Simulation

The testbench applies all eight valid one-hot input combinations:

- D0
- D1
- D2
- D3
- D4
- D5
- D6
- D7

The outputs are observed using the `$monitor` system task.

---

 Expected Output

```text
00000001 -> 000
00000010 -> 001
00000100 -> 010
00001000 -> 011
00010000 -> 100
00100000 -> 101
01000000 -> 110
10000000 -> 111
```

---

 Learning Outcomes

After completing this project, you should be able to:

- Understand the operation of an 8x3 Encoder.
- Explain the concept of one-hot input encoding.
- Implement an encoder using Dataflow Modeling.
- Use OR (`|`) operators to generate binary output codes.
- Verify encoder functionality through simulation.

---

 Conclusion

The 8x3 Encoder converts one of eight active input lines into a 3-bit binary code. It is commonly used in digital systems for data encoding and serves as the foundation for designing **priority encoders**, which resolve cases where multiple inputs are active simultaneously.