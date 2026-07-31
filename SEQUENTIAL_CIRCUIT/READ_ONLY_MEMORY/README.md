 RAM – Sequential Modeling

**Author:** Halima Diyauddeen

---

 Overview

This project implements a **Single-Port Synchronous Random Access Memory (RAM)** using **Sequential Modeling** in Verilog. RAM is a memory device used to store and retrieve data at specific memory locations. Unlike FIFO, RAM allows data to be accessed directly using an address, making it one of the fundamental storage components in digital systems.

The RAM uses a single clock for both read and write operations. Data is written into or read from the memory location specified by the address input.

---

 Objective

- Understand Sequential Modeling in Verilog.
- Implement a Single-Port Synchronous RAM.
- Learn how memory arrays are declared and accessed.
- Understand read and write operations using a clock.
- Verify RAM functionality using reusable tasks in the testbench.

---

 RAM Implementation

The design consists of:

- Memory array
- Address bus
- Data input
- Data output
- Write enable signal
- Clock

The RAM performs write and read operations on the rising edge of the clock.

```verilog
always @(posedge clk) begin

    if (we)

        memory[addr] <= data_in;

    else

        data_out <= memory[addr];

end
```

When the write enable (`we`) is asserted, the input data is stored at the specified address. When the write enable is deasserted, the data stored at the specified address is read and placed on the output.

---

 RAM Operation Table

| Clock Edge | Write Enable | Operation | Description |
|:----------:|:------------:|-----------|-------------|
| ↑ | 1 | Write | Store `data_in` at `addr` |
| ↑ | 0 | Read | Read data from `addr` into `data_out` |

---

 Memory Organization

| Parameter | Value |
|-----------|------:|
| Data Width | 8 bits |
| Address Width | 4 bits |
| Memory Depth | 16 Locations |
| Total Memory | 128 bits |

---

 Verilog Implementation

The design uses:

- Sequential Modeling
- `always @(posedge clk)`
- Memory array
- Parameters
- Registers
- Write Enable (`we`)
- Address bus
- Data bus

No gate primitives or `assign` statements are used.

---

 Simulation

The testbench generates a clock signal and verifies the RAM by performing multiple write and read operations using reusable tasks.

```verilog
write_ram(4'd0, 8'h11);
write_ram(4'd1, 8'h22);
write_ram(4'd2, 8'h33);
write_ram(4'd3, 8'h44);
write_ram(4'd4, 8'h55);

read_ram(4'd0);
read_ram(4'd1);
read_ram(4'd2);
read_ram(4'd3);
read_ram(4'd4);
```

> **Note:** The testbench uses reusable tasks to simplify repeated write and read operations, making the verification process cleaner, more modular, and easier to maintain.

---

 Sample Output

```text
Time=5   | WE=1 | ADDR=0 | DATA_IN=11 | DATA_OUT=00
Time=15  | WE=1 | ADDR=1 | DATA_IN=22 | DATA_OUT=00
Time=25  | WE=1 | ADDR=2 | DATA_IN=33 | DATA_OUT=00
Time=35  | WE=1 | ADDR=3 | DATA_IN=44 | DATA_OUT=00
Time=45  | WE=1 | ADDR=4 | DATA_IN=55 | DATA_OUT=00

Time=55  | WE=0 | ADDR=0 | DATA_OUT=11
Time=65  | WE=0 | ADDR=1 | DATA_OUT=22
Time=75  | WE=0 | ADDR=2 | DATA_OUT=33
Time=85  | WE=0 | ADDR=3 | DATA_OUT=44
Time=95  | WE=0 | ADDR=4 | DATA_OUT=55
...
```

The exact simulation output may vary depending on the sequence of write and read operations.

---

 Learning Outcomes

After completing this project, you should be able to:

- Understand the architecture of a Single-Port RAM.
- Implement RAM using Sequential Modeling.
- Declare and use memory arrays in Verilog.
- Perform synchronous read and write operations.
- Understand the function of the write enable signal.
- Use reusable tasks in a Verilog testbench.
- Generate a clock signal for sequential circuits.
- Verify RAM functionality through simulation.

---

 Conclusion

The **Single-Port Synchronous RAM** demonstrates how Sequential Modeling is used to implement addressable memory in digital systems. By combining a memory array, address bus, write enable signal, and clock, the RAM can reliably store and retrieve data from specific memory locations. This project introduces essential memory concepts widely used in FPGA and ASIC designs and serves as a strong foundation for more advanced memory architectures such as dual-port RAM, ROM, cache memories, and register files.