 Full Adder – Task Modeling

**Author:** Halima Diyauddeen

---

 Overview

This project implements a **Full Adder** using **Task Modeling** in Verilog. A Full Adder adds three 1-bit binary inputs (`a`, `b`, and `cin`) and produces a **Sum (`sum`)** output and a **Carry (`carry`)** output. The addition logic is implemented inside a user-defined task, making the design modular and reusable.

---

 Objective

- Understand Task Modeling in Verilog.
- Implement a Full Adder using a user-defined task.
- Learn how tasks can return multiple outputs.
- Verify the design using randomly generated test vectors.

---

 Task Implementation

The design defines a task that computes the Sum and Carry outputs.

```verilog
task full_adder;

    input a;
    input b;
    input cin;

    output sum;
    output carry;

    begin

        sum   = a ^ b ^ cin;
        carry = (a & b) | (a & cin) | (b & cin);

    end

endtask

always @(*) begin

    full_adder(a, b, cin, sum, carry);

end
```

The task computes the addition result whenever any input changes.

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
| `full_adder_task.v` | Design Under Test (DUT) |
| `full_adder_task_tb.v` | Testbench used to verify the DUT |
| `README.md` | Project documentation |

---

 Verilog Implementation

The design uses:

- User-defined task
- `always @(*)`
- Blocking assignments (`=`)
- Bitwise XOR operator (`^`)
- Bitwise AND operator (`&`)
- Bitwise OR operator (`|`)
- Task Modeling

No `assign` statements or gate primitives are used.

---

 Simulation

The testbench generates random input values using Verilog's `$random` system function and applies them using concatenation.

```verilog
repeat (10) begin
    {a, b, cin} = $random;
    #10;
end
```

> **Note:** Concatenation (`{}`) is used because the Full Adder has three input signals (`a`, `b`, and `cin`). This allows all inputs to receive random values simultaneously, making the testbench concise, readable, and scalable.

---

 Sample Output

```text
Time=0  | A=0 | B=0 | Cin=0 | Sum=0 | Carry=0
Time=10 | A=0 | B=0 | Cin=1 | Sum=1 | Carry=0
Time=20 | A=1 | B=0 | Cin=1 | Sum=0 | Carry=1
Time=30 | A=1 | B=1 | Cin=1 | Sum=1 | Carry=1
...
```

Because `$random` is used, the order of the input combinations may vary each time the simulation runs.

---

 Learning Outcomes

After completing this project, you should be able to:

- Understand Task Modeling in Verilog.
- Create reusable tasks.
- Return multiple outputs from a task.
- Use bitwise operators to implement addition logic.
- Generate random test vectors using `$random`.
- Display simulation time using `$time`.
- Verify Full Adder functionality through simulation.

---

 Conclusion

The **Full Adder** demonstrates how **Task Modeling** can be used to implement combinational arithmetic circuits in a modular and reusable manner. By encapsulating the addition logic within a user-defined task and invoking it from an `always @(*)` block, the design becomes easier to understand, maintain, and reuse in larger digital systems.