 1×4 Demultiplexer – Task Modeling

**Author:** Halima Diyauddeen

---

 Overview

This project implements a **1×4 Demultiplexer (DEMUX)** using **Task Modeling** in Verilog. A 1×4 Demultiplexer routes a single input (`din`) to one of four output lines (`y0` to `y3`) according to the value of the two select lines (`sel`). The routing logic is implemented inside a user-defined task, making the design modular and reusable.

---

 Objective

- Understand Task Modeling in Verilog.
- Implement a 1×4 Demultiplexer using a user-defined task.
- Learn how tasks simplify combinational logic.
- Verify the design using randomly generated test vectors.

---

 Task Implementation

The design defines a task that routes the input to the selected output.

```verilog
task demux;

    input din;
    input [1:0] sel;

    output y0;
    output y1;
    output y2;
    output y3;

    begin

        y0 = 0;
        y1 = 0;
        y2 = 0;
        y3 = 0;

        case (sel)

            2'b00: y0 = din;
            2'b01: y1 = din;
            2'b10: y2 = din;
            2'b11: y3 = din;

        endcase

    end

endtask

always @(*) begin

    demux(din, sel, y0, y1, y2, y3);

end
```

The task evaluates the select lines and forwards the input to the corresponding output while setting all other outputs to `0`.

---

 Truth Table

| DIN | SEL | Y0 | Y1 | Y2 | Y3 |
|:---:|:---:|:--:|:--:|:--:|:--:|
| 1 | 00 | 1 | 0 | 0 | 0 |
| 1 | 01 | 0 | 1 | 0 | 0 |
| 1 | 10 | 0 | 0 | 1 | 0 |
| 1 | 11 | 0 | 0 | 0 | 1 |

---

 Project Files

| File | Description |
|------|-------------|
| `demux_1x4_task.v` | Design Under Test (DUT) |
| `demux_1x4_task_tb.v` | Testbench used to verify the DUT |
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
    {din, sel} = $random;
    #10;
end
```

> **Note:** Concatenation (`{}`) is used because the DEMUX has one data input and two select lines. This allows all inputs to receive random values simultaneously, making the testbench concise, readable, and scalable.

---

 Sample Output

```text
Time=0  | DIN=1 | SEL=00 | Y0=1 | Y1=0 | Y2=0 | Y3=0
Time=10 | DIN=1 | SEL=01 | Y0=0 | Y1=1 | Y2=0 | Y3=0
Time=20 | DIN=1 | SEL=10 | Y0=0 | Y1=0 | Y2=1 | Y3=0
Time=30 | DIN=1 | SEL=11 | Y0=0 | Y1=0 | Y2=0 | Y3=1
...
```

Because `$random` is used, the order of the input combinations may vary each time the simulation runs.

---

 Learning Outcomes

After completing this project, you should be able to:

- Understand Task Modeling in Verilog.
- Create reusable tasks.
- Route a single input to multiple outputs using a `case` statement.
- Generate random test vectors using `$random`.
- Display simulation time using `$time`.
- Verify 1×4 DEMUX functionality through simulation.

---

 Conclusion

The **1×4 Demultiplexer** demonstrates how **Task Modeling** can be used to implement combinational data-routing circuits in a modular and reusable manner. By encapsulating the routing logic within a user-defined task and invoking it from an `always @(*)` block, the design becomes easier to understand, maintain, and reuse in larger digital systems.