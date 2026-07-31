 4×1 Multiplexer – Task Modeling

**Author:** Halima Diyauddeen

---

 Overview

This project implements a **4×1 Multiplexer (MUX)** using **Task Modeling** in Verilog. A 4×1 Multiplexer selects one of four input signals (`i0`, `i1`, `i2`, and `i3`) based on the value of the two select lines (`sel`) and forwards the selected input to the output (`y`). The selection logic is implemented inside a user-defined task, promoting modularity and code reusability.

---

 Objective

- Understand Task Modeling in Verilog.
- Implement a 4×1 Multiplexer using a user-defined task.
- Learn how tasks simplify combinational logic.
- Verify the design using randomly generated test vectors.

---

 Task Implementation

The design defines a task that selects one of the four input signals according to the value of the select lines.

```verilog
task mux;

    input i0;
    input i1;
    input i2;
    input i3;
    input [1:0] sel;

    output y;

    begin

        case (sel)

            2'b00: y = i0;
            2'b01: y = i1;
            2'b10: y = i2;
            2'b11: y = i3;

        endcase

    end

endtask

always @(*) begin
    mux(i0, i1, i2, i3, sel, y);
end
```

The task evaluates the select lines and forwards the corresponding input to the output whenever any input changes.

---

 Truth Table

| Sel | Output |
|:---:|:------:|
| 00 | I0 |
| 01 | I1 |
| 10 | I2 |
| 11 | I3 |

---

 Project Files

| File | Description |
|------|-------------|
| `mux_4x1_task.v` | Design Under Test (DUT) |
| `mux_4x1_task_tb.v` | Testbench used to verify the DUT |
| `README.md` | Project documentation |

---

 Verilog Implementation

The design uses:

- User-defined task
- `always @(*)`
- Blocking assignments (`=`)
- `case`
- `endcase`
- Task Modeling

No `assign` statements or gate primitives are used.

---

 Simulation

The testbench generates random input values using Verilog's `$random` system function and applies them using concatenation.

```verilog
repeat (10) begin
    {i0, i1, i2, i3, sel} = $random;
    #10;
end
```

> **Note:** Concatenation (`{}`) is used because the multiplexer has four input signals and two select lines. This allows all inputs to receive random values simultaneously, making the testbench concise, readable, and scalable.

---

 Sample Output

```text
Time=0  | I0=1 | I1=0 | I2=1 | I3=0 | SEL=00 | Y=1
Time=10 | I0=1 | I1=0 | I2=1 | I3=0 | SEL=01 | Y=0
Time=20 | I0=0 | I1=1 | I2=0 | I3=1 | SEL=10 | Y=0
Time=30 | I0=1 | I1=1 | I2=0 | I3=0 | SEL=11 | Y=0
...
```

Because `$random` is used, the order of the input combinations may vary each time the simulation runs.

---

 Learning Outcomes

After completing this project, you should be able to:

- Understand Task Modeling in Verilog.
- Create reusable tasks.
- Use a `case` statement within a task.
- Call a task from an `always @(*)` block.
- Generate random test vectors using `$random`.
- Display simulation time using `$time`.
- Verify 4×1 Multiplexer functionality through simulation.

---

 Conclusion

The **4×1 Multiplexer** demonstrates how **Task Modeling** can be used to implement combinational data-selection circuits in a modular and reusable manner. By encapsulating the selection logic within a user-defined task and invoking it from an `always @(*)` block, the design becomes easier to understand, maintain, and integrate into larger digital systems.