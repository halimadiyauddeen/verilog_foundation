# 8×3 Encoder – Behavioral Modeling

**Author:** Halima Diyauddeen

---

## Overview

This project implements an **8×3 Encoder** using **Behavioral Modeling** in Verilog. An 8×3 Encoder converts one active input out of eight input lines into a 3-bit binary output. This implementation assumes that **only one input is active (logic HIGH) at any given time**.

---

## Objective

- Understand Behavioral Modeling in Verilog.
- Implement an 8×3 Encoder using an `always @(*)` block.
- Learn how to use the `case` statement for encoding.
- Verify the design using randomly generated test vectors.

---

## Behavioral Implementation

```verilog
always @(*) begin
    y2 = 1'b0;
    y1 = 1'b0;
    y0 = 1'b0;

    case ({i7, i6, i5, i4, i3, i2, i1, i0})
        8'b00000001: {y2, y1, y0} = 3'b000;
        8'b00000010: {y2, y1, y0} = 3'b001;
        8'b00000100: {y2, y1, y0} = 3'b010;
        8'b00001000: {y2, y1, y0} = 3'b011;
        8'b00010000: {y2, y1, y0} = 3'b100;
        8'b00100000: {y2, y1, y0} = 3'b101;
        8'b01000000: {y2, y1, y0} = 3'b110;
        8'b10000000: {y2, y1, y0} = 3'b111;
    endcase
end
```

The `always @(*)` block continuously monitors the inputs and uses a `case` statement to generate the corresponding 3-bit binary output.

---

## Truth Table

| Active Input | Output (Y2 Y1 Y0) |
|:------------:|:-----------------:|
| I0 | 000 |
| I1 | 001 |
| I2 | 010 |
| I3 | 011 |
| I4 | 100 |
| I5 | 101 |
| I6 | 110 |
| I7 | 111 |

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

- `always @(*)`
- Blocking assignments (`=`)
- `case` statement

No `assign` statements or gate primitives are used.

---

## Simulation

The testbench generates random input values using Verilog's `$random` system function and applies them using concatenation.

```verilog
repeat (10) begin
    {i7, i6, i5, i4, i3, i2, i1, i0} = $random;
    #10;
end
```

> **Note:** Concatenation (`{}`) is used because the encoder has eight separate input signals (`i0` through `i7`). This allows all inputs to receive random values simultaneously, resulting in a concise and scalable testbench. Since a standard encoder assumes that only one input is HIGH at a time, some randomly generated input combinations may not represent valid encoder conditions and may produce undefined or default outputs.

---

## Sample Output

```text
I7=0 | I6=0 | I5=0 | I4=0 | I3=0 | I2=0 | I1=0 | I0=1 | Y=000
I7=0 | I6=0 | I5=0 | I4=0 | I3=0 | I2=0 | I1=1 | I0=0 | Y=001
I7=0 | I6=0 | I5=0 | I4=0 | I3=0 | I2=1 | I1=0 | I0=0 | Y=010
I7=1 | I6=0 | I5=0 | I4=0 | I3=0 | I2=0 | I1=0 | I0=0 | Y=111
...
```

Because `$random` is used, the order of the input combinations may vary each time the simulation runs.

---

## Learning Outcomes

After completing this project, you should be able to:

- Use `always @(*)` for combinational circuits.
- Implement an encoder using a `case` statement.
- Apply blocking assignments correctly.
- Generate random test vectors using `$random`.
- Use concatenation (`{}`) to assign multiple input signals simultaneously.
- Understand the valid input conditions for a standard encoder.
- Verify encoder functionality through simulation.

---

## Conclusion

The **8×3 Encoder** demonstrates how Behavioral Modeling can be used to implement binary encoding logic in Verilog. By combining an `always @(*)` block with a `case` statement, this design provides a clear, readable, and maintainable implementation while reinforcing the behavior and assumptions of a standard encoder.