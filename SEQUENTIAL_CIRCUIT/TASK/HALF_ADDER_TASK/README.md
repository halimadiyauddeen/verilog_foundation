 Half Adder – Task Modeling

**Author:** Halima Diyauddeen

---

 Overview

This project implements a **Half Adder** using **Task Modeling** in Verilog. A Half Adder adds two 1-bit binary inputs (`a` and `b`) and produces a **Sum (`sum`)** output and a **Carry (`carry`)** output. The addition logic is implemented inside a user-defined task, making the design modular and reusable.

---

 Objective

- Understand Task Modeling in Verilog.
- Implement a Half Adder using a user-defined task.
- Learn how tasks can return multiple outputs.
- Verify the design using randomly generated test vectors.

---

 Task Implementation

The design defines a task that computes the Sum and Carry outputs.

```verilog
task half_adder;

    input a;
    input b;

    output sum;
    output carry;

    begin

        sum   = a ^ b;
        carry = a & b;

    end

endtask

always @(*) begin

    half_adder(a, b, sum, carry);

end
```

The task computes the addition result whenever either input changes.

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
| `half_adder_task.v` | Design Under Test (DUT) |
| `half_adder_task_tb.v` | Testbench used to verify the DUT |
| `README.md` | Project documentation |

---

 Verilog Implementation

The design uses:

- User-defined task
- `always @(*)`
- Blocking assignments (`=`)
- Bitwise XOR operator (`^`)
- Bitwise AND operator (`&`)
- Task Modeling

No `assign` statements or gate primitives are used.

---

 Simulation

The testbench generates random input values using Verilog's `$random` system function and applies them using concatenation.

```verilog
repeat (10) begin
    {a, b} = $random;
    #10;
end
```

> **Note:** Concatenation (`{}`) is used because the Half Adder has two input signals (`a` and `b`). This allows both inputs to receive random values simultaneously, making the testbench concise, readable, and scalable.

---

 Sample Output

```text
Time=0  | A=0 | B=0 | Sum=0 | Carry=0
Time=10 | A=0 | B=1 | Sum=1 | Carry=0
Time=20 | A=1 | B=0 | Sum=1 | Carry=0
Time=30 | A=1 | B=1 | Sum=0 | Carry=1
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
- Verify Half Adder functionality through simulation.

---

 Conclusion

The **Half Adder** demonstrates how **Task Modeling** can be used to implement combinational arithmetic circuits in a modular and reusable manner. By encapsulating the addition logic within a user-defined task and invoking it from an `always @(*)` block, the design becomes easier to understand, maintain, and reuse in larger digital systems.