# 4x2 Encoder – Dataflow Modeling

**Author:** Halima Diyauddeen

---

## Overview

This project implements a **4x2 Encoder** using **Verilog Dataflow Modeling**. A 4x2 encoder converts one active input out of four into its corresponding 2-bit binary code.

> **Note:** This encoder assumes that only one input is HIGH (logic 1) at a time.

---

## Objective

- Understand the operation of a 4x2 Encoder.
- Implement a 4x2 Encoder using Verilog Dataflow Modeling.
- Verify the design using a dedicated testbench.

---

## Boolean Expressions

```text
Y1 = D2 + D3
Y0 = D1 + D3
```

---

## Truth Table

| Active Input | Y1 | Y0 |
|:------------:|:--:|:--:|
| D0 | 0 | 0 |
| D1 | 0 | 1 |
| D2 | 1 | 0 |
| D3 | 1 | 1 |

---

## Project Files

| File | Description |
|------|-------------|
| `encoder_4x2.v` | Design Under Test (DUT) |
| `encoder_4x2_tb.v` | Testbench used to verify the DUT |
| `README.md` | Project documentation |

---

## Verilog Implementation

The encoder is implemented using continuous assignment statements.

```verilog
assign y1 = d2 | d3;
assign y0 = d1 | d3;
```

---

## Simulation

The testbench applies all four valid one-hot input combinations:

- D0
- D1
- D2
- D3

The outputs are observed using the `$monitor` system task.

---

## Expected Output

```text
D3D2D1D0 = 0001 | Y = 00
D3D2D1D0 = 0010 | Y = 01
D3D2D1D0 = 0100 | Y = 10
D3D2D1D0 = 1000 | Y = 11
```

---

## Learning Outcomes

After completing this project, you should be able to:

- Understand the operation of a 4x2 Encoder.
- Explain the concept of one-hot input encoding.
- Implement an encoder using Dataflow Modeling.
- Use OR (`|`) operators to generate binary output codes.
- Verify encoder functionality through simulation.

---

## Conclusion

The 4x2 Encoder is a fundamental combinational circuit that converts one of four active input lines into a 2-bit binary code. It is widely used in digital systems for encoding operations and serves as the foundation for larger encoders, such as the 8x3 Encoder and Priority Encoders.# 4x2 Encoder – Dataflow Modeling

**Author:** Halima Diyauddeen

---

## Overview

This project implements a **4x2 Encoder** using **Verilog Dataflow Modeling**. A 4x2 encoder converts one active input out of four into its corresponding 2-bit binary code.

> **Note:** This encoder assumes that only one input is HIGH (logic 1) at a time.

---

## Objective

- Understand the operation of a 4x2 Encoder.
- Implement a 4x2 Encoder using Verilog Dataflow Modeling.
- Verify the design using a dedicated testbench.

---

## Boolean Expressions

```text
Y1 = D2 + D3
Y0 = D1 + D3
```

---

## Truth Table

| Active Input | Y1 | Y0 |
|:------------:|:--:|:--:|
| D0 | 0 | 0 |
| D1 | 0 | 1 |
| D2 | 1 | 0 |
| D3 | 1 | 1 |

---

## Project Files

| File | Description |
|------|-------------|
| `encoder_4x2.v` | Design Under Test (DUT) |
| `encoder_4x2_tb.v` | Testbench used to verify the DUT |
| `README.md` | Project documentation |

---

## Verilog Implementation

The encoder is implemented using continuous assignment statements.

```verilog
assign y1 = d2 | d3;
assign y0 = d1 | d3;
```

---

## Simulation

The testbench applies all four valid one-hot input combinations:

- D0
- D1
- D2
- D3

The outputs are observed using the `$monitor` system task.

---

## Expected Output

```text
D3D2D1D0 = 0001 | Y = 00
D3D2D1D0 = 0010 | Y = 01
D3D2D1D0 = 0100 | Y = 10
D3D2D1D0 = 1000 | Y = 11
```

---

## Learning Outcomes

After completing this project, you should be able to:

- Understand the operation of a 4x2 Encoder.
- Explain the concept of one-hot input encoding.
- Implement an encoder using Dataflow Modeling.
- Use OR (`|`) operators to generate binary output codes.
- Verify encoder functionality through simulation.

---

## Conclusion

The 4x2 Encoder is a fundamental combinational circuit that converts one of four active input lines into a 2-bit binary code. It is widely used in digital systems for encoding operations and serves as the foundation for larger encoders, such as the 8x3 Encoder and Priority Encoders.