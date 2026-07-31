 JK Flip-Flop – Behavioral Modeling

**Author:** Halima Diyauddeen

---

 Overview

This project implements a **JK Flip-Flop** using **Verilog Behavioral Modeling**. The JK flip-flop is a sequential circuit that stores one bit of data and changes its output on the rising edge of the clock. It can hold, reset, set, or toggle its output depending on the values of the **J** and **K** inputs.

---

 Project Objective

The objectives of this project are to:

* Understand how a JK flip-flop works.
* Implement a JK flip-flop using Verilog Behavioral Modeling.
* Verify the hold, set, reset, and toggle operations through simulation.

---

 Truth Table

|  J  |  K  | Q (Next State) | Description   |
| :-: | :-: | :------------: | ------------- |
|  0  |  0  | Previous State | Hold          |
|  0  |  1  |        0       | Reset         |
|  1  |  0  |        1       | Set           |
|  1  |  1  |     Toggle     | Toggle output |

---

 Verilog Design

The JK flip-flop is implemented using an `always @(posedge clk)` block. On every rising edge of the clock, the output changes according to the values of the **J** and **K** inputs.

```verilog id="lquwhz"
always @(posedge clk) begin
    case ({j, k})
        2'b00: q <= q;
        2'b01: q <= 1'b0;
        2'b10: q <= 1'b1;
        2'b11: q <= ~q;
    endcase
end
```

---

 Simulation

The testbench generates a clock signal and applies different combinations of the **J** and **K** inputs to verify the hold, set, reset, and toggle operations. The outputs are monitored using the `$monitor` system task.

---

 Expected Output

```text id="dx1cjs"
Clock | J | K | Q
-----------------
  ↑   | 0 | 0 | Hold
  ↑   | 0 | 1 | 0
  ↑   | 1 | 0 | 1
  ↑   | 1 | 1 | Toggle
```

---

 What I Learned

While working on this project, I learned how to:

* Implement a JK flip-flop using Behavioral Modeling.
* Use an `always @(posedge clk)` block to model sequential logic.
* Understand the hold, set, reset, and toggle operations of a JK flip-flop.
* Verify flip-flop behavior through simulation.

---

 Conclusion

This project successfully implements a JK Flip-Flop using Verilog Behavioral Modeling. The simulation confirms that the flip-flop correctly performs the hold, set, reset, and toggle operations on each rising edge of the clock. This project helped strengthen my understanding of sequential logic and flip-flop design.
