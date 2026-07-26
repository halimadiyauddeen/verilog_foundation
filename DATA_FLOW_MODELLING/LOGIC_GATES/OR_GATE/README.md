 OR Gate – Dataflow Modeling

**Author:** Halima Diyauddeen

---

 Overview

This project implements a **2-input OR Gate** using **Dataflow Modeling** in Verilog. An OR gate produces a HIGH output when one or both input signals are HIGH. The output is LOW only when both inputs are LOW.

---

 Objective

- Understand Dataflow Modeling in Verilog.
- Implement an OR gate using a continuous assignment statement.
- Learn the behavior of the OR logical operator.
- Verify the design using predefined test vectors.

---

 Dataflow Implementation

The design uses a continuous assignment (`assign`) statement to implement the OR operation.

```verilog
assign y = a | b;
```

The `assign` statement continuously evaluates the OR operation. Whenever either input changes, the output is updated immediately to reflect the new result.

---

 Truth Table

| A | B | Y |
|:-:|:-:|:-:|
| 0 | 0 | 0 |
| 0 | 1 | 1 |
| 1 | 0 | 1 |
| 1 | 1 | 1 |

---

 Project Files

| File | Description |
|------|-------------|
| `or_gate.v` | Design Under Test (DUT) |
| `or_gate_tb.v` | Testbench used to verify the DUT |
| `README.md` | Project documentation |

---

 Verilog Implementation

The design uses:

- Continuous assignment (`assign`)
- Bitwise OR operator (`|`)
- Dataflow Modeling

No `always` blocks or gate primitives are used.

---

 Simulation

The testbench applies all possible input combinations to verify the OR gate.

```verilog
initial begin
    a = 0; b = 0; #10;
    a = 0; b = 1; #10;
    a = 1; b = 0; #10;
    a = 1; b = 1; #10;
end
```

> **Note:** The testbench uses predefined test vectors to apply every possible input combination. This ensures that the OR gate is completely verified against its truth table.

---

 Sample Output

```text
A = 0 | B = 0 | Y = 0
A = 0 | B = 1 | Y = 1
A = 1 | B = 0 | Y = 1
A = 1 | B = 1 | Y = 1
```

---

 Learning Outcomes

After completing this project, you should be able to:

- Understand Dataflow Modeling in Verilog.
- Implement combinational logic using continuous assignment.
- Use the bitwise OR (`|`) operator.
- Verify logic gate functionality using predefined test vectors.
- Relate simulation results to the OR gate truth table.

---

 Conclusion

The **OR Gate** demonstrates how Dataflow Modeling can be used to describe combinational logic using continuous assignment statements. By using the bitwise OR (`|`) operator, the design produces a HIGH output whenever at least one input is HIGH. This project provides a foundation for implementing more complex combinational circuits in Verilog.