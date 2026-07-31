 T Flip-Flop – Behavioral Modeling

**Author:** Halima Diyauddeen

---

 Overview

This project implements a **T (Toggle) Flip-Flop** using **Verilog Behavioral Modeling**. The T flip-flop is a sequential circuit that stores one bit of data and changes its output on the rising edge of the clock. When the **T** input is high, the output toggles. When the **T** input is low, the output remains unchanged.

---

 Project Objective

The objectives of this project are to:

* Understand how a T flip-flop works.
* Implement a T flip-flop using Verilog Behavioral Modeling.
* Verify the hold and toggle operations through simulation.

---

 Truth Table

|  T  | Q (Next State) | Description   |
| :-: | :------------: | ------------- |
|  0  | Previous State | Hold          |
|  1  |     Toggle     | Toggle output |

---

 Verilog Design

The T flip-flop is implemented using an `always @(posedge clk)` block. On every rising edge of the clock, the output either holds its current value or toggles depending on the value of the **T** input.

```verilog
always @(posedge clk) begin
    if (t)
        q <= ~q;
    else
        q <= q;
end
```

---

 Simulation

The testbench generates a clock signal and applies different values to the **T** input. The output is monitored using the `$monitor` system task to verify the hold and toggle operations on each rising edge of the clock.

---

 Expected Output

```text
Clock | T | Q
--------------
  ↑   | 0 | Hold
  ↑   | 1 | Toggle
  ↑   | 1 | Toggle
  ↑   | 0 | Hold
```

---

 What I Learned

While working on this project, I learned how to:

* Implement a T flip-flop using Behavioral Modeling.
* Use an `always @(posedge clk)` block to model sequential logic.
* Understand the hold and toggle operations of a T flip-flop.
* Verify flip-flop behavior through simulation.

---

 Conclusion

This project successfully implements a T Flip-Flop using Verilog Behavioral Modeling. The simulation confirms that the flip-flop correctly holds its current state when **T = 0** and toggles its output when **T = 1** on each rising edge of the clock. This project helped strengthen my understanding of sequential logic and flip-flop design.
