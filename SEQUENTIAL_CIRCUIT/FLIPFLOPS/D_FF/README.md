 D Flip-Flop – Behavioral Modeling

**Author:** Halima Diyauddeen

---

 Overview

This project implements a **D (Data) Flip-Flop** using **Verilog Behavioral Modeling**. The D flip-flop is a sequential circuit that stores one bit of data and updates its output on the rising edge of the clock. On each clock pulse, the output takes the value of the **D** input.

---

 Project Objective

The objectives of this project are to:

* Understand how a D flip-flop works.
* Implement a D flip-flop using Verilog Behavioral Modeling.
* Verify the data storage operation through simulation.

---

 Truth Table

|  D  | Q (Next State) | Description |
| :-: | :------------: | ----------- |
|  0  |        0       | Store 0     |
|  1  |        1       | Store 1     |

---

 Verilog Design

The D flip-flop is implemented using an `always @(posedge clk)` block. On every rising edge of the clock, the value at the **D** input is stored and transferred to the output.

```verilog
always @(posedge clk)
    q <= d;
```

---

 Simulation

The testbench generates a clock signal and applies different values to the **D** input. The output is monitored using the `$monitor` system task to verify that the output follows the input on each rising edge of the clock.

---

 Expected Output

```text
Clock | D | Q
--------------
  ↑   | 0 | 0
  ↑   | 1 | 1
  ↑   | 1 | 1
  ↑   | 0 | 0
```

---

 What I Learned

While working on this project, I learned how to:

* Implement a D flip-flop using Behavioral Modeling.
* Use an `always @(posedge clk)` block to model sequential logic.
* Understand how data is stored on the rising edge of the clock.
* Verify flip-flop behavior through simulation.

---

Conclusion

This project successfully implements a D Flip-Flop using Verilog Behavioral Modeling. The simulation confirms that the flip-flop correctly stores the value of the **D** input on each rising edge of the clock. This project helped strengthen my understanding of sequential logic and flip-flop design.
