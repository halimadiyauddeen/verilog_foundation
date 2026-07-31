 4-Bit Ripple Carry Adder – Task Modeling

**Author:** Halima Diyauddeen

---

 Overview

This project implements a **4-Bit Ripple Carry Adder (RCA)** using **Task Modeling** in Verilog. The circuit adds two 4-bit binary numbers (`a` and `b`) together with an input carry (`cin`) and produces a 4-bit Sum (`sum`) and an output Carry (`cout`). The design uses a reusable **Full Adder task**, which is called four times to construct the complete Ripple Carry Adder.

---

 Objective

- Understand Task Modeling in Verilog.
- Learn how tasks can be reused to simplify complex designs.
- Implement a 4-Bit Ripple Carry Adder using a reusable Full Adder task.
- Verify the design using randomly generated test vectors.

---

 Task Implementation

The design defines a reusable Full Adder task that computes the Sum and Carry for one bit.

```verilog
task full_adder;

    input  a;
    input  b;
    input  cin;

    output sum;
    output carry;

    begin
        sum   = a ^ b ^ cin;
        carry = (a & b) | (a & cin) | (b & cin);
    end

endtask
```

The Ripple Carry Adder is implemented by calling the task four times.

```verilog
always @(*) begin

    full_adder(a[0], b[0], cin, sum[0], c1);
    full_adder(a[1], b[1], c1,  sum[1], c2);
    full_adder(a[2], b[2], c2,  sum[2], c3);
    full_adder(a[3], b[3], c3,  sum[3], cout);

end
```

Each Full Adder passes its carry output to the next stage, creating the ripple carry effect.

---

 Truth Table

Since a 4-Bit Ripple Carry Adder has **512 possible input combinations (16 × 16 × 2)**, a complete truth table would be very large. Representative examples are shown below.

| A | B | Cin | Sum | Cout |
|:---:|:---:|:---:|:---:|:---:|
|0000|0000|0|0000|0|
|0001|0010|0|0011|0|
|0101|0011|0|1000|0|
|1111|0001|0|0000|1|
|1111|1111|0|1110|1|
|1010|0101|1|0000|1|

---

 Project Files

| File | Description |
|------|-------------|
| `ripple_carry_adder_task.v` | Design Under Test (DUT) |
| `ripple_carry_adder_task_tb.v` | Testbench used to verify the DUT |
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
- Internal carry signals
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

> **Note:** Concatenation (`{}`) is used because the Ripple Carry Adder has two 4-bit input vectors (`a` and `b`) and one carry input (`cin`). This allows all inputs to receive random values simultaneously, making the testbench concise, readable, and scalable.

---

 Sample Output

```text
Time=0  | A=0000 | B=0000 | Cin=0 | Sum=0000 | Cout=0
Time=10 | A=0011 | B=0101 | Cin=0 | Sum=1000 | Cout=0
Time=20 | A=1111 | B=0001 | Cin=0 | Sum=0000 | Cout=1
Time=30 | A=1010 | B=0101 | Cin=1 | Sum=0000 | Cout=1
...
```

Because `$random` is used, the order of the input combinations may vary each time the simulation runs.

---

 Learning Outcomes

After completing this project, you should be able to:

- Understand Task Modeling in Verilog.
- Create reusable tasks.
- Call a task multiple times within a design.
- Build larger circuits from smaller reusable components.
- Generate random test vectors using `$random`.
- Display simulation time using `$time`.
- Verify Ripple Carry Adder functionality through simulation.

---

 Conclusion

The **4-Bit Ripple Carry Adder** demonstrates how **Task Modeling** enables modular and reusable hardware design. By defining a reusable **Full Adder task** and invoking it four times, the design accurately models carry propagation while illustrating how complex digital circuits can be constructed from smaller building blocks.