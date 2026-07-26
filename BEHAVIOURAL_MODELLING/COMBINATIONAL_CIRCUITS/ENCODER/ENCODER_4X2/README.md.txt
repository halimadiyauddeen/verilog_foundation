 4×2 Encoder – Behavioral Modeling

**Author:** Halima Diyauddeen

---

 Overview

This project implements a **4×2 Encoder** using **Behavioral Modeling** in Verilog. A 4×2 Encoder converts one active input out of four input lines into a 2-bit binary output. This implementation assumes that **only one input is active (logic HIGH) at any given time**.

---

 Objective

- Understand Behavioral Modeling in Verilog.
- Implement a 4×2 Encoder using an `always @(*)` block.
- Learn how to use the `case` statement for encoding.
- Verify the design using randomly generated test vectors.

---

 Behavioral Implementation

```verilog
always @(*) begin
    y0 = 1'b0;
    y1 = 1'b0;

    case ({i3, i2, i1, i0})
        4'b0001: begin
            y1 = 1'b0;
            y0 = 1'b0;
        end

        4'b0010: begin
            y1 = 1'b0;
            y0 = 1'b1;
        end

        4'b0100: begin
            y1 = 1'b1;
            y0 = 1'b0;
        end

        4'b1000: begin
            y1 = 1'b1;
            y0 = 1'b1;
        end
    endcase
end
```

The `always @(*)` block continuously monitors the inputs and uses a `case` statement to generate the corresponding binary output.

---

 Truth Table

| I3 | I2 | I1 | I0 | Y1 | Y0 |
|:--:|:--:|:--:|:--:|:--:|:--:|
| 0 | 0 | 0 | 1 | 0 | 0 |
| 0 | 0 | 1 | 0 | 0 | 1 |
| 0 | 1 | 0 | 0 | 1 | 0 |
| 1 | 0 | 0 | 0 | 1 | 1 |

---

 Project Files

| File | Description |
|------|-------------|
| `encoder_4x2.v` | Design Under Test (DUT) |
| `encoder_4x2_tb.v` | Testbench used to verify the DUT |
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
    {i3, i2, i1, i0} = $random;
    #10;
end
```

> **Note:** Concatenation (`{}`) is used because the encoder has four separate input signals (`i0`, `i1`, `i2`, and `i3`). This allows all inputs to receive random values simultaneously, resulting in a concise and scalable testbench. Since a standard encoder assumes that only one input is HIGH at a time, some randomly generated input combinations may not represent valid encoder conditions and may produce undefined or default outputs.

---

 Sample Output

```text
I0=1 | I1=0 | I2=0 | I3=0 | Y1=0 | Y0=0
I0=0 | I1=1 | I2=0 | I3=0 | Y1=0 | Y0=1
I0=0 | I1=0 | I2=1 | I3=0 | Y1=1 | Y0=0
I0=0 | I1=0 | I2=0 | I3=1 | Y1=1 | Y0=1
...
```

Because `$random` is used, the order of the input combinations may vary each time the simulation runs.

---

 Learning Outcomes

After completing this project, you should be able to:

- Use `always @(*)` for combinational circuits.
- Implement an encoder using a `case` statement.
- Apply blocking assignments correctly.
- Generate random test vectors using `$random`.
- Use concatenation (`{}`) to assign multiple input signals simultaneously.
- Understand the valid input conditions for a standard encoder.
- Verify encoder functionality through simulation.

---

 Conclusion

The **4×2 Encoder** demonstrates how Behavioral Modeling can be used to implement binary encoding logic in Verilog. By combining an `always @(*)` block with a `case` statement, this design provides a clear and maintainable implementation while reinforcing the assumptions and behavior of a standard encoder.
