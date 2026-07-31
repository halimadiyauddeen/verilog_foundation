 Half Subtractor – Function Modeling

**Author:** Halima Diyauddeen

---

 Overview

This project implements a **Half Subtractor** using **Function Modeling** in Verilog. A Half Subtractor subtracts one one-bit binary input (`b`) from another (`a`) and produces a **Difference** output and a **Borrow** output. The subtraction logic is implemented inside a Verilog function, making the design modular and reusable.

---

 Objective

- Understand Function Modeling in Verilog.
- Implement a Half Subtractor using a user-defined function.
- Learn how functions can return multiple output values.
- Verify the design using randomly generated test vectors.

---

 Function Implementation

The design defines a function that performs the Half Subtractor operation and returns both the Borrow and Difference outputs as a 2-bit value.

```verilog
function [1:0] half_subtractor_func;
    input a;
    input b;

    begin
        half_subtractor_func[1] = (~a) & b;
        half_subtractor_func[0] = a ^ b;
    end
endfunction

assign {borrow, diff} = half_subtractor_func(a, b);
```

The function computes the subtraction result and returns it to the module, where concatenation assigns the Borrow and Difference outputs simultaneously.

---

 Truth Table

| A | B | Difference | Borrow |
|:-:|:-:|:----------:|:------:|
| 0 | 0 | 0 | 0 |
| 0 | 1 | 1 | 1 |
| 1 | 0 | 1 | 0 |
| 1 | 1 | 0 | 0 |

---

 Project Files

| File | Description |
|------|-------------|
| `half_subtractor.v` | Design Under Test (DUT) |
| `half_subtractor_tb.v` | Testbench used to verify the DUT |
| `README.md` | Project documentation |

---

 Verilog Implementation

The design uses:

- User-defined function
- Continuous assignment (`assign`)
- Bitwise XOR operator (`^`)
- Bitwise AND operator (`&`)
- Bitwise NOT operator (`~`)
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

> **Note:** Concatenation (`{}`) is used because the Half Subtractor has two separate input signals (`a` and `b`). This allows both inputs to receive random values simultaneously, making the testbench concise, readable, and scalable.

---

 Sample Output

```text
A=0 | B=0 | Diff=0 | Borrow=0
A=0 | B=1 | Diff=1 | Borrow=1
A=1 | B=0 | Diff=1 | Borrow=0
A=1 | B=1 | Diff=0 | Borrow=0
...
```

Because `$random` is used, the order of the input combinations may vary each time the simulation runs.

---

 Learning Outcomes

After completing this project, you should be able to:

- Understand Function Modeling in Verilog.
- Create and use user-defined functions.
- Return multiple values from a function using concatenation.
- Generate random test vectors using `$random`.
- Verify Half Subtractor functionality through simulation.

---

 Conclusion

The **Half Subtractor** demonstrates how Function Modeling can be used to implement combinational circuits in a modular and reusable manner. By encapsulating the subtraction logic within a user-defined function, the design becomes easier to understand, maintain, and reuse in more advanced arithmetic circuits such as Full Subtractors.