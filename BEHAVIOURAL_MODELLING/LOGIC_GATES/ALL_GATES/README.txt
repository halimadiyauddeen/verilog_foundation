 All Logic Gates – Behavioral Modeling

**Author:** Halima Diyauddeen

---

 Overview

This project implements the seven fundamental logic gates using **Behavioral Modeling** in Verilog. A single module generates the outputs of **AND**, **OR**, **NAND**, **NOR**, **XOR**, **XNOR**, and the **NOT** operations for both inputs.

---

 Objective

- Understand how multiple combinational circuits can be implemented within a single `always @(*)` block.
- Practice Behavioral Modeling using procedural assignments.
- Verify multiple outputs simultaneously using a single testbench.

---

 Behavioral Implementation

```verilog
always @(*) begin
    and_out  = a & b;
    or_out   = a | b;
    nand_out = ~(a & b);
    nor_out  = ~(a | b);
    xor_out  = a ^ b;
    xnor_out = ~(a ^ b);
    not_a    = ~a;
    not_b    = ~b;
end
```

The `always @(*)` block updates every output whenever either input changes, ensuring proper combinational behavior.

---

 Truth Table

| A | B | AND | OR | NAND | NOR | XOR | XNOR | NOT A | NOT B |
|:-:|:-:|:---:|:--:|:----:|:---:|:---:|:----:|:-----:|:-----:|
| 0 | 0 | 0 | 0 | 1 | 1 | 0 | 1 | 1 | 1 |
| 0 | 1 | 0 | 1 | 1 | 0 | 1 | 0 | 1 | 0 |
| 1 | 0 | 0 | 1 | 1 | 0 | 1 | 0 | 0 | 1 |
| 1 | 1 | 1 | 1 | 0 | 0 | 0 | 1 | 0 | 0 |

---

 Project Files

| File | Description |
|------|-------------|
| `all_gates.v` | Design Under Test (DUT) |
| `all_gates_tb.v` | Testbench used to verify the DUT |
| `README.md` | Project documentation |

---

 Verilog Implementation

The design uses:

- `always @(*)`
- Blocking assignments (`=`)
- Bitwise operators:
  - `&`
  - `|`
  - `~`
  - `^`

No `assign` statements or gate primitives are used.

---

 Simulation

The testbench generates random input combinations using Verilog's `$random` system function and applies them using concatenation.

```verilog
repeat (10) begin
    {a, b} = $random;
    #10;
end
```

---

 Sample Output

```text
A=0 | B=1 | AND=0 | OR=1 | NAND=1 | NOR=0 | XOR=1 | XNOR=0 | NOT_A=1 | NOT_B=0
A=1 | B=0 | AND=0 | OR=1 | NAND=1 | NOR=0 | XOR=1 | XNOR=0 | NOT_A=0 | NOT_B=1
A=1 | B=1 | AND=1 | OR=1 | NAND=0 | NOR=0 | XOR=0 | XNOR=1 | NOT_A=0 | NOT_B=0
...
```

Because `$random` is used, the order of the input combinations may vary each time the simulation runs.

---

 Learning Outcomes

After completing this project, you should be able to:

- Implement multiple logic gates in a single behavioral module.
- Use `always @(*)` to model combinational logic.
- Apply blocking assignments correctly.
- Generate random test vectors using `$random`.
- Verify multiple outputs simultaneously using a single testbench.

---

 Conclusion

The **All Logic Gates** project combines the seven fundamental logic gates into a single Behavioral Modeling design. It demonstrates how multiple combinational outputs can be described efficiently within one `always @(*)` block while reinforcing the use of procedural assignments and simulation-based verification.