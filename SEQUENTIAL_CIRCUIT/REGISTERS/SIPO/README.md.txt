# SIPO Register – Behavioral Modeling

**Author:** Halima Diyauddeen

---

## Overview

This project implements a **4-bit Serial-In Parallel-Out (SIPO) Register** using **Verilog Behavioral Modeling**. The register accepts one bit of data on every clock pulse and shifts the stored data through the register. After four clock cycles, the data can be read simultaneously from the parallel outputs.

---

## Project Objective

The objectives of this project are to:

* Understand how a SIPO register works.
* Implement a 4-bit SIPO register using Verilog Behavioral Modeling.
* Verify the shifting operation through simulation.


---

## Verilog Design

The register is implemented using an `always` block triggered by the positive edge of the clock. On every clock pulse, the serial input is shifted into the register while the previous bits move to the next position.

```verilog
always @(posedge clk)
    q <= {q[2:0], serial_in};
```

---

## Simulation

The testbench generates a clock signal and applies a sequence of serial input bits. After each clock pulse, the register shifts the new bit into the register while the existing bits move one position forward. The outputs are monitored using the `$monitor` system task to verify the shifting operation.

---

## Expected Output

```text
Clock  Serial In   Parallel Output
----------------------------------
  ↑        1          0001
  ↑        0          0010
  ↑        1          0101
  ↑        1          1011
```

---

## What I Learned

While working on this project, I learned how to:

* Implement a shift register using Behavioral Modeling.
* Use an `always @(posedge clk)` block for sequential logic.
* Shift serial data into a register using the concatenation operator.
* Verify the shifting operation through simulation.

---

## Conclusion

This project successfully implements a 4-bit SIPO Register using Verilog Behavioral Modeling. The simulation confirms that serial data is shifted into the register on each clock pulse and becomes available as parallel output after successive shifts. This project strengthened my understanding of sequential logic and shift register operations.
