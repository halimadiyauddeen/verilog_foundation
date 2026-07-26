 2-Bit Comparator – Gate-Level Modeling

**Author:** Halima Diyauddeen

---

 Overview

This project implements a **2-Bit Comparator** using **Verilog Gate-Level Modeling**. The circuit compares two 2-bit binary numbers and determines whether the first number is greater than, equal to, or less than the second number.

---

 Objective

- Understand the operation of a 2-Bit Comparator.
- Implement a 2-Bit Comparator using Verilog gate primitives.
- Verify the design using a dedicated testbench.

---

 Gate Primitives Used

```verilog
not
and
or
xnor
```

These gate primitives are combined to compare the most significant bits first. If they are equal, the least significant bits are compared.

---

 Truth Table

| A | B | Greater | Equal | Less |
|:-:|:-:|:-------:|:-----:|:----:|
|00|00|0|1|0|
|00|01|0|0|1|
|00|10|0|0|1|
|00|11|0|0|1|
|01|00|1|0|0|
|01|01|0|1|0|
|01|10|0|0|1|
|01|11|0|0|1|
|10|00|1|0|0|
|10|01|1|0|0|
|10|10|0|1|0|
|10|11|0|0|1|
|11|00|1|0|0|
|11|01|1|0|0|
|11|10|1|0|0|
|11|11|0|1|0|

---

 Project Files

| File | Description |
|------|-------------|
| `comparator_2bit.v` | Design Under Test (DUT) |
| `comparator_2bit_tb.v` | Testbench used to verify the DUT |
| `README.md` | Project documentation |

---

 Verilog Implementation

The comparator is implemented entirely with Verilog's built-in gate primitives:

- `not`
- `and`
- `or`
- `xnor`

No continuous assignment (`assign`) statements are used.

---

 Simulation

The testbench applies several combinations of 2-bit inputs and displays whether **A > B**, **A = B**, or **A < B** using the `$monitor` system task.

---

 Learning Outcomes

After completing this project, you should be able to:

- Understand the operation of a 2-Bit Comparator.
- Implement comparison logic using Verilog gate primitives.
- Design multi-bit combinational circuits using Gate-Level Modeling.
- Verify comparator functionality through simulation.

---

 Conclusion

The 2-Bit Comparator extends the concept of the 1-Bit Comparator by comparing two binary numbers bit by bit, starting from the most significant bit. It demonstrates how multiple gate primitives can be combined to build more complex digital circuits using Gate-Level Modeling.