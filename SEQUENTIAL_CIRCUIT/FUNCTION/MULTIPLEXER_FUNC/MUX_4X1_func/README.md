 4×1 Multiplexer (MUX) – Function Modeling

**Author:** Halima Diyauddeen

---

 Overview

This project implements a **4×1 Multiplexer (MUX)** using **Function Modeling** in Verilog. A 4×1 Multiplexer selects one of four input signals (`i0`, `i1`, `i2`, and `i3`) based on the value of the two select lines (`sel`) and forwards the selected input to the output (`y`). The selection logic is implemented inside a Verilog function, making the design modular and reusable.

---

 Objective

- Understand Function Modeling in Verilog.
- Implement a 4×1 Multiplexer using a user-defined function.
- Learn how functions simplify combinational logic.
- Verify the design using randomly generated test vectors.

---

 Function Implementation

The design defines a function that selects one of the four input signals based on the select lines.

```verilog
function mux_func;
    input i0;
    input i1;
    input i2;
    input i3;
    input [1:0] sel;

    begin
        case (sel)
            2'b00: mux_func = i0;
            2'b01: mux_func = i1;
            2'b10: mux_func = i2;
            2'b11: mux_func = i3;
        endcase
    end
endfunction

assign y = mux_func(i0, i1, i2, i3, sel);
```

The function evaluates the select lines and forwards the corresponding input to the output.

---

 Truth Table

| Sel | Y |
|:---:|:---:|
| 00 | I0 |
| 01 | I1 |
| 10 | I2 |
| 11 | I3 |

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
    {i0, i1, i2, i3, sel} = $random;
    #10;
end
```

> **Note:** Concatenation (`{}`) is used because the multiplexer has four input signals and two select lines. This allows all inputs to receive random values simultaneously, making the testbench concise, readable, and scalable.

---

 Sample Output

```text
I0=0 | I1=1 | I2=0 | I3=1 | SEL=00 | Y=0
I0=1 | I1=0 | I2=1 | I3=0 | SEL=01 | Y=0
I0=0 | I1=1 | I2=1 | I3=0 | SEL=10 | Y=1
I0=1 | I1=0 | I2=0 | I3=1 | SEL=11 | Y=1
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
- Verify multiplexer functionality through simulation.

---

 Conclusion

The **4×1 Multiplexer** demonstrates how Function Modeling can be used to implement combinational selection circuits in a modular and reusable manner. By encapsulating the selection logic within a user-defined function, the design becomes easier to understand, maintain, and integrate into larger digital systems.