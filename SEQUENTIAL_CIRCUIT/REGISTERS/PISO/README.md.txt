# PISO Register – Behavioral Modeling

**Author:** Halima Diyauddeen

---

## Overview

This project implements a **4-bit Parallel-In Serial-Out (PISO) Register** using **Verilog Behavioral Modeling**. The register loads four input bits simultaneously and shifts them out one bit at a time on each clock pulse.

---

## Project Objective

The objectives of this project are to:

* Understand how a PISO register works.
* Implement a 4-bit PISO register using Verilog Behavioral Modeling.
* Verify the loading and shifting operations through simulation.

---


---

## Verilog Design

The register is implemented using an `always @(posedge clk)` block. When the **load** signal is active, the parallel input data is loaded into the register. Otherwise, the stored data is shifted one bit at a time to produce the serial output.

```verilog
always @(posedge clk) begin
    if (load)
        q <= data_in;
    else
        q <= {q[2:0], 1'b0};
end
```

---

## Simulation

The testbench first loads a 4-bit value into the register by enabling the **load** signal. It then disables the load signal and applies clock pulses to shift the stored data out serially. The outputs are monitored using the `$monitor` system task to verify the register's operation.

---

## Expected Output

```text
Load  Data In   Serial Out
---------------------------
 1    1011         -
 0      -          1
 0      -          0
 0      -          1
 0      -          1
```

---

## What I Learned

While working on this project, I learned how to:

* Implement a PISO register using Behavioral Modeling.
* Load parallel data into a register.
* Shift stored data out serially using clock pulses.
* Verify sequential circuits through simulation.

---

## Conclusion

This project successfully implements a 4-bit PISO Register using Verilog Behavioral Modeling. The simulation confirms that the register correctly loads parallel data and shifts it out one bit at a time on each clock pulse. This project helped strengthen my understanding of sequential logic and shift register operations.
