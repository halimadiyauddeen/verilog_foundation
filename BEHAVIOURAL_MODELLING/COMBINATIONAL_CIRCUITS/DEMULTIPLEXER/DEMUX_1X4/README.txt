# 1×4 DEMUX – Behavioral Modeling

**Author:** Halima Diyauddeen

---

## Overview

This project implements a **1×4 Demultiplexer (DEMUX)** using **Behavioral Modeling** in Verilog. A 1×4 DEMUX routes a single data input to one of four output lines based on the value of the 2-bit select input.

---

## Objective

- Understand Behavioral Modeling in Verilog.
- Implement a 1×4 DEMUX using an `always @(*)` block.
- Learn how to use the `case` statement for signal routing.
- Verify the design using randomly generated test vectors.

---

## Behavioral Implementation

```verilog
always @(*) begin
    y0 = 1'b0;
    y1 = 1'b0;
    y2 = 1'b0;
    y3 = 1'b0;

    case (sel)
        2'b00: y0 = in;
        2'b01: y1 = in;
        2'b10: y2 = in;
        2'b11: y3 = in;
    endcase
end
```

The `always @(*)` block continuously monitors the input and select signals, routing the input to the selected output.

---

## Truth Table

| SEL | IN | Y0 | Y1 | Y2 | Y3 |
|:---:|:--:|:--:|:--:|:--:|:--:|
| 00 | 0 | 0 | 0 | 0 | 0 |
| 00 | 1 | 1 | 0 | 0 | 0 |
| 01 | 0 | 0 | 0 | 0 | 0 |
| 01 | 1 | 0 | 1 | 0 | 0 |
| 10 | 0 | 0 | 0 | 0 | 0 |
| 10 | 1 | 0 | 0 | 1 | 0 |
| 11 | 0 | 0 | 0 | 0 | 0 |
| 11 | 1 | 0 | 0 | 0 | 1 |

---

## Project Files

| File | Description |
|------|-------------|
| `demux_1x4.v` | Design Under Test (DUT) |
| `demux_1x4_tb.v` | Testbench used to verify the DUT |
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

The testbench generates random values for the data input and the 2-bit select input using Verilog's `$random` system function and applies them using concatenation.

```verilog
repeat (10) begin
    {in, sel} = $random;
    #10;
end
```

> **Note:** Concatenation (`{}`) is used because the design has two separate input signals: the data input (`in`) and the 2-bit select input (`sel`). This allows both inputs to receive random values simultaneously, resulting in a concise and scalable testbench.

---

## Sample Output

```text
IN=1 | SEL=00 | Y0=1 | Y1=0 | Y2=0 | Y3=0
IN=1 | SEL=01 | Y0=0 | Y1=1 | Y2=0 | Y3=0
IN=1 | SEL=10 | Y0=0 | Y1=0 | Y2=1 | Y3=0
IN=1 | SEL=11 | Y0=0 | Y1=0 | Y2=0 | Y3=1
...
```

Because `$random` is used, the order of the input combinations may vary each time the simulation runs.

---

## Learning Outcomes

After completing this project, you should be able to:

- Use `always @(*)` for combinational circuits.
- Implement a 1×4 DEMUX using a `case` statement.
- Apply blocking assignments correctly.
- Generate random test vectors using `$random`.
- Use concatenation (`{}`) to assign multiple input signals simultaneously.
- Verify DEMUX functionality through simulation.

---

## Conclusion

The **1×4 DEMUX** demonstrates how Behavioral Modeling can be used to implement data-routing circuits in Verilog. By using an `always @(*)` block, a `case` statement, and randomly generated test vectors, this project reinforces the principles of combinational logic design while maintaining clear, readable, and scalable Verilog code.