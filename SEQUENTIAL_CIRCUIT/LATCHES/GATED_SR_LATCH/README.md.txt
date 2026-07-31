 Gated SR Latch – Behavioral Modeling

**Author:** Halima Diyauddeen

---

 Overview

This project implements a **Gated SR Latch** using **Verilog Behavioral Modeling**. Unlike the basic SR latch, the gated SR latch includes an **Enable (EN)** input. The latch responds to the **Set (S)** and **Reset (R)** inputs only when the enable signal is active. When the enable signal is inactive, the latch holds its previous state.

---

 Project Objective

The objectives of this project are to:

* Understand how a gated SR latch works.
* Implement a gated SR latch using Verilog Behavioral Modeling.
* Verify the enable, set, reset, and hold operations through simulation.

---

 Truth Table

|  EN |  S  |  R  | Q (Next State) | Description       |
| :-: | :-: | :-: | :------------: | ----------------- |
|  0  |  X  |  X  | Previous State | Hold              |
|  1  |  0  |  0  | Previous State | Hold              |
|  1  |  0  |  1  |        0       | Reset             |
|  1  |  1  |  0  |        1       | Set               |
|  1  |  1  |  1  |     Invalid    | Invalid condition |

---

 Verilog Design

The gated SR latch is implemented using an `always @(*)` block. When the enable signal is high, the latch responds to the **Set** and **Reset** inputs. When the enable signal is low, the previous output is retained.

```verilog
always @(*) begin
    if (en) begin
        case ({s, r})
            2'b00: q = q;
            2'b01: q = 1'b0;
            2'b10: q = 1'b1;
            2'b11: q = 1'bx;
        endcase
    end
end
```

---

 Simulation

The testbench applies different combinations of the **Enable**, **Set**, and **Reset** inputs to verify the hold, set, reset, and invalid conditions. The outputs are monitored using the `$monitor` system task.

---

 Expected Output

```text
EN = 0 | S = X | R = X | Q = Previous State
EN = 1 | S = 0 | R = 0 | Q = Previous State
EN = 1 | S = 0 | R = 1 | Q = 0
EN = 1 | S = 1 | R = 0 | Q = 1
EN = 1 | S = 1 | R = 1 | Q = x
```

---

 What I Learned

While working on this project, I learned how to:

* Implement a gated SR latch using Behavioral Modeling.
* Control latch operation with an enable signal.
* Understand the set, reset, hold, and invalid conditions.
* Verify sequential logic circuits through simulation.

---

 Conclusion

This project successfully implements a Gated SR Latch using Verilog Behavioral Modeling. The simulation confirms that the latch responds to the set and reset inputs only when the enable signal is active and retains its previous state when the enable signal is inactive. This project helped strengthen my understanding of latches and enable-controlled sequential circuits.
