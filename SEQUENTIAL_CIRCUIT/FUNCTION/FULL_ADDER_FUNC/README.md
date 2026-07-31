 Full Adder – Function Modeling

**Author:** Halima Diyauddeen

---

 Overview

This project implements a **Full Adder** using **Function Modeling** in Verilog. A Full Adder adds three one-bit binary inputs (`a`, `b`, and `cin`) and produces a **Sum** output and a **Carry** output. The addition logic is implemented inside a Verilog function, making the design modular and reusable.

---

 Objective

- Understand Function Modeling in Verilog.
- Implement a Full Adder using a user-defined function.
- Learn how functions can return multiple output values.
- Verify the design using randomly generated test vectors.

---

 Function Implementation

The design defines a function that performs the Full Adder operation and returns both the Carry and Sum outputs as a 2-bit value.

```verilog
function [1:0] full_adder_func;
    input a;
    input b;
    input cin;

    begin
        full_adder_func[1] = (a & b) | (a & cin) | (b & cin);
        full_adder_func[0] = a ^ b ^ cin;
    end
endfunction

assign {carry, sum} = full_adder_func(a, b, cin);
```

The function computes the addition result and returns it to the module, where concatenation assigns the Carry and Sum outputs simultaneously.

---

 Truth Table

| A | B | Cin | Sum | Carry |
|:-:|:-:|:---:|:---:|:-----:|
| 0 | 0 | 0 | 0 | 0 |
| 0 | 0 | 1 | 1 | 0 |
| 0 | 1 | 0 | 1 | 0 |
| 0 | 1 | 1 | 0 | 1 |
| 1 | 0 | 0 | 1 | 0 |
| 1 | 0 | 1 | 0 | 1 |
| 1 | 1 | 0 | 0 | 1 |
| 1 | 1 | 1 | 1 | 1 |

---

 Project Files

| File | Description |
|------|-------------|
| `full_adder.v` | Design Under Test (DUT) |
| `full_adder_tb.v` | Testbench used to verify the DUT |
| `README.md` | Project documentation |

---

 Verilog Implementation

The design uses:

- User-defined function
- Continuous assignment (`assign`)
- Bitwise XOR operator (`^`)
- Bitwise AND operator (`&`)
- Bitwise OR operator (`|`)
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

> **Note:** Concatenation (`{}`) is used because the Full Adder has three separate input signals (`a`, `b`, and `cin`). This allows all inputs to receive random values simultaneously, making the testbench concise, readable, and scalable.

---

 Sample Output

```text
A=0 | B=0 | Cin=0 | Sum=0 | Carry=0
A=0 | B=1 | Cin=0 | Sum=1 | Carry=0
A=1 | B=0 | Cin=1 | Sum=0 | Carry=1
A=1 | B=1 | Cin=1 | Sum=1 | Carry=1
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
- Verify Full Adder functionality through simulation.

---

 Conclusion

The **Full Adder** demonstrates how Function Modeling can be used to implement combinational arithmetic circuits in a modular and reusable manner. By encapsulating the addition logic within a user-defined function, the design becomes easier to understand, maintain, and reuse in larger arithmetic circuits such as Ripple Carry Adders.