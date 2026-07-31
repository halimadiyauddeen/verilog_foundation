 8×1 Multiplexer (MUX) – Function Modeling

**Author:** Halima Diyauddeen

---

 Overview

This project implements an **8×1 Multiplexer (MUX)** using **Function Modeling** in Verilog. An 8×1 Multiplexer selects one of eight input signals (`i0` to `i7`) based on the value of the three select lines (`sel`) and forwards the selected input to the output (`y`). The selection logic is implemented inside a Verilog function, making the design modular and reusable.

---

 Objective

- Understand Function Modeling in Verilog.
- Implement an 8×1 Multiplexer using a user-defined function.
- Learn how functions simplify combinational logic.
- Verify the design using randomly generated test vectors.

---

 Function Implementation

The design defines a function that selects one of the eight input signals based on the select lines.

```verilog
function mux_func;
    input i0;
    input i1;
    input i2;
    input i3;
    input i4;
    input i5;
    input i6;
    input i7;
    input [2:0] sel;

    begin
        case (sel)
            3'b000: mux_func = i0;
            3'b001: mux_func = i1;
            3'b010: mux_func = i2;
            3'b011: mux_func = i3;
            3'b100: mux_func = i4;
            3'b101: mux_func = i5;
            3'b110: mux_func = i6;
            3'b111: mux_func = i7;
        endcase
    end
endfunction

assign y = mux_func(i0, i1, i2, i3, i4, i5, i6, i7, sel);
```

The function evaluates the select lines and forwards the corresponding input to the output.

---

 Truth Table

| Sel | Output |
|:---:|:------:|
| 000 | I0 |
| 001 | I1 |
| 010 | I2 |
| 011 | I3 |
| 100 | I4 |
| 101 | I5 |
| 110 | I6 |
| 111 | I7 |

---

 Project Files

| File | Description |
|------|-------------|
| `mux_8x1.v` | Design Under Test (DUT) |
| `mux_8x1_tb.v` | Testbench used to verify the DUT |
| `README.md` | Project documentation |

---

 Verilog Implementation

The design uses:

- User-defined function
- Continuous assignment (`assign`)
- `case`
- `endcase`
- Function Modeling

No `always` blocks or gate primitives are used.

---

 Simulation

The testbench generates random input values using Verilog's `$random` system function and applies them using concatenation.

```verilog
repeat (10) begin
    {i0, i1, i2, i3, i4, i5, i6, i7, sel} = $random;
    #10;
end
```

> **Note:** Concatenation (`{}`) is used because the multiplexer has eight input signals and three select lines. This allows all inputs to receive random values simultaneously, making the testbench concise, readable, and scalable.

---

 Sample Output

```text
I0=1 | I1=0 | I2=1 | I3=0 | I4=1 | I5=0 | I6=0 | I7=1 | SEL=000 | Y=1
I0=1 | I1=0 | I2=1 | I3=0 | I4=1 | I5=0 | I6=0 | I7=1 | SEL=001 | Y=0
I0=1 | I1=0 | I2=1 | I3=0 | I4=1 | I5=0 | I6=0 | I7=1 | SEL=010 | Y=1
I0=1 | I1=0 | I2=1 | I3=0 | I4=1 | I5=0 | I6=0 | I7=1 | SEL=111 | Y=1
...
```

Because `$random` is used, the order of the input combinations may vary each time the simulation runs.

---

 Learning Outcomes

After completing this project, you should be able to:

- Understand Function Modeling in Verilog.
- Create and use user-defined functions.
- Implement data selection using a `case` statement.
- Generate random test vectors using `$random`.
- Verify 8×1 Multiplexer functionality through simulation.

---

 Conclusion

The **8×1 Multiplexer** demonstrates how Function Modeling can be used to implement combinational data-selection circuits in a modular and reusable manner. By encapsulating the selection logic within a user-defined function, the design becomes easier to understand, maintain, and integrate into larger digital systems.