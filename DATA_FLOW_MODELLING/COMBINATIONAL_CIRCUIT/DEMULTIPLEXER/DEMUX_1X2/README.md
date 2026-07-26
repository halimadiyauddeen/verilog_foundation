 1x2 DEMUX – Dataflow Modeling

**Author:** Halima Diyauddeen

---

 Overview

This project implements a **1x2 Demultiplexer (DEMUX)** using **Verilog Dataflow Modeling**. A 1x2 DEMUX routes a single data input to one of two output lines based on the value of the select input.

---

 Objective

- Understand the operation of a 1x2 DEMUX.
- Implement a 1x2 DEMUX using Verilog Dataflow Modeling.
- Verify the design using a dedicated testbench.

---

 Boolean Expressions

```text
Y0 = D & ~S
Y1 = D &  S
```

---

 Truth Table

| D | S | Y0 | Y1 |
|:-:|:-:|:--:|:--:|
| 0 | 0 | 0 | 0 |
| 1 | 0 | 1 | 0 |
| 0 | 1 | 0 | 0 |
| 1 | 1 | 0 | 1 |

---

 Project Files

| File | Description |
|------|-------------|
| `demux_1x2.v` | Design Under Test (DUT) |
| `demux_1x2_tb.v` | Testbench used to verify the DUT |
| `README.md` | Project documentation |

---

 Verilog Implementation

The DEMUX is implemented using continuous assignment statements.

```verilog
assign y0 = d & ~s;
assign y1 = d & s;
```

---

 Simulation

The testbench applies all possible combinations of the data input (`D`) and the select input (`S`).

The outputs are observed using the `$monitor` system task.

---

 Expected Output

```text
D = 0 | S = 0 | Y0 = 0 | Y1 = 0
D = 1 | S = 0 | Y0 = 1 | Y1 = 0
D = 0 | S = 1 | Y0 = 0 | Y1 = 0
D = 1 | S = 1 | Y0 = 0 | Y1 = 1
```

---

 Learning Outcomes

After completing this project, you should be able to:

- Understand the operation of a 1x2 DEMUX.
- Implement a DEMUX using Dataflow Modeling.
- Use the NOT (`~`) and AND (`&`) operators in Verilog.
- Verify the functionality of a combinational circuit through simulation.

---

 Conclusion

The 1x2 DEMUX is a fundamental combinational circuit that routes a single data input to one of two outputs using a select line. It serves as the foundation for larger demultiplexers and digital data-routing applications.s