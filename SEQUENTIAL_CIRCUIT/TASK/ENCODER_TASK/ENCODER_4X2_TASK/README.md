 4×2 Encoder – Task Modeling

**Author:** Halima Diyauddeen

---

 Overview

This project implements a **4×2 Encoder** using **Task Modeling** in Verilog. A 4×2 Encoder converts one active input out of four input lines (`d[3:0]`) into its corresponding 2-bit binary code (`y[1:0]`). The encoding logic is implemented inside a user-defined task, making the design modular and reusable.

---

 Objective

- Understand Task Modeling in Verilog.
- Implement a 4×2 Encoder using a user-defined task.
- Learn how tasks simplify combinational logic.
- Verify the design using randomly generated test vectors.

---

 Task Implementation

The design defines a task that converts the active input into its corresponding binary code.

```verilog
task encoder;

    input [3:0] d;

    output [1:0] y;

    begin

        case (d)

            4'b0001: y = 2'b00;
            4'b0010: y = 2'b01;
            4'b0100: y = 2'b10;
            4'b1000: y = 2'b11;
            default: y = 2'b00;

        endcase

    end

endtask

always @(*) begin

    encoder(d, y);

end
```

The task evaluates the active input and produces the corresponding 2-bit binary output whenever the input changes.

---

 Truth Table

| Active Input | Output (Y) |
|:------------:|:----------:|
|0001|00|
|0010|01|
|0100|10|
|1000|11|

---

 Project Files

| File | Description |
|------|-------------|
| `encoder_4x2_task.v` | Design Under Test (DUT) |
| `encoder_4x2_task_tb.v` | Testbench used to verify the DUT |
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

The testbench generates random valid one-hot input values using Verilog's `$random` system function.

```verilog
repeat (10) begin
    d = 4'b0001 << ($random % 4);
    #10;
end
```

> **Note:** The testbench generates **one-hot** input patterns so that only one input line is active at a time, which matches the normal operating condition of a standard 4×2 Encoder.

---

 Sample Output

```text
Time=0  | D=0001 | Y=00
Time=10 | D=0010 | Y=01
Time=20 | D=0100 | Y=10
Time=30 | D=1000 | Y=11
...
```

Because `$random` is used, the active input may vary each time the simulation runs.

---

 Learning Outcomes

After completing this project, you should be able to:

- Understand Task Modeling in Verilog.
- Create reusable tasks.
- Use a `case` statement within a task.
- Encode one-hot input signals into binary outputs.
- Generate random one-hot test vectors.
- Display simulation time using `$time`.
- Verify 4×2 Encoder functionality through simulation.

---

 Conclusion

The **4×2 Encoder** demonstrates how **Task Modeling** can be used to implement combinational encoding circuits in a modular and reusable manner. By encapsulating the encoding logic within a user-defined task and invoking it from an `always @(*)` block, the design becomes easier to understand, maintain, and integrate into larger digital systems.