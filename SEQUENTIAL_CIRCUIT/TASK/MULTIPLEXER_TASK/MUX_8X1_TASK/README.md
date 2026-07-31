 8×1 Multiplexer – Task Modeling

**Author:** Halima Diyauddeen

---

 Overview

This project implements an **8×1 Multiplexer (MUX)** using **Task Modeling** in Verilog. An 8×1 Multiplexer selects one of eight input signals (`i0` to `i7`) based on the value of the three select lines (`sel`) and forwards the selected input to the output (`y`). The selection logic is implemented inside a user-defined task, promoting modularity and code reusability.

---

 Objective

- Understand Task Modeling in Verilog.
- Implement an 8×1 Multiplexer using a user-defined task.
- Learn how tasks simplify combinational logic.
- Verify the design using randomly generated test vectors.

---

 Task Implementation

The design defines a task that selects one of the eight input signals according to the value of the select lines.

```verilog
task mux;

    input i0;
    input i1;
    input i2;
    input i3;
    input i4;
    input i5;
    input i6;
    input i7;
    input [2:0] sel;

    output y;

    begin

        case (sel)

            3'b000: y = i0;
            3'b001: y = i1;
            3'b010: y = i2;
            3'b011: y = i3;
            3'b100: y = i4;
            3'b101: y = i5;
            3'b110: y = i6;
            3'b111: y = i7;

        endcase

    end

endtask

always @(*) begin
    mux(i0, i1, i2, i3, i4, i5, i6, i7, sel, y);
end
```

The task evaluates the select lines and forwards the corresponding input to the output whenever any input changes.

---

 Truth Table

| Sel | Output |
|:---:|:------:|
|000|I0|
|001|I1|
|010|I2|
|011|I3|
|100|I4|
|101|I5|
|110|I6|
|111|I7|

---

 Project Files

| File | Description |
|------|-------------|
| `mux_8x1_task.v` | Design Under Test (DUT) |
| `mux_8x1_task_tb.v` | Testbench used to verify the DUT |
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
    {i0, i1, i2, i3, i4, i5, i6, i7, sel} = $random;
    #10;
end
```

> **Note:** Concatenation (`{}`) is used because the multiplexer has eight input signals and three select lines. This allows all inputs to receive random values simultaneously, making the testbench concise, readable, and scalable.

---

 Sample Output

```text
Time=0  | I0=1 | I1=0 | I2=1 | I3=0 | I4=1 | I5=0 | I6=1 | I7=0 | SEL=000 | Y=1
Time=10 | I0=1 | I1=0 | I2=1 | I3=0 | I4=1 | I5=0 | I6=1 | I7=0 | SEL=011 | Y=0
Time=20 | I0=0 | I1=1 | I2=0 | I3=1 | I4=0 | I5=1 | I6=0 | I7=1 | SEL=101 | Y=1
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
- Verify 8×1 Multiplexer functionality through simulation.

---

 Conclusion

The **8×1 Multiplexer** demonstrates how **Task Modeling** can be used to implement combinational data-selection circuits in a modular and reusable manner. By encapsulating the selection logic within a user-defined task and invoking it from an `always @(*)` block, the design becomes easier to understand, maintain, and integrate into larger digital systems.