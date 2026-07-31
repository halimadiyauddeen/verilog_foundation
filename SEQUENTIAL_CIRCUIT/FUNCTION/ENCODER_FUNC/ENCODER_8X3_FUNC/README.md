 8×3 Encoder – Function Modeling

**Author:** Halima Diyauddeen

---

 Overview

This project implements an **8×3 Encoder** using **Function Modeling** in Verilog. An 8×3 Encoder converts one of eight active input lines (`d0` to `d7`) into a 3-bit binary output (`y`). The encoding logic is implemented inside a Verilog function, making the design modular, reusable, and easy to understand.

---

 Objective

- Understand Function Modeling in Verilog.
- Implement an 8×3 Encoder using a user-defined function.
- Learn how functions can return multi-bit values.
- Verify the design using randomly generated test vectors.

---

 Function Implementation

The design defines a function that determines the binary code corresponding to the active input.

```verilog
function [2:0] encoder_func;
    input d0;
    input d1;
    input d2;
    input d3;
    input d4;
    input d5;
    input d6;
    input d7;

    begin
        if (d7)
            encoder_func = 3'b111;
        else if (d6)
            encoder_func = 3'b110;
        else if (d5)
            encoder_func = 3'b101;
        else if (d4)
            encoder_func = 3'b100;
        else if (d3)
            encoder_func = 3'b011;
        else if (d2)
            encoder_func = 3'b010;
        else if (d1)
            encoder_func = 3'b001;
        else
            encoder_func = 3'b000;
    end
endfunction

assign y = encoder_func(d0, d1, d2, d3, d4, d5, d6, d7);
```

The function evaluates the inputs and returns the corresponding 3-bit binary output.

---

 Truth Table

| D7 | D6 | D5 | D4 | D3 | D2 | D1 | D0 | Y |
|:--:|:--:|:--:|:--:|:--:|:--:|:--:|:--:|:---:|
| 0 | 0 | 0 | 0 | 0 | 0 | 0 | 1 | 000 |
| 0 | 0 | 0 | 0 | 0 | 0 | 1 | 0 | 001 |
| 0 | 0 | 0 | 0 | 0 | 1 | 0 | 0 | 010 |
| 0 | 0 | 0 | 0 | 1 | 0 | 0 | 0 | 011 |
| 0 | 0 | 0 | 1 | 0 | 0 | 0 | 0 | 100 |
| 0 | 0 | 1 | 0 | 0 | 0 | 0 | 0 | 101 |
| 0 | 1 | 0 | 0 | 0 | 0 | 0 | 0 | 110 |
| 1 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 111 |

> **Note:** A standard 8×3 encoder assumes that only one input is HIGH at any given time. If multiple inputs are HIGH simultaneously, the output is undefined. In this implementation, the highest-priority active input (`d7` to `d0`) is selected.

---

 Project Files

| File | Description |
|------|-------------|
| `encoder_8x3.v` | Design Under Test (DUT) |
| `encoder_8x3_tb.v` | Testbench used to verify the DUT |
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
    {d0, d1, d2, d3, d4, d5, d6, d7} = $random;
    #10;
end
```

> **Note:** Concatenation (`{}`) is used because the encoder has eight separate input signals (`d0` to `d7`). This allows all inputs to receive random values simultaneously, making the testbench concise, readable, and scalable.

---

 Sample Output

```text
D0=1 | D1=0 | D2=0 | D3=0 | D4=0 | D5=0 | D6=0 | D7=0 | Y=000
D0=0 | D1=1 | D2=0 | D3=0 | D4=0 | D5=0 | D6=0 | D7=0 | Y=001
D0=0 | D1=0 | D2=1 | D3=0 | D4=0 | D5=0 | D6=0 | D7=0 | Y=010
D0=0 | D1=0 | D2=0 | D3=1 | D4=0 | D5=0 | D6=0 | D7=0 | Y=011
...
```

Because `$random` is used, the order of the input combinations may vary each time the simulation runs.

---

 Learning Outcomes

After completing this project, you should be able to:

- Understand Function Modeling in Verilog.
- Create and use user-defined functions.
- Return multi-bit values from a function.
- Generate random test vectors using `$random`.
- Verify encoder functionality through simulation.

---

 Conclusion

The **8×3 Encoder** demonstrates how Function Modeling can be used to implement combinational circuits in a modular and reusable manner. By encapsulating the encoding logic within a user-defined function, the design becomes easier to understand, maintain, and reuse in larger digital systems.