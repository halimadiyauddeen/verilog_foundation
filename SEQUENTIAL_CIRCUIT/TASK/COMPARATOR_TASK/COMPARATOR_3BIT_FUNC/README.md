 3-Bit Comparator – Function Modeling

**Author:** Halima Diyauddeen

---

 Overview

This project implements a **3-Bit Comparator** using **Function Modeling** in Verilog. A 3-bit comparator compares two 3-bit binary numbers (`a` and `b`) and produces one of three outputs: **Greater Than (GT)**, **Equal To (EQ)**, or **Less Than (LT)**. The comparison logic is implemented inside a Verilog function, making the design modular and reusable.

---

 Objective

- Understand Function Modeling in Verilog.
- Implement a 3-bit comparator using a user-defined function.
- Learn how functions can return multiple output values.
- Verify the design using randomly generated test vectors.

---

 Function Implementation

The design defines a function that compares two 3-bit inputs and returns the comparison result as a 3-bit value.

```verilog
function [2:0] comparator_func;
    input [2:0] a;
    input [2:0] b;

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
|:--:|:--:|:--:|:--:|:--:|
| 000 | 000 | 0 | 1 | 0 |
| 001 | 000 | 1 | 0 | 0 |
| 010 | 011 | 0 | 0 | 1 |
| 011 | 011 | 0 | 1 | 0 |
| 100 | 010 | 1 | 0 | 0 |
| 101 | 110 | 0 | 0 | 1 |
| 110 | 101 | 1 | 0 | 0 |
| 111 | 111 | 0 | 1 | 0 |

> **Note:** A 3-bit comparator has **64 possible input combinations (8 × 8)**. The table above shows representative cases for the three comparison conditions.

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

> **Note:** Concatenation (`{}`) is used because the comparator has two separate 3-bit input vectors (`a` and `b`). This allows both inputs to receive random values simultaneously, making the testbench concise, readable, and scalable.

---

 Sample Output

```text
A=000 | B=000 | GT=0 | EQ=1 | LT=0
A=001 | B=000 | GT=1 | EQ=0 | LT=0
A=011 | B=101 | GT=0 | EQ=0 | LT=1
A=111 | B=110 | GT=1 | EQ=0 | LT=0
...
```

Because `$random` is used, the order of the input combinations may vary each time the simulation runs.

---

 Learning Outcomes

After completing this project, you should be able to:

- Understand Function Modeling in Verilog.
- Create and use user-defined functions.
- Compare two 3-bit binary numbers using relational operators.
- Generate random test vectors using `$random`.
- Verify comparator functionality through simulation.

---

 Conclusion

The **3-Bit Comparator** demonstrates how Function Modeling can be used to implement combinational comparison circuits in a modular and reusable manner. By encapsulating the comparison logic within a user-defined function, the design becomes easier to understand, maintain, and reuse in larger digital systems requiring magnitude comparison.