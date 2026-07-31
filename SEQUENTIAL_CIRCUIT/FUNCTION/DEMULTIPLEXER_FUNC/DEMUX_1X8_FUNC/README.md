 1×8 DEMUX – Function Modeling

**Author:** Halima Diyauddeen

---

 Overview

This project implements a **1×8 Demultiplexer (DEMUX)** using **Function Modeling** in Verilog. A 1×8 DEMUX routes a single input signal (`d`) to one of eight output lines (`y[7:0]`) based on the value of the three select lines (`sel`). The routing logic is implemented inside a Verilog function, making the design modular and reusable.

---

 Objective

- Understand Function Modeling in Verilog.
- Implement a 1×8 DEMUX using a user-defined function.
- Learn how functions can return multi-bit values.
- Verify the design using randomly generated test vectors.

---

 Function Implementation

The design defines a function that routes the input signal to the selected output line.

```verilog
function [7:0] demux_func;
    input d;
    input [2:0] sel;

    begin
        case (sel)
            3'b000: demux_func = {7'b0000000, d};
            3'b001: demux_func = {6'b000000, d, 1'b0};
            3'b010: demux_func = {5'b00000, d, 2'b00};
            3'b011: demux_func = {4'b0000, d, 3'b000};
            3'b100: demux_func = {3'b000, d, 4'b0000};
            3'b101: demux_func = {2'b00, d, 5'b00000};
            3'b110: demux_func = {1'b0, d, 6'b000000};
            3'b111: demux_func = {d, 7'b0000000};
        endcase
    end
endfunction

assign y = demux_func(d, sel);
```

The function evaluates the select lines and routes the input signal to the corresponding output.

---

 Truth Table

| D | Sel[2] | Sel[1] | Sel[0] | Y7 | Y6 | Y5 | Y4 | Y3 | Y2 | Y1 | Y0 |
|:-:|:------:|:------:|:------:|:--:|:--:|:--:|:--:|:--:|:--:|:--:|:--:|
| 1 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 1 |
| 1 | 0 | 0 | 1 | 0 | 0 | 0 | 0 | 0 | 0 | 1 | 0 |
| 1 | 0 | 1 | 0 | 0 | 0 | 0 | 0 | 0 | 1 | 0 | 0 |
| 1 | 0 | 1 | 1 | 0 | 0 | 0 | 0 | 1 | 0 | 0 | 0 |
| 1 | 1 | 0 | 0 | 0 | 0 | 0 | 1 | 0 | 0 | 0 | 0 |
| 1 | 1 | 0 | 1 | 0 | 0 | 1 | 0 | 0 | 0 | 0 | 0 |
| 1 | 1 | 1 | 0 | 0 | 1 | 0 | 0 | 0 | 0 | 0 | 0 |
| 1 | 1 | 1 | 1 | 1 | 0 | 0 | 0 | 0 | 0 | 0 | 0 |

---

 Project Files

| File | Description |
|------|-------------|
| `demux_1x8.v` | Design Under Test (DUT) |
| `demux_1x8_tb.v` | Testbench used to verify the DUT |
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

> **Note:** Concatenation (`{}`) is used because the DEMUX has one data input and three select lines. This allows all inputs to receive random values simultaneously, making the testbench concise, readable, and scalable.

---

 Sample Output

```text
D=1 | SEL=000 | Y=00000001
D=1 | SEL=001 | Y=00000010
D=1 | SEL=010 | Y=00000100
D=1 | SEL=011 | Y=00001000
D=1 | SEL=100 | Y=00010000
D=1 | SEL=101 | Y=00100000
D=1 | SEL=110 | Y=01000000
D=1 | SEL=111 | Y=10000000
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
- Verify 1×8 DEMUX functionality through simulation.

---

 Conclusion

The **1×8 DEMUX** demonstrates how Function Modeling can be used to implement combinational routing circuits in a modular and reusable manner. By encapsulating the routing logic within a user-defined function, the design becomes easier to understand, maintain, and extend to larger demultiplexer circuits used in digital systems.