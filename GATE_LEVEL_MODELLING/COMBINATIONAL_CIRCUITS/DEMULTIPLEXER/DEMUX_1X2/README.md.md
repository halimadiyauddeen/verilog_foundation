 1×2 DEMUX – Gate-Level Modeling

**Author:** Halima Diyauddeen

---

 Overview

This project implements a **1×2 Demultiplexer (DEMUX)** using **Verilog Gate-Level Modeling**. A 1×2 DEMUX routes a single data input to one of two output lines based on the value of the select input.

---

 Objective

- Understand the operation of a 1×2 DEMUX.
- Implement a DEMUX using Verilog gate primitives.
- Verify the design using a dedicated testbench.

---

 Gate Primitives Used

```verilog
not (not_s, s);

and (y0, d, not_s);
and (y1, d, s);
```

The `not` gate generates the complement of the select input, while the `and` gates route the data input to the appropriate output.

---

 Truth Table

| D | S | Y0 | Y1 |
|:-:|:-:|:-:|:-:|
| 0 | 0 | 0 | 0 |
| 0 | 1 | 0 | 0 |
| 1 | 0 | 1 | 0 |
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

The DEMUX is implemented using Verilog's built-in gate primitives:

- `not`
- `and`

No `assign` statements are used, making this a true Gate-Level Modeling implementation.

---

 Simulation

The testbench applies different combinations of the data input and select input, then displays the corresponding outputs using the `$monitor` system task.

---

 Expected Output

```text
D=0 | S=0 | Y0=0 | Y1=0
D=0 | S=1 | Y0=0 | Y1=0
D=1 | S=0 | Y0=1 | Y1=0
D=1 | S=1 | Y0=0 | Y1=1
```

---

 Learning Outcomes

After completing this project, you should be able to:

- Understand the operation of a 1×2 DEMUX.
- Implement a DEMUX using Verilog gate primitives.
- Design combinational circuits using Gate-Level Modeling.
- Verify DEMUX functionality through simulation.

---

 Conclusion

The **1×2 DEMUX** is a fundamental combinational circuit that routes a single data input to one of two outputs based on a select signal. Implementing it with Verilog gate primitives demonstrates how basic logic gates can be combined to perform data-routing operations, forming the foundation for larger multiplexing and demultiplexing systems.