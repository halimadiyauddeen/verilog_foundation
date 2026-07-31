 3×8 Decoder – Function Modeling

**Author:** Halima Diyauddeen

---

 Overview

This project implements a **3×8 Decoder** using **Function Modeling** in Verilog. A 3×8 Decoder converts a 3-bit binary input (`in`) into one of eight active output lines (`y[7:0]`). The decoding logic is implemented inside a Verilog function, making the design modular, reusable, and easy to understand.

---

 Objective

- Understand Function Modeling in Verilog.
- Implement a 3×8 Decoder using a user-defined function.
- Learn how functions can return multi-bit values.
- Verify the design using randomly generated test vectors.

---

 Function Implementation

The design defines a function that decodes the 3-bit input into a one-hot 8-bit output.

```verilog
function [7:0] decoder_func;
    input [2:0] in;

    begin
        case (in)
            3'b000: decoder_func = 8'b00000001;
            3'b001: decoder_func = 8'b00000010;
            3'b010: decoder_func = 8'b00000100;
            3'b011: decoder_func = 8'b00001000;
            3'b100: decoder_func = 8'b00010000;
            3'b101: decoder_func = 8'b00100000;
            3'b110: decoder_func = 8'b01000000;
            3'b111: decoder_func = 8'b10000000;
        endcase
    end
endfunction

assign y = decoder_func(in);
```

The function evaluates the input and activates the corresponding output line.

---

 Truth Table

| IN | Y7 | Y6 | Y5 | Y4 | Y3 | Y2 | Y1 | Y0 |
|:--:|:--:|:--:|:--:|:--:|:--:|:--:|:--:|:--:|
| 000 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 1 |
| 001 | 0 | 0 | 0 | 0 | 0 | 0 | 1 | 0 |
| 010 | 0 | 0 | 0 | 0 | 0 | 1 | 0 | 0 |
| 011 | 0 | 0 | 0 | 0 | 1 | 0 | 0 | 0 |
| 100 | 0 | 0 | 0 | 1 | 0 | 0 | 0 | 0 |
| 101 | 0 | 0 | 1 | 0 | 0 | 0 | 0 | 0 |
| 110 | 0 | 1 | 0 | 0 | 0 | 0 | 0 | 0 |
| 111 | 1 | 0 | 0 | 0 | 0 | 0 | 0 | 0 |

---

 Project Files

| File | Description |
|------|-------------|
| `decoder_3x8.v` | Design Under Test (DUT) |
| `decoder_3x8_tb.v` | Testbench used to verify the DUT |
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

The testbench generates random input values using Verilog's `$random` system function.

```verilog
repeat (10) begin
    in = $random;
    #10;
end
```

> **Note:** Since the decoder has a single 3-bit input vector, the testbench directly assigns random values to `in`. This makes the testbench simple, concise, and scalable.

---

 Sample Output

```text
IN=000 | Y=00000001
IN=001 | Y=00000010
IN=010 | Y=00000100
IN=011 | Y=00001000
IN=100 | Y=00010000
IN=101 | Y=00100000
IN=110 | Y=01000000
IN=111 | Y=10000000
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
- Verify 3×8 Decoder functionality through simulation.

---

 Conclusion

The **3×8 Decoder** demonstrates how Function Modeling can be used to implement combinational decoding circuits in a modular and reusable manner. By encapsulating the decoding logic within a user-defined function, the design becomes easier to understand, maintain, and extend to larger decoder circuits used in digital systems.