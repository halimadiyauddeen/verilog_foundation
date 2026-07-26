 4×1 Multiplexer – Behavioral Modeling

**Author:** Halima Diyauddeen

---

 Overview

This project implements a **4×1 Multiplexer (MUX)** using **Behavioral Modeling** in Verilog. A 4×1 Multiplexer selects one of four input signals (`i0`, `i1`, `i2`, or `i3`) based on the value of the two select lines (`sel`) and forwards the selected input to the output (`y`).

---

 Objective

- Understand Behavioral Modeling in Verilog.
- Implement a 4×1 Multiplexer using a `case` statement.
- Learn how multiplexers select one input from multiple inputs.
- Verify the design using randomly generated test vectors.

---

 Behavioral Implementation

The design uses an `always @(*)` block with a `case` statement to determine which input is connected to the output.

```verilog
always @(*) begin
    case (sel)
        2'b00: y = i0;
        2'b01: y = i1;
        2'b10: y = i2;
        2'b11: y = i3;
    endcase
end
```

The `always @(*)` block continuously monitors the input and select signals. Whenever any of these signals change, the output is updated immediately to reflect the selected input.

---

 Truth Table

| Sel[1] | Sel[0] | Output (Y) |
|:------:|:------:|:----------:|
| 0 | 0 | i0 |
| 0 | 1 | i1 |
| 1 | 0 | i2 |
| 1 | 1 | i3 |

---

 Project Files

| File | Description |
|------|-------------|
| `mux_4x1.v` | Design Under Test (DUT) |
| `mux_4x1_tb.v` | Testbench used to verify the DUT |
| `README.md` | Project documentation |

---

 Verilog Implementation

The design uses:

- `always @(*)`
- Blocking assignments (`=`)
- `case`
- `endcase`
- Behavioral Modeling

No continuous `assign` statements or gate primitives are used.

---

 Simulation

The testbench generates random input values using Verilog's `$random` system function and applies them using concatenation.

```verilog
repeat (10) begin
    {i0, i1, i2, i3, sel} = $random;
    #10;
end
```

> **Note:** Concatenation (`{}`) is used because the 4×1 Multiplexer has five separate input signals (`i0`, `i1`, `i2`, `i3`, and `sel`). This allows all inputs to receive random values simultaneously, making the testbench concise, readable, and scalable.

---

 Sample Output

```text
I0=1 | I1=0 | I2=1 | I3=0 | SEL=00 | Y=1
I0=0 | I1=1 | I2=0 | I3=1 | SEL=01 | Y=1
I0=1 | I1=0 | I2=1 | I3=0 | SEL=10 | Y=1
I0=0 | I1=1 | I2=0 | I3=1 | SEL=11 | Y=1
...
```

Because `$random` is used, the order of the input combinations may vary each time the simulation runs.

---

 Learning Outcomes

After completing this project, you should be able to:

- Understand Behavioral Modeling in Verilog.
- Implement a multiplexer using an `always @(*)` block.
- Use a `case` statement for data selection.
- Generate random test vectors using `$random`.
- Use concatenation (`{}`) to assign multiple input signals simultaneously.
- Verify multiplexer functionality through simulation.

---

 Conclusion

The **4×1 Multiplexer** demonstrates how Behavioral Modeling simplifies the implementation of combinational circuits. By using an `always @(*)` block and a `case` statement, the design efficiently selects one of four input signals based on the two select lines. This project provides a solid foundation for understanding larger multiplexers and data routing techniques in digital system design.