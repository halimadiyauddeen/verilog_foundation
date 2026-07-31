 8×3 Encoder – Task Modeling

**Author:** Halima Diyauddeen

---

 Overview

This project implements an **8×3 Encoder** using **Task Modeling** in Verilog. An 8×3 Encoder converts one active input out of eight input lines (`d[7:0]`) into its corresponding 3-bit binary code (`y[2:0]`). The encoding logic is implemented inside a user-defined task, making the design modular and reusable.

---

 Objective

- Understand Task Modeling in Verilog.
- Implement an 8×3 Encoder using a user-defined task.
- Learn how tasks simplify combinational logic.
- Verify the design using randomly generated test vectors.

---

 Task Implementation

The design defines a task that converts the active input into its corresponding binary code.

```verilog
task encoder;

    input [7:0] d;

    output [2:0] y;

    begin

        case (d)

            8'b00000001: y = 3'b000;
            8'b00000010: y = 3'b001;
            8'b00000100: y = 3'b010;
            8'b00001000: y = 3'b011;
            8'b00010000: y = 3'b100;
            8'b00100000: y = 3'b101;
            8'b01000000: y = 3'b110;
            8'b10000000: y = 3'b111;
            default:     y = 3'b000;

        endcase

    end

endtask

always @(*) begin

    encoder(d, y);

end
```

The task evaluates the active input and produces the corresponding 3-bit binary output whenever the input changes.

---

 Truth Table

| Active Input | Output (Y) |
|:------------:|:----------:|
|00000001|000|
|00000010|001|
|00000100|010|
|00001000|011|
|00010000|100|
|00100000|101|
|01000000|110|
|10000000|111|

---

 Project Files

| File | Description |
|------|-------------|
| `encoder_8x3_task.v` | Design Under Test (DUT) |
| `encoder_8x3_task_tb.v` | Testbench used to verify the DUT |
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
    d = 8'b00000001 << ($random % 8);
    #10;
end
```

> **Note:** The testbench generates **one-hot** input patterns so that only one input line is active at a time, which matches the normal operating condition of a standard 8×3 Encoder.

---

 Sample Output

```text
Time=0  | D=00000001 | Y=000
Time=10 | D=00000100 | Y=010
Time=20 | D=00100000 | Y=101
Time=30 | D=10000000 | Y=111
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
- Verify 8×3 Encoder functionality through simulation.

---

 Conclusion

The **8×3 Encoder** demonstrates how **Task Modeling** can be used to implement combinational encoding circuits in a modular and reusable manner. By encapsulating the encoding logic within a user-defined task and invoking it from an `always @(*)` block, the design becomes easier to understand, maintain, and integrate into larger digital systems.