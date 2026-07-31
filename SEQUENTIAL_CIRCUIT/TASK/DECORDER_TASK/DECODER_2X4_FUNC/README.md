 2×4 Decoder – Function Modeling

**Author:** Halima Diyauddeen

---

 Overview

This project implements a **2×4 Decoder** using **Function Modeling** in Verilog. A 2×4 Decoder converts a 2-bit binary input (`in`) into one of four active output lines (`y[3:0]`). The decoding logic is implemented inside a Verilog function, making the design modular and reusable.

---

 Objective

- Understand Function Modeling in Verilog.
- Implement a 2×4 Decoder using a user-defined function.
- Learn how functions can return multi-bit values.
- Verify the design using randomly generated test vectors.

---

 Function Implementation

The design defines a function that decodes the 2-bit input into a one-hot 4-bit output.

```verilog
function [3:0] decoder_func;
    input [1:0] in;

    begin
        case (in)
            2'b00: decoder_func = 4'b0001;
            2'b01: decoder_func = 4'b0010;
            2'b10: decoder_func = 4'b0100;
            2'b11: decoder_func = 4'b1000;
        endcase
    end
endfunction

assign y = decoder_func(in);
```

The function evaluates the input and activates the corresponding output line.

---

 Truth Table

| IN | Y3 | Y2 | Y1 | Y0 |
|:--:|:--:|:--:|:--:|:--:|
| 00 | 0 | 0 | 0 | 1 |
| 01 | 0 | 0 | 1 | 0 |
| 10 | 0 | 1 | 0 | 0 |
| 11 | 1 | 0 | 0 | 0 |

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

The testbench generates random input values using Verilog's `$random` system function.

```verilog
repeat (10) begin
    in = $random;
    #10;
end
```

> **Note:** Since the decoder has a single 2-bit input vector, the testbench directly assigns random values to `in`, making the testbench concise and easy to understand.

---

 Sample Output

```text
IN=00 | Y=0001
IN=01 | Y=0010
IN=10 | Y=0100
IN=11 | Y=1000
...
```

Because `$random` is used, the order of the input combinations may vary each time the simulation runs.

---

 Learning Outcomes

After completing this project, you should be able to:

- Understand Function Modeling in Verilog.
- Create and use user-defined functions.
- Decode binary inputs using a `case` statement.
- Generate random test vectors using `$random`.
- Verify 2×4 Decoder functionality through simulation.

---

 Conclusion

The **2×4 Decoder** demonstrates how Function Modeling can be used to implement combinational decoding circuits in a modular and reusable manner. By encapsulating the decoding logic within a user-defined function, the design becomes easier to understand, maintain, and extend to larger decoder circuits used in digital systems.