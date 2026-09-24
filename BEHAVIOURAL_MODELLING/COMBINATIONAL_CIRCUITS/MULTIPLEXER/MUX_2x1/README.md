 2×1 Multiplexer (MUX) – Behavioral Modeling

**Author:** Halima Diyauddeen

---

 Overview

This project implements a **2×1 Multiplexer (MUX)** using **Behavioral Modeling** in Verilog. A 2×1 MUX selects one of two data inputs (`i0` or `i1`) based on the value of the select input (`sel`) and forwards the selected input to the output.

---

 Objective

- Understand Behavioral Modeling in Verilog.
- Implement a 2×1 MUX using an `always @(*)` block.
- Learn how to use the `case` statement for data selection.
- Verify the design using randomly generated test vectors.

---

 Behavioral Implementation

```verilog
always @(*) begin
    case (sel)
        1'b0: y = i0;
        1'b1: y = i1;
    endcase
end
```

The `always @(*)` block continuously monitors all input signals. The `case` statement selects either `i0` or `i1` depending on the value of `sel`.

---

 Truth Table

| SEL | I1 | I0 | Y |
|:---:|:--:|:--:|:--:|
| 0 | X | 0 | 0 |
| 0 | X | 1 | 1 |
| 1 | 0 | X | 0 |
| 1 | 1 | X | 1 |

**Note:** `X` means "don't care" because that input is not selected.

---

 Project Files

| File | Description |
|------|-------------|
| `mux_2x1.v` | Design Under Test (DUT) |
| `mux_2x1_tb.v` | Testbench used to verify the DUT |
| `README.md` | Project documentation |

---

 Verilog Implementation

The design uses:

- `always @(*)`
- Blocking assignments (`=`)
- `case` statement

No `assign` statements or gate primitives are used.

---

 Simulation

The testbench generates random input values using Verilog's `$random` system function and applies them using concatenation.

```verilog
repeat (10) begin
    {i0, i1, sel} = $random;
    #10;
end
```

> **Note:** Concatenation (`{}`) is used because the multiplexer has three separate input signals (`i0`, `i1`, and `sel`). This allows all inputs to receive random values simultaneously, making the testbench concise, readable, and scalable for larger designs.

---

 Sample Output

```text
I0=0 | I1=1 | SEL=0 | Y=0
I0=1 | I1=0 | SEL=0 | Y=1
I0=0 | I1=1 | SEL=1 | Y=1
I0=1 | I1=0 | SEL=1 | Y=0
...
```

Because `$random` is used, the order of the input combinations may vary each time the simulation runs.

---

 Learning Outcomes

After completing this project, you should be able to:

- Use `always @(*)` for combinational circuits.
- Implement a multiplexer using Behavioral Modeling.
- Use a `case` statement for data selection.
- Apply blocking assignments correctly.
- Generate random test vectors using `$random`.
- Use concatenation (`{}`) to assign multiple input signals simultaneously.
- Verify multiplexer functionality through simulation.

---

 Conclusion

The **2×1 Multiplexer** demonstrates how Behavioral Modeling can be used to implement data-selection circuits in Verilog. By combining an `always @(*)` block with a `case` statement, the design remains simple, readable, and efficient while accurately routing the selected input to the output.
