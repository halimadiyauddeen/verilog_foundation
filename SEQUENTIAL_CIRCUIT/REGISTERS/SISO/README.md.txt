# SISO Shift Register – Behavioral Modeling

**Author:** Halima Diyauddeen

---

## Introduction

This project implements a **Serial-In Serial-Out (SISO) Shift Register** using **Behavioral Modeling** in Verilog. A SISO shift register stores data and shifts it one bit at a time with every clock pulse. The data enters the register serially and also leaves the register serially.

This project helps in understanding how sequential circuits work and how data moves through flip-flops with the help of a clock signal.

---

## Objective

The objectives of this project are to:

* Learn how a SISO shift register works.
* Implement a SISO register using Behavioral Modeling.
* Understand the role of the clock in sequential circuits.
* Verify the design using a Verilog testbench.

---

## Circuit Description

The register accepts one bit of serial data through the input (`serial_in`). On every rising edge of the clock, the data shifts one position to the right. After passing through all the stages, the last bit appears at the serial output (`serial_out`).

---

## Working Principle

* Data is entered one bit at a time.
* On each positive edge of the clock, all bits shift to the next stage.
* The last stage becomes the serial output.
* The process continues until all input bits have passed through the register.

---


## Simulation

The testbench generates a clock signal and applies different serial input values. The register shifts the data on every positive edge of the clock, while the output is observed using the `$monitor` statement.

---

## Sample Output

```text
CLK=1 SI=1 SO=0
CLK=1 SI=0 SO=0
CLK=1 SI=1 SO=0
CLK=1 SI=1 SO=1
...
```

The exact output depends on the sequence of input bits applied during the simulation.

---

## What I Learned

From this project, I learned:

* The difference between combinational and sequential circuits.
* How a SISO shift register transfers data serially.
* How to use clock edges in Behavioral Modeling.
* How to write and simulate a sequential circuit in Verilog.

---

## Conclusion

This project helped me understand the operation of a Serial-In Serial-Out shift register and how data is shifted through the register one bit at a time. It also improved my understanding of sequential logic and Behavioral Modeling in Verilog.
