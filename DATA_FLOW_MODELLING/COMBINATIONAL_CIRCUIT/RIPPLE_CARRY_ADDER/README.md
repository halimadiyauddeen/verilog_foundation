 4-Bit Ripple Carry Adder – Dataflow Modeling

**Author:** Halima Diyauddeen

---

 Overview

This project implements a **4-Bit Ripple Carry Adder (RCA)** using **Verilog Dataflow Modeling**. A Ripple Carry Adder adds two 4-bit binary numbers together with an optional carry input. The carry generated from each bit position propagates (ripples) to the next higher bit.

---

 Objective

- Understand the operation of a 4-Bit Ripple Carry Adder.
- Implement a 4-Bit Ripple Carry Adder using Verilog Dataflow Modeling.
- Verify the design using a dedicated testbench.

---


 Project Files

| File | Description |
|------|-------------|
| `ripple_carry_adder_4bit.v` | Design Under Test (DUT) |
| `ripple_carry_adder_4bit_tb.v` | Testbench used to verify the DUT |
| `README.md` | Project documentation |

---

 Verilog Implementation

The Ripple Carry Adder is implemented using the Verilog addition operator.

```verilog
assign {cout, sum} = a + b + cin;
```

---

 Simulation

The testbench applies several combinations of two 4-bit numbers and a carry input.

The outputs are observed using the `$monitor` system task.

---

 Expected Output

```text
A=0000 | B=0000 | Cin=0 | Sum=0000 | Cout=0
A=0011 | B=0010 | Cin=0 | Sum=0101 | Cout=0
A=0101 | B=0011 | Cin=0 | Sum=1000 | Cout=0
A=0111 | B=0001 | Cin=1 | Sum=1001 | Cout=0
A=1111 | B=0001 | Cin=0 | Sum=0000 | Cout=1
A=1010 | B=0101 | Cin=1 | Sum=0000 | Cout=1
A=1111 | B=1111 | Cin=1 | Sum=1111 | Cout=1
```

---

 Learning Outcomes

After completing this project, you should be able to:

- Understand the operation of a Ripple Carry Adder.
- Use Verilog's arithmetic operators in Dataflow Modeling.
- Perform multi-bit binary addition with carry input and carry output.
- Verify arithmetic circuits using a testbench.

---

 Conclusion

The 4-Bit Ripple Carry Adder is a fundamental arithmetic circuit used in digital systems to add binary numbers. In Dataflow Modeling, it can be implemented efficiently using the Verilog addition operator. In later sections of this repository, the same circuit will be implemented using Structural Modeling by connecting multiple Full Adder modules to illustrate hierarchical hardware design.