# 1×2 DEMUX – Behavioral Modeling

**Author:** Halima Diyauddeen

---

## Overview

This project implements a **1×2 Demultiplexer (DEMUX)** using **Behavioral Modeling** in Verilog. A 1×2 DEMUX routes a single data input to one of two output lines based on the value of the select input.

---

## Objective

- Understand Behavioral Modeling in Verilog.
- Implement a 1×2 DEMUX using an `always @(*)` block.
- Learn how to use the `case` statement for signal routing.
- Verify the design using randomly generated test vectors.

---

## Behavioral Implementation

```verilog
always @(*) begin
    y0 = 1'b0;
    y1 = 1'b0;

    case (sel)
        1'b0: y0 = in;
        1'b1: y1 = in;
    endcase
end
```

The `always @(*)` block continuously monitors the input and select signals, routing the input to the selected output.

---

## Truth Table

| SEL | IN | Y0 | Y1 |
|:---:|:--:|:--:|:--:|
| 0 | 0 | 0 | 0 |
| 0 | 1 | 1 | 0 |
| 1 | 0 | 0 | 0 |
| 1 | 1 | 0 | 1 |

---

## Project Files

| File | Description |
|------|-------------|
| `demux_1x2.v` | Design Under Test (DUT) |
| `demux_1x2_tb.v` | Testbench used to verify the DUT |
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

The testbench generates random values for both the data input and the select input using Verilog's `$random` system function and applies them using concatenation.

```verilog
repeat (10) begin
    {in, sel} = $random;
    #10;
end
```

> **Note:** Concatenation (`{}`) is used because `in` and `sel` are two separate input signals. This allows both inputs to receive random values simultaneously, making the testbench concise and easy to extend for larger designs.

---

## Sample Output

```text
IN=0 | SEL=0 | Y0=0 | Y1=0
IN=1 | SEL=0 | Y0=1 | Y1=0
IN=0 | SEL=1 | Y0=0 | Y1=0
IN=1 | SEL=1 | Y0=0 | Y1=1
...
```

Because `$random` is used, the order of the input combinations may vary each time the simulation runs.

---

## Learning Outcomes

After completing this project, you should be able to:

- Use `always @(*)` for combinational circuits.
- Implement a DEMUX using a `case` statement.
- Apply blocking assignments correctly.
- Generate random test vectors using `$random`.
- Use concatenation (`{}`) to assign multiple input signals simultaneously.
- Verify DEMUX functionality through simulation.

---

## Conclusion

The **1×2 DEMUX** demonstrates how Behavioral Modeling can be used to implement data-routing circuits in Verilog. By combining an `always @(*)` block with a `case` statement and random test vectors, this project reinforces the principles of combinational logic design and efficient testbench development.