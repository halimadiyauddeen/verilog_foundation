 1×4 DEMUX – Function Modeling

**Author:** Halima Diyauddeen

---

 Overview

This project implements a **1×4 Demultiplexer (DEMUX)** using **Function Modeling** in Verilog. A 1×4 DEMUX routes a single input signal (`d`) to one of four output lines (`y[3:0]`) based on the value of the two select lines (`sel`). The routing logic is implemented inside a Verilog function, making the design modular and reusable.

---

 Objective

- Understand Function Modeling in Verilog.
- Implement a 1×4 DEMUX using a user-defined function.
- Learn how functions can return multi-bit values.
- Verify the design using randomly generated test vectors.

---

 Function Implementation

The design defines a function that routes the input signal to the selected output line.

```verilog
function [3:0] demux_func;
    input d;
    input [1:0] sel;

    begin
        case (sel)
            2'b00: demux_func = {3'b000, d};
            2'b01: demux_func = {2'b00, d, 1'b0};
            2'b10: demux_func = {1'b0, d, 2'b00};
            2'b11: demux_func = {d, 3'b000};
        endcase
    end
endfunction

assign y = demux_func(d, sel);
```

The function evaluates the select lines and routes the input signal to the corresponding output.

---

 Truth Table

| D | Sel[1] | Sel[0] | Y3 | Y2 | Y1 | Y0 |
|:-:|:------:|:------:|:--:|:--:|:--:|:--:|
| 0 | 0 | 0 | 0 | 0 | 0 | 0 |
| 1 | 0 | 0 | 0 | 0 | 0 | 1 |
| 1 | 0 | 1 | 0 | 0 | 1 | 0 |
| 1 | 1 | 0 | 0 | 1 | 0 | 0 |
| 1 | 1 | 1 | 1 | 0 | 0 | 0 |

---

 Project Files

| File | Description |
|------|-------------|
| `demux_1x4.v` | Design Under Test (DUT) |
| `demux_1x4_tb.v` | Testbench used to verify the DUT |
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
    {d, sel} = $random;
    #10;
end
```

> **Note:** Concatenation (`{}`) is used because the DEMUX has one data input and two select lines. This allows all inputs to receive random values simultaneously, making the testbench concise, readable, and scalable.

---

 Sample Output

```text
D=1 | SEL=00 | Y=0001
D=1 | SEL=01 | Y=0010
D=1 | SEL=10 | Y=0100
D=1 | SEL=11 | Y=1000
...
```

Because `$random` is used, the order of the input combinations may vary each time the simulation runs.

---

 Learning Outcomes

After completing this project, you should be able to:

- Understand Function Modeling in Verilog.
- Create and use user-defined functions.
- Route data using a `case` statement.
- Generate random test vectors using `$random`.
- Verify DEMUX functionality through simulation.

---

 Conclusion

The **1×4 DEMUX** demonstrates how Function Modeling can be used to implement combinational routing circuits in a modular and reusable manner. By encapsulating the routing logic within a user-defined function, the design becomes easier to understand, maintain, and extend to larger demultiplexer circuits used in digital systems.