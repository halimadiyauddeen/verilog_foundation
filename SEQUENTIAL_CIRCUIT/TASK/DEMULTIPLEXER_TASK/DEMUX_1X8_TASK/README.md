 1×8 Demultiplexer – Task Modeling

**Author:** Halima Diyauddeen

---

 Overview

This project implements a **1×8 Demultiplexer (DEMUX)** using **Task Modeling** in Verilog. A 1×8 Demultiplexer routes a single input (`din`) to one of eight output lines (`y0` to `y7`) according to the value of the three select lines (`sel`). The routing logic is implemented inside a user-defined task, making the design modular and reusable.

---

 Objective

- Understand Task Modeling in Verilog.
- Implement a 1×8 Demultiplexer using a user-defined task.
- Learn how tasks simplify combinational logic.
- Verify the design using randomly generated test vectors.

---

 Task Implementation

The design defines a task that routes the input to the selected output.

```verilog
task demux;

    input din;
    input [2:0] sel;

    output y0, y1, y2, y3, y4, y5, y6, y7;

    begin

        y0 = 0;
        y1 = 0;
        y2 = 0;
        y3 = 0;
        y4 = 0;
        y5 = 0;
        y6 = 0;
        y7 = 0;

        case (sel)

            3'b000: y0 = din;
            3'b001: y1 = din;
            3'b010: y2 = din;
            3'b011: y3 = din;
            3'b100: y4 = din;
            3'b101: y5 = din;
            3'b110: y6 = din;
            3'b111: y7 = din;

        endcase

    end

endtask

always @(*) begin
    demux(din, sel, y0, y1, y2, y3, y4, y5, y6, y7);
end
```

The task evaluates the select lines and forwards the input to the corresponding output while setting all other outputs to `0`.

---

 Truth Table

| DIN | SEL | Y0 | Y1 | Y2 | Y3 | Y4 | Y5 | Y6 | Y7 |
|:---:|:---:|:--:|:--:|:--:|:--:|:--:|:--:|:--:|:--:|
| 1 | 000 | 1 | 0 | 0 | 0 | 0 | 0 | 0 | 0 |
| 1 | 001 | 0 | 1 | 0 | 0 | 0 | 0 | 0 | 0 |
| 1 | 010 | 0 | 0 | 1 | 0 | 0 | 0 | 0 | 0 |
| 1 | 011 | 0 | 0 | 0 | 1 | 0 | 0 | 0 | 0 |
| 1 | 100 | 0 | 0 | 0 | 0 | 1 | 0 | 0 | 0 |
| 1 | 101 | 0 | 0 | 0 | 0 | 0 | 1 | 0 | 0 |
| 1 | 110 | 0 | 0 | 0 | 0 | 0 | 0 | 1 | 0 |
| 1 | 111 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 1 |

---

 Project Files

| File | Description |
|------|-------------|
| `demux_1x8_task.v` | Design Under Test (DUT) |
| `demux_1x8_task_tb.v` | Testbench used to verify the DUT |
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

> **Note:** Concatenation (`{}`) is used because the DEMUX has one data input and three select lines. This allows all inputs to receive random values simultaneously, making the testbench concise, readable, and scalable.

---

 Sample Output

```text
Time=0  | DIN=1 | SEL=000 | Y0=1 | Y1=0 | Y2=0 | Y3=0 | Y4=0 | Y5=0 | Y6=0 | Y7=0
Time=10 | DIN=1 | SEL=101 | Y0=0 | Y1=0 | Y2=0 | Y3=0 | Y4=0 | Y5=1 | Y6=0 | Y7=0
Time=20 | DIN=0 | SEL=111 | Y0=0 | Y1=0 | Y2=0 | Y3=0 | Y4=0 | Y5=0 | Y6=0 | Y7=0
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
- Verify 1×8 DEMUX functionality through simulation.

---

 Conclusion

The **1×8 Demultiplexer** demonstrates how **Task Modeling** can be used to implement combinational data-routing circuits in a modular and reusable manner. By encapsulating the routing logic within a user-defined task and invoking it from an `always @(*)` block, the design becomes easier to understand, maintain, and integrate into larger digital systems.