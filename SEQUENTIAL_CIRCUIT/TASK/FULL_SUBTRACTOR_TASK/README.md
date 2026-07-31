 Full Subtractor – Task Modeling

**Author:** Halima Diyauddeen

---

 Overview

This project implements a **Full Subtractor** using **Task Modeling** in Verilog. A Full Subtractor subtracts two 1-bit binary numbers (`a` and `b`) along with a borrow-in (`bin`) and produces a **Difference (`diff`)** output and a **Borrow (`borrow`)** output. The subtraction logic is implemented inside a user-defined task, making the design modular and reusable.

---

 Objective

- Understand Task Modeling in Verilog.
- Implement a Full Subtractor using a user-defined task.
- Learn how tasks can return multiple outputs.
- Verify the design using randomly generated test vectors.

---

 Task Implementation

The design defines a task that computes the Difference and Borrow outputs.

```verilog
task full_subtractor;

    input a;
    input b;
    input bin;

    output diff;
    output borrow;

    begin

        diff   = a ^ b ^ bin;
        borrow = ((~a) & b) | ((~a) & bin) | (b & bin);

    end

endtask

always @(*) begin

    full_subtractor(a, b, bin, diff, borrow);

end
```

The task computes the subtraction result whenever any input changes.

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
| `full_subtractor_task.v` | Design Under Test (DUT) |
| `full_subtractor_task_tb.v` | Testbench used to verify the DUT |
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
- Bitwise NOT operator (`~`)
- Task Modeling

No `assign` statements or gate primitives are used.

---

 Simulation

The testbench generates random input values using Verilog's `$random` system function and applies them using concatenation.

```verilog
repeat (10) begin
    {a, b, bin} = $random;
    #10;
end
```

> **Note:** Concatenation (`{}`) is used because the Full Subtractor has three input signals (`a`, `b`, and `bin`). This allows all inputs to receive random values simultaneously, making the testbench concise, readable, and scalable.

---

 Sample Output

```text
Time=0  | A=0 | B=0 | Bin=0 | Diff=0 | Borrow=0
Time=10 | A=0 | B=0 | Bin=1 | Diff=1 | Borrow=1
Time=20 | A=1 | B=0 | Bin=1 | Diff=0 | Borrow=0
Time=30 | A=1 | B=1 | Bin=1 | Diff=1 | Borrow=1
...
```

Because `$random` is used, the order of the input combinations may vary each time the simulation runs.

---

 Learning Outcomes

After completing this project, you should be able to:

- Understand Task Modeling in Verilog.
- Create reusable tasks.
- Return multiple outputs from a task.
- Use bitwise operators to implement subtraction logic.
- Generate random test vectors using `$random`.
- Display simulation time using `$time`.
- Verify Full Subtractor functionality through simulation.

---

 Conclusion

The **Full Subtractor** demonstrates how **Task Modeling** can be used to implement combinational arithmetic circuits in a modular and reusable manner. By encapsulating the subtraction logic within a user-defined task and invoking it from an `always @(*)` block, the design becomes easier to understand, maintain, and reuse in larger digital systems.
```