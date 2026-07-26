# SR Latch – Behavioral Modeling

**Author:** Halima Diyauddeen

---

## Overview

This project implements an **SR (Set-Reset) Latch** using **Verilog Behavioral Modeling**. The SR latch is a basic sequential circuit that stores one bit of data. Its output changes based on the values of the **Set (S)** and **Reset (R)** inputs and remains unchanged until a new input is applied.

---

## Project Objective

The objectives of this project are to:

* Understand how an SR latch stores data.
* Implement an SR latch using Verilog Behavioral Modeling.
* Verify the latch operation through simulation.

---

## Truth Table

|  S  |  R  | Q (Next State) | Description       |
| :-: | :-: | :------------: | ----------------- |
|  0  |  0  | Previous State | Hold              |
|  0  |  1  |        0       | Reset             |
|  1  |  0  |        1       | Set               |
|  1  |  1  |     Invalid    | Invalid condition |

---

## Verilog Design

The SR latch is implemented using an `always @(*)` block. The outputs change whenever the input signals change, allowing the latch to set, reset, or hold its previous state depending on the input combination.

```verilog
always @(*) begin
    case ({s, r})
        2'b00: q = q;
        2'b01: q = 1'b0;
        2'b10: q = 1'b1;
        2'b11: q = 1'bx;
    endcase
end
```

---

## Simulation

The testbench applies different combinations of the **Set** and **Reset** inputs to verify the set, reset, hold, and invalid conditions. The outputs are monitored using the `$monitor` system task.

---

## Expected Output

```text
S = 0 | R = 0 | Q = Previous State
S = 0 | R = 1 | Q = 0
S = 1 | R = 0 | Q = 1
S = 1 | R = 1 | Q = x
```

---

## What I Learned

While working on this project, I learned how to:

* Implement an SR latch using Behavioral Modeling.
* Describe sequential circuits using an `always` block.
* Understand the set, reset, and hold operations of an SR latch.
* Verify latch behavior through simulation.

---

## Conclusion

This project successfully implements an SR Latch using Verilog Behavioral Modeling. The simulation confirms that the latch correctly performs the set, reset, and hold operations while identifying the invalid input condition. This project helped strengthen my understanding of basic sequential logic and memory elements.
