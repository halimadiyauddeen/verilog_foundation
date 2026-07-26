 NAND Gate – Gate-Level Modeling

**Author:** Halima Diyauddeen

---

 Overview

This project implements a **NAND Gate** using **Verilog Gate-Level Modeling**. Gate-level modeling describes a digital circuit by connecting Verilog's built-in logic gate primitives.

---

 Objective

- Understand Gate-Level Modeling in Verilog.
- Implement a NAND gate using the `nand` gate primitive.
- Verify the design using a dedicated testbench.

---

 Gate Primitive Used

```verilog
nand (y, a, b);
```

The `nand` primitive performs a logical NAND operation on the inputs and drives the result to the output.

---

 Truth Table

| A | B | Y |
|:-:|:-:|:-:|
| 0 | 0 | 1 |
| 0 | 1 | 1 |
| 1 | 0 | 1 |
| 1 | 1 | 0 |

---

 Project Files

| File | Description |
|------|-------------|
| `nand_gate.v` | Design Under Test (DUT) |
| `nand_gate_tb.v` | Testbench used to verify the DUT |
| `README.md` | Project documentation |

---

 Verilog Implementation

The NAND gate is implemented using Verilog's built-in `nand` gate primitive.

```verilog
nand (y, a, b);
```

---

 Simulation

The testbench applies all possible input combinations to verify the functionality of the NAND gate.

The output is observed using the `$monitor` system task.

---

 Expected Output

```text
A = 0 | B = 0 | Y = 1
A = 0 | B = 1 | Y = 1
A = 1 | B = 0 | Y = 1
A = 1 | B = 1 | Y = 0
```

---

 Learning Outcomes

After completing this project, you should be able to:

- Understand Gate-Level Modeling in Verilog.
- Use the `nand` gate primitive.
- Design a simple combinational circuit using built-in gate primitives.
- Verify the circuit using a Verilog testbench.

---
 Conclusion

The NAND gate is a universal logic gate capable of implementing any Boolean function when combined appropriately. Implementing it using Verilog's built-in `nand` primitive provides a strong foundation for designing more advanced digital circuits using Gate-Level Modeling.