# Logisim-Simulation-using-SimpleRisc-ISA
# MEMORY_SUM – Computer Organisation Project

## 🔹 Problem Statement
**MEMORY_SUM**:  
An integer **N** is stored at memory location `0x800000`.  
Calculate the sum of **N integers** stored at **continuous memory addresses starting from `0x800001`**.  
Demonstrate the working for **various values of N**.

---

## 🔹 Project Overview
This project implements the MEMORY_SUM problem using a **custom processor instruction set**.  
The program:
1. Reads the value of **N** from memory
2. Iteratively / recursively sums the next **N memory locations**
3. Stores the final sum in a register
4. Demonstrates correct execution for different values of **N**

The implementation is written in **assembly**, encoded into **machine instructions**, and executed on a **processor model**.

---


## 🔹 File Descriptions

### `src/code_final.s`
- Main **assembly program**
- Initializes memory with values
- Loads **N**
- Calls the `sumArray` routine
- Uses **recursion and stack operations**
- Final sum is stored in register `r7`

### `src/encode_final.s`
- Encoded version of `code_final.s`
- Uses `.encode` directives
- Produces machine-level instructions compatible with the processor

### `program/instr_hex.dat`
- Final **hexadecimal machine code**
- Loaded directly into instruction memory
- Used during simulation / execution

---

## 🔹 Algorithm Used

1. Load base address
2. Read `N` (number of elements)
3. Move pointer to first data element
4. Call recursive function `sumArray`
5. Base case: `N == 0 → return 0`
6. Recursive case:
   - Save context on stack
   - Call `sumArray(N-1)`
   - Add current element to partial sum
7. Final sum stored in `r7`

---

## 🔹 Registers Used

| Register | Purpose |
|--------|---------|
| r0 | Base address pointer |
| r1 | Number of elements (N) |
| r4 | Current array element |
| r7 | Final accumulated sum |
| sp | Stack pointer |
| ra | Return address |

---

## 🔹 Demonstration
- Different values of **N** can be tested by changing the value stored at the base memory location.
- Correct operation is verified via:
  - Register outputs
  - Simulation waveforms
  - Printed register values

---

## 🔹 How to Run

1. Assemble `encode_final.s`
2. Generate `instr_hex.dat`
3. Load hex file into instruction memory
4. Run processor simulation
5. Observe final sum in register `r7`

---

## 🔹 Key Concepts Demonstrated
- Memory addressing
- Stack-based recursion
- Procedure calls and returns
- Custom ISA execution
- Processor datapath verification
---
## 🔹 License

This project is intended for **educational and academic purposes only**.
