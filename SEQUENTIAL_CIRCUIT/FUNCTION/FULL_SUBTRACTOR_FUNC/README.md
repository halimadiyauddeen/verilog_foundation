 Full Subtractor – Function Modeling

**Author:** Halima Diyauddeen

---

 Overview

This project implements a **Full Subtractor** using **Function Modeling** in Verilog. A Full Subtractor subtracts two one-bit binary inputs (`b` and `bin`) from another one-bit binary input (`a`) and produces a **Difference** output and a **Borrow** output. The subtraction logic is implemented inside a Verilog function, making the design modular and reusable.

---

 Objective

- Understand Function Modeling in Verilog.
- Implement a Full Subtractor using a user-defined function.
- Learn how functions can return multiple output values.
- Verify the design using randomly generated test vectors.

---

 Function Implementation

The design defines a function that performs the Full Subtractor operation and returns both the Borrow and Difference outputs as a 2-bit value.

```verilog
function [1:0] full_subtractor_func;
    input a;
    input b;
    input bin;

    begin
        full_subtractor_func[1] = (~a & b) | (~(a ^ b) & bin);
        full_subtractor_func[0] = a ^ b ^ bin;
    end
endfunction

assign {borrow, diff} = full_subtractor_func(a, b, bin);
```

The function computes the subtraction result and returns it to the module, where concatenation assigns the Borrow and Difference outputs simultaneously.

---

 Truth Table

| A | B | Bin | Difference | Borrow |
|:-:|:-:|:---:|:----------:|:------:|
| 0 | 0 | 0 | 0 | 0 |
| 0 | 0 | 1 | 1 | 1 |
| 0 | 1 | 0 | 1 | 1 |
| 0 | 1 | 1 | 0 | 1 |
| 1 | 0 | 0 | 1 | 0 |
| 1 | 0 | 1 | 0 | 0 |
| 1 | 1 | 0 | 0 | 0 |
| 1 | 1 | 1 | 1 | 1 |

---

 Project Files

| File | Description |
|------|-------------|
| `full_subtractor.v` | Design Under Test (DUT) |
| `full_subtractor_tb.v` | Testbench used to verify the DUT |
| `README.md` | Project documentation |

---

 Verilog Implementation

The design uses:

- User-defined function
- Continuous assignment (`assign`)
- Bitwise XOR operator (`^`)
- Bitwise AND operator (`&`)
- Bitwise OR operator (`|`)
- Bitwise NOT operator (`~`)
- Function Modeling

No `always` blocks or gate primitives are used.

---

 Simulation

The testbench generates random input values using Verilog's `$random` system function and applies them using concatenation.

```verilog
repeat (10) begin
    {a, b, bin} = $random;
    #10;
end
```

> **Note:** Concatenation (`{}`) is used because the Full Subtractor has three separate input signals (`a`, `b`, and `bin`). This allows all inputs to receive random values simultaneously, making the testbench concise, readable, and scalable.

---

 Sample Output

```text
A=0 | B=0 | Bin=0 | Diff=0 | Borrow=0
A=0 | B=1 | Bin=0 | Diff=1 | Borrow=1
A=1 | B=0 | Bin=1 | Diff=0 | Borrow=0
A=1 | B=1 | Bin=1 | Diff=1 | Borrow=1
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
- Verify Full Subtractor functionality through simulation.

---

 Conclusion

The **Full Subtractor** demonstrates how Function Modeling can be used to implement combinational arithmetic circuits in a modular and reusable manner. By encapsulating the subtraction logic within a user-defined function, the design becomes easier to understand, maintain, and reuse in larger arithmetic systems.