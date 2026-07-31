 Half Adder – Function Modeling

**Author:** Halima Diyauddeen

---

 Overview

This project implements a **Half Adder** using **Function Modeling** in Verilog. A Half Adder adds two one-bit binary inputs (`a` and `b`) and produces a **Sum** output and a **Carry** output. The arithmetic operation is implemented inside a Verilog function, making the design modular and reusable.

---

 Objective

- Understand Function Modeling in Verilog.
- Implement a Half Adder using a user-defined function.
- Learn how functions can return multiple output values.
- Verify the design using randomly generated test vectors.

---

 Function Implementation

The design defines a function that performs the Half Adder operation and returns both the Carry and Sum outputs as a 2-bit value.

```verilog
function [1:0] half_adder_func;
    input a;
    input b;

    begin
        half_adder_func[1] = a & b;
        half_adder_func[0] = a ^ b;
    end
endfunction

assign {carry, sum} = half_adder_func(a, b);
```

The function computes the arithmetic result and returns it to the module, where concatenation assigns the Carry and Sum outputs simultaneously.

---

 Truth Table

| A | B | Sum | Carry |
|:-:|:-:|:---:|:-----:|
| 0 | 0 | 0 | 0 |
| 0 | 1 | 1 | 0 |
| 1 | 0 | 1 | 0 |
| 1 | 1 | 0 | 1 |

---

 Project Files

| File | Description |
|------|-------------|
| `half_adder.v` | Design Under Test (DUT) |
| `half_adder_tb.v` | Testbench used to verify the DUT |
| `README.md` | Project documentation |

---

 Verilog Implementation

The design uses:

- User-defined function
- Continuous assignment (`assign`)
- Bitwise XOR operator (`^`)
- Bitwise AND operator (`&`)
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

> **Note:** Concatenation (`{}`) is used because the Half Adder has two separate input signals (`a` and `b`). This allows both inputs to receive random values simultaneously, making the testbench concise, readable, and scalable.

---

 Sample Output

```text
A=0 | B=0 | Sum=0 | Carry=0
A=0 | B=1 | Sum=1 | Carry=0
A=1 | B=0 | Sum=1 | Carry=0
A=1 | B=1 | Sum=0 | Carry=1
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
- Verify Half Adder functionality through simulation.

---

 Conclusion

The **Half Adder** demonstrates how Function Modeling can be used to implement combinational circuits in a modular and reusable manner. By encapsulating the addition logic within a user-defined function, the design becomes easier to understand, maintain, and reuse in larger arithmetic circuits such as Full Adders and Ripple Carry Adders.