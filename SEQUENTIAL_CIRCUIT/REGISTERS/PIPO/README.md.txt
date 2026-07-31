 PIPO Register – Behavioral Modeling

**Author:** Halima Diyauddeen

---

 Overview

This project implements a **4-bit Parallel-In Parallel-Out (PIPO) Register** using **Verilog Behavioral Modeling**. The register loads all four input bits simultaneously on the rising edge of the clock and makes them available at the parallel outputs.

---

 Project Objective

The objectives of this project are to:

* Understand how a PIPO register works.
* Implement a 4-bit PIPO register using Verilog Behavioral Modeling.
* Verify the parallel loading operation through simulation.

---

 Verilog Design

The register is implemented using an `always @(posedge clk)` block. On every rising edge of the clock, all four input bits are loaded into the register simultaneously and appear at the parallel outputs.

```verilog
always @(posedge clk)
    q <= data_in;
```

---

 Simulation

The testbench generates a clock signal and applies different 4-bit input values to the register. On each rising edge of the clock, the input data is loaded into the register, and the outputs are monitored using the `$monitor` system task to verify the register's operation.

---

 Expected Output

```text
Clock   Data In   Parallel Output
---------------------------------
  ↑      0001          0001
  ↑      1010          1010
  ↑      1100          1100
  ↑      0111          0111
```

---

 What I Learned

While working on this project, I learned how to:

* Implement a PIPO register using Behavioral Modeling.
* Load multiple bits into a register simultaneously.
* Use an `always @(posedge clk)` block to model sequential logic.
* Verify parallel data transfer through simulation.

---

 Conclusion

This project successfully implements a 4-bit PIPO Register using Verilog Behavioral Modeling. The simulation confirms that the register correctly loads and stores parallel data on each rising edge of the clock. This project helped strengthen my understanding of sequential logic and register design.
