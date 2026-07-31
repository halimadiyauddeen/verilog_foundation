 2-Bit Comparator – Function Modeling

**Author:** Halima Diyauddeen

---

 Overview

This project implements a **2-Bit Comparator** using **Function Modeling** in Verilog. A 2-bit comparator compares two 2-bit binary numbers (`a` and `b`) and produces one of three outputs: **Greater Than (GT)**, **Equal To (EQ)**, or **Less Than (LT)**. The comparison logic is implemented inside a Verilog function, making the design modular and reusable.

---

 Objective

- Understand Function Modeling in Verilog.
- Implement a 2-bit comparator using a user-defined function.
- Learn how functions can return multiple output values.
- Verify the design using randomly generated test vectors.

---

 Function Implementation

The design defines a function that compares two 2-bit inputs and returns the comparison result as a 3-bit value.

```verilog
function [2:0] comparator_func;
    input [1:0] a;
    input [1:0] b;

    begin
        if (a > b)
            comparator_func = 3'b100;
        else if (a == b)
            comparator_func = 3'b010;
        else
            comparator_func = 3'b001;
    end
endfunction

assign {gt, eq, lt} = comparator_func(a, b);
```

The function evaluates both inputs and returns the corresponding comparison result.

---

 Truth Table

| A | B | GT | EQ | LT |
|:-:|:-:|:--:|:--:|:--:|
| 00 | 00 | 0 | 1 | 0 |
| 00 | 01 | 0 | 0 | 1 |
| 00 | 10 | 0 | 0 | 1 |
| 00 | 11 | 0 | 0 | 1 |
| 01 | 00 | 1 | 0 | 0 |
| 01 | 01 | 0 | 1 | 0 |
| 01 | 10 | 0 | 0 | 1 |
| 01 | 11 | 0 | 0 | 1 |
| 10 | 00 | 1 | 0 | 0 |
| 10 | 01 | 1 | 0 | 0 |
| 10 | 10 | 0 | 1 | 0 |
| 10 | 11 | 0 | 0 | 1 |
| 11 | 00 | 1 | 0 | 0 |
| 11 | 01 | 1 | 0 | 0 |
| 11 | 10 | 1 | 0 | 0 |
| 11 | 11 | 0 | 1 | 0 |

---

 Project Files

| File | Description |
|------|-------------|
| `comparator_2bit.v` | Design Under Test (DUT) |
| `comparator_2bit_tb.v` | Testbench used to verify the DUT |
| `README.md` | Project documentation |

---

 Verilog Implementation

The design uses:

- User-defined function
- Continuous assignment (`assign`)
- `if-else` statements
- Relational operators (`>`, `==`)
- Function Modeling

No `always` blocks or gate primitives are used.

---

 Simulation

The testbench generates random input values using Verilog's `$random` system function and applies them using concatenation.

```verilog
repeat (10) begin
    {a, b} = $random;
    #10;
end
```

> **Note:** Concatenation (`{}`) is used because the comparator has two separate 2-bit input vectors (`a` and `b`). This allows both inputs to receive random values simultaneously, making the testbench concise, readable, and scalable.

---

 Sample Output

```text
A=00 | B=00 | GT=0 | EQ=1 | LT=0
A=01 | B=00 | GT=1 | EQ=0 | LT=0
A=10 | B=11 | GT=0 | EQ=0 | LT=1
A=11 | B=10 | GT=1 | EQ=0 | LT=0
...
```

Because `$random` is used, the order of the input combinations may vary each time the simulation runs.

---

 Learning Outcomes

After completing this project, you should be able to:

- Understand Function Modeling in Verilog.
- Create and use user-defined functions.
- Compare two binary numbers using relational operators.
- Generate random test vectors using `$random`.
- Verify comparator functionality through simulation.

---

 Conclusion

The **2-Bit Comparator** demonstrates how Function Modeling can be used to implement combinational comparison circuits in a modular and reusable manner. By encapsulating the comparison logic within a user-defined function, the design becomes easier to understand, maintain, and reuse in larger digital systems requiring magnitude comparison.