 Full Adder – Gate-Level Modeling

**Author:** Halima Diyauddeen

---

 Overview

This project implements a **Full Adder** using **Verilog Gate-Level Modeling**. A Full Adder adds three one-bit binary inputs (`A`, `B`, and `Cin`) and produces a **Sum** output and a **Carry-out (Cout)** output.

---

 Objective

- Understand the operation of a Full Adder.
- Implement a Full Adder using Verilog gate primitives.
- Verify the design using a dedicated testbench.

---

 Gate Primitives Used

```verilog
xor (xor1, a, b);
xor (sum, xor1, cin);

and (and1, a, b);
and (and2, a, cin);
and (and3, b, cin);

or (cout, and1, and2, and3);
```

The `xor` gates generate the **Sum** output, while the `and` and `or` gates generate the **Carry-out** output.

---

 Truth Table

| A | B | Cin | Sum | Cout |
|:-:|:-:|:---:|:---:|:----:|
| 0 | 0 |  0  |  0  |  0   |
| 0 | 0 |  1  |  1  |  0   |
| 0 | 1 |  0  |  1  |  0   |
| 0 | 1 |  1  |  0  |  1   |
| 1 | 0 |  0  |  1  |  0   |
| 1 | 0 |  1  |  0  |  1   |
| 1 | 1 |  0  |  0  |  1   |
| 1 | 1 |  1  |  1  |  1   |

---

 Project Files

| File | Description |
|------|-------------|
| `full_adder.v` | Design Under Test (DUT) |
| `full_adder_tb.v` | Testbench used to verify the DUT |
| `README.md` | Project documentation |

---

 Verilog Implementation

The Full Adder is implemented using Verilog's built-in gate primitives:

- `xor`
- `and`
- `or`

No `assign` statements or behavioral constructs are used, making this a true Gate-Level Modeling implementation.

---

 Simulation

The testbench applies all eight possible combinations of the three input bits (`A`, `B`, and `Cin`) and displays the corresponding **Sum** and **Carry-out** values using the `$monitor` system task.

---

 Expected Output

```text
A=0 | B=0 | Cin=0 | Sum=0 | Cout=0
A=0 | B=0 | Cin=1 | Sum=1 | Cout=0
A=0 | B=1 | Cin=0 | Sum=1 | Cout=0
A=0 | B=1 | Cin=1 | Sum=0 | Cout=1
A=1 | B=0 | Cin=0 | Sum=1 | Cout=0
A=1 | B=0 | Cin=1 | Sum=0 | Cout=1
A=1 | B=1 | Cin=0 | Sum=0 | Cout=1
A=1 | B=1 | Cin=1 | Sum=1 | Cout=1
```

---

 Learning Outcomes

After completing this project, you should be able to:

- Understand the operation of a Full Adder.
- Implement arithmetic circuits using Verilog gate primitives.
- Design combinational circuits using Gate-Level Modeling.
- Verify Full Adder functionality through simulation.

---

 Conclusion

The **Full Adder** is one of the most important combinational circuits in digital electronics. It performs the addition of three one-bit binary values and produces a **Sum** and a **Carry-out**. This circuit serves as the building block for larger arithmetic circuits, including ripple carry adders, carry look-ahead adders, and arithmetic logic units (ALUs).