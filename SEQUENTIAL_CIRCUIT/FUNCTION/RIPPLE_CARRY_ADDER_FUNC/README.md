 4-Bit Ripple Carry Adder – Function Modeling

**Author:** Halima Diyauddeen

---

 Overview

This project implements a **4-Bit Ripple Carry Adder (RCA)** using **Function Modeling** in Verilog. A Ripple Carry Adder adds two 4-bit binary numbers (`a` and `b`) together with an input carry (`cin`) and produces a 4-bit Sum (`sum`) and an output carry (`cout`). The addition logic is implemented inside a Verilog function, making the design modular and reusable.

---

 Objective

- Understand Function Modeling in Verilog.
- Implement a 4-bit Ripple Carry Adder using a user-defined function.
- Learn how functions can return multi-bit values.
- Verify the design using randomly generated test vectors.

---

 Function Implementation

The design defines a function that performs 4-bit binary addition and returns a 5-bit result consisting of the carry-out and sum.

```verilog
function [4:0] rca_func;
    input [3:0] a;
    input [3:0] b;
    input       cin;

    begin
        rca_func = a + b + cin;
    end
endfunction

assign {cout, sum} = rca_func(a, b, cin);
```

The function performs the binary addition and returns both the Carry-Out and Sum using concatenation.

---

 Truth Table

Since a 4-bit Ripple Carry Adder has **512 possible input combinations (16 × 16 × 2)**, a complete truth table would be very large. Representative examples are shown below.

| A | B | Cin | Sum | Cout |
|:---:|:---:|:---:|:---:|:---:|
| 0000 | 0000 | 0 | 0000 | 0 |
| 0001 | 0010 | 0 | 0011 | 0 |
| 0101 | 0011 | 0 | 1000 | 0 |
| 1001 | 0110 | 0 | 1111 | 0 |
| 1111 | 0001 | 0 | 0000 | 1 |
| 1111 | 1111 | 0 | 1110 | 1 |
| 1010 | 0101 | 1 | 0000 | 1 |
| 1100 | 0011 | 1 | 0000 | 1 |

---

 Project Files

| File | Description |
|------|-------------|
| `ripple_carry_adder.v` | Design Under Test (DUT) |
| `ripple_carry_adder_tb.v` | Testbench used to verify the DUT |
| `README.md` | Project documentation |

---

 Verilog Implementation

The design uses:

- User-defined function
- Continuous assignment (`assign`)
- Arithmetic addition operator (`+`)
- Function Modeling

No `always` blocks or gate primitives are used.

---

 Simulation

The testbench generates random input values using Verilog's `$random` system function and applies them using concatenation.

```verilog
repeat (10) begin
    {a, b, cin} = $random;
    #10;
end
```

> **Note:** Concatenation (`{}`) is used because the Ripple Carry Adder has two 4-bit input vectors (`a` and `b`) and one carry input (`cin`). This allows all inputs to receive random values simultaneously, making the testbench concise, readable, and scalable.

---

 Sample Output

```text
A=0000 | B=0000 | Cin=0 | Sum=0000 | Cout=0
A=0011 | B=0101 | Cin=0 | Sum=1000 | Cout=0
A=1111 | B=0001 | Cin=0 | Sum=0000 | Cout=1
A=1010 | B=0101 | Cin=1 | Sum=0000 | Cout=1
...
```

Because `$random` is used, the order of the input combinations may vary each time the simulation runs.

---

 Learning Outcomes

After completing this project, you should be able to:

- Understand Function Modeling in Verilog.
- Create and use user-defined functions.
- Perform multi-bit binary addition using the arithmetic (`+`) operator.
- Return multiple values from a function using concatenation.
- Generate random test vectors using `$random`.
- Verify Ripple Carry Adder functionality through simulation.

---

 Conclusion

The **4-Bit Ripple Carry Adder** demonstrates how Function Modeling can be used to implement arithmetic circuits in a modular and reusable manner. By encapsulating the addition logic within a user-defined function, the design becomes easier to understand, maintain, and integrate into larger digital systems that require binary addition.