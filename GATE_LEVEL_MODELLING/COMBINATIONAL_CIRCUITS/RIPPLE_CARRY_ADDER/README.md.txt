 Ripple Carry Adder – Gate-Level Modeling

**Author:** Halima Diyauddeen

---

 Overview

This project implements a **4-bit Ripple Carry Adder (RCA)** using **Verilog Gate-Level Modeling**. The design is created by connecting four **Full Adder** modules in series. Each Full Adder passes its carry output to the carry input of the next stage, causing the carry to "ripple" through the circuit.

---

 Objective

- Understand the operation of a Ripple Carry Adder.
- Learn hierarchical module design in Verilog.
- Build a 4-bit adder using four Full Adder modules.
- Verify the design using a dedicated testbench.

---


 Modules Used

The Ripple Carry Adder is built by instantiating four copies of the previously designed **Gate-Level Full Adder**.

```verilog
full_adder fa0 (...);
full_adder fa1 (...);
full_adder fa2 (...);
full_adder fa3 (...);
```

This demonstrates **hierarchical structural design**, where a larger circuit is constructed from smaller reusable modules.

---

 Project Files

| File | Description |
|------|-------------|
| `full_adder.v` | Gate-Level Full Adder module |
| `ripple_carry_adder.v` | Design Under Test (DUT) |
| `ripple_carry_adder_tb.v` | Testbench |
| `README.md` | Project documentation |

---

 Simulation

The testbench applies several 4-bit addition examples and displays the inputs, outputs, and carry-out using the `$monitor` system task.

---

 Example Output

```text
A=0000 B=0000 Cin=0 | Sum=0000 Cout=0
A=0011 B=0001 Cin=0 | Sum=0100 Cout=0
A=0111 B=0001 Cin=0 | Sum=1000 Cout=0
A=1111 B=0001 Cin=0 | Sum=0000 Cout=1
A=1111 B=1111 Cin=0 | Sum=1110 Cout=1
```

---

 Learning Outcomes

After completing this project, you should be able to:

- Understand how carries propagate through an adder.
- Build larger digital systems using module instantiation.
- Practice hierarchical design in Verilog.
- Verify multi-bit arithmetic circuits through simulation.

---

 Conclusion

The **Ripple Carry Adder** is a fundamental arithmetic circuit constructed by cascading multiple Full Adders. It demonstrates hierarchical hardware design and illustrates how carry signals propagate from one stage to the next. This architecture serves as the foundation for more advanced adder designs, such as Carry Look-Ahead and Carry Select Adders.