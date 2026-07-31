 FIFO – Sequential Modeling

**Author:** Halima Diyauddeen

---

 Overview

This project implements a **Synchronous First-In, First-Out (FIFO)** memory using **Sequential Modeling** in Verilog. A FIFO stores data in the order it is received and retrieves it in the same order. It is widely used in digital systems for buffering data between components operating at the same clock frequency.

The FIFO uses a single clock for both write and read operations and includes **Full** and **Empty** status flags to prevent invalid memory accesses.

---

 Objective

- Understand Sequential Modeling in Verilog.
- Implement a synchronous FIFO memory.
- Learn how read and write pointers manage FIFO operations.
- Understand the purpose of Full and Empty flags.
- Verify FIFO functionality using reusable tasks in the testbench.

---

 FIFO Implementation

The design consists of:

- Memory array
- Write pointer
- Read pointer
- Data counter
- Full flag
- Empty flag

The FIFO performs write and read operations on the rising edge of the clock.

```verilog
always @(posedge clk) begin

    if (rst) begin

        wr_ptr <= 0;
        rd_ptr <= 0;
        count  <= 0;

    end

    else begin

        if (wr_en && !full)
            ...

        if (rd_en && !empty)
            ...

    end

end
```

---

 FIFO Operation Table

| Reset | Write Enable | Read Enable | FIFO Status | Operation |
|:----:|:------------:|:-----------:|:-----------:|-----------|
| 1 | X | X | X | Reset FIFO |
| 0 | 1 | 0 | Not Full | Write Data |
| 0 | 0 | 1 | Not Empty | Read Data |
| 0 | 1 | 1 | Valid | Simultaneous Read and Write |
| 0 | 1 | 0 | Full | Write Ignored |
| 0 | 0 | 1 | Empty | Read Ignored |

---

 Verilog Implementation

The design uses:

- Sequential Modeling
- `always @(posedge clk)`
- Registers
- Memory array
- Write pointer
- Read pointer
- Counter
- Full flag
- Empty flag

No gate primitives or `assign` statements are used.

---

 Simulation

The testbench performs FIFO verification by generating a clock, applying a reset, and executing write and read operations using reusable tasks.

```verilog
write_fifo(8'h11);
write_fifo(8'h22);
write_fifo(8'h33);

read_fifo();
read_fifo();
read_fifo();
```

> **Note:** The testbench uses reusable tasks to simplify repeated write and read operations, improving code readability and scalability.

---

 Sample Output

```text
Time=5   | WR=1 | RD=0 | DATA_IN=11 | DATA_OUT=00 | FULL=0 | EMPTY=1
Time=15  | WR=1 | RD=0 | DATA_IN=22 | DATA_OUT=00 | FULL=0 | EMPTY=0
Time=25  | WR=1 | RD=0 | DATA_IN=33 | DATA_OUT=00 | FULL=0 | EMPTY=0
Time=45  | WR=0 | RD=1 | DATA_IN=33 | DATA_OUT=11 | FULL=0 | EMPTY=0
Time=55  | WR=0 | RD=1 | DATA_IN=33 | DATA_OUT=22 | FULL=0 | EMPTY=0
Time=65  | WR=0 | RD=1 | DATA_IN=33 | DATA_OUT=33 | FULL=0 | EMPTY=1
...
```

The exact simulation output may vary depending on the sequence of write and read operations.

---

 Learning Outcomes

After completing this project, you should be able to:

- Understand FIFO architecture.
- Implement a synchronous FIFO using Sequential Modeling.
- Manage read and write operations using pointers.
- Understand the purpose of Full and Empty flags.
- Use reusable tasks in a Verilog testbench.
- Generate a clock signal for sequential circuits.
- Verify FIFO functionality through simulation.

---

 Conclusion

The **Synchronous FIFO** demonstrates how Sequential Modeling is used to implement memory-based digital systems. By combining a memory array, read and write pointers, a data counter, and status flags, the FIFO efficiently stores and retrieves data in the order it is received. This project introduces essential concepts used in FPGA and ASIC designs, including buffered data transfer, flow control, and sequential circuit verification.