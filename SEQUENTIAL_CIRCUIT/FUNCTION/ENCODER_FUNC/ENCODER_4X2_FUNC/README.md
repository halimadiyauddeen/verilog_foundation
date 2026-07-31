 4×2 Encoder – Function Modeling

**Author:** Halima Diyauddeen

---

 Overview

This project implements a **4×2 Encoder** using **Function Modeling** in Verilog. A 4×2 Encoder converts one of four active input lines (`d0`, `d1`, `d2`, or `d3`) into a 2-bit binary output (`y`). The encoding logic is implemented inside a Verilog function, making the design modular and reusable.

---

 Objective

- Understand Function Modeling in Verilog.
- Implement a 4×2 Encoder using a user-defined function.
- Learn how functions can return multi-bit values.
- Verify the design using randomly generated test vectors.

---

 Function Implementation

The design defines a function that determines the binary code corresponding to the active input.

```verilog
function [1:0] encoder_func;
    input d0;
    input d1;
    input d2;
    input d3;

    begin
        if (d3)
            encoder_func = 2'b11;
        else if (d2)
            encoder_func = 2'b10;
        else if (d1)
            encoder_func = 2'b01;
        else
            encoder_func = 2'b00;
    end
endfunction

assign y = encoder_func(d0, d1, d2, d3);
```

The function evaluates the inputs and returns the corresponding 2-bit binary output.

---

 Truth Table

| D3 | D2 | D1 | D0 | Y |
|:--:|:--:|:--:|:--:|:--:|
| 0 | 0 | 0 | 1 | 00 |
| 0 | 0 | 1 | 0 | 01 |
| 0 | 1 | 0 | 0 | 10 |
| 1 | 0 | 0 | 0 | 11 |

> **Note:** A standard 4×2 encoder assumes that only one input is HIGH at any given time. If multiple inputs are HIGH simultaneously, the output is undefined. In this implementation, the highest-priority active input (`d3` to `d0`) is selected.

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

- User-defined function
- Continuous assignment (`assign`)
- `if-else` statements
- Function Modeling

No `always` blocks or gate primitives are used.

---

 Simulation

The testbench generates random input values using Verilog's `$random` system function and applies them using concatenation.

```verilog
repeat (10) begin
    {d0, d1, d2, d3} = $random;
    #10;
end
```

> **Note:** Concatenation (`{}`) is used because the encoder has four separate input signals. This allows all inputs to receive random values simultaneously, making the testbench concise, readable, and scalable.

---

 Sample Output

```text
D0=1 | D1=0 | D2=0 | D3=0 | Y=00
D0=0 | D1=1 | D2=0 | D3=0 | Y=01
D0=0 | D1=0 | D2=1 | D3=0 | Y=10
D0=0 | D1=0 | D2=0 | D3=1 | Y=11
...
```

Because `$random` is used, the order of the input combinations may vary each time the simulation runs.

---

 Learning Outcomes

After completing this project, you should be able to:

- Understand Function Modeling in Verilog.
- Create and use user-defined functions.
- Implement a 4×2 Encoder using `if-else` statements.
- Generate random test vectors using `$random`.
- Verify encoder functionality through simulation.

---

 Conclusion

The **4×2 Encoder** demonstrates how Function Modeling can be used to implement combinational circuits in a modular and reusable manner. By encapsulating the encoding logic within a user-defined function, the design becomes easier to understand, maintain, and extend to larger encoder circuits.