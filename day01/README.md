# IC Design — 30 Days Learning Journey

## About This Project

This repository documents my 30-day IC Design learning journey, focusing on Digital IC Design, Verilog HDL, simulation, verification, and Physical Design fundamentals.

My goal is to improve my hardware design skills through hands-on projects, from basic digital circuits to more advanced ASIC design workflows.

## Day 01 — 2:1 Multiplexer (MUX)

### 1. Project Overview

Designed and verified a 2:1 Multiplexer using Verilog HDL.

A 2:1 MUX selects one of two input signals based on a selection signal.

**Logic Function:**

- S = 0 → Y = A
- S = 1 → Y = B

Boolean expression:

**Y = (~S & A) | (S & B)**

### 2. Tools Used

- Ubuntu 22.04 (WSL2)
- Icarus Verilog
- GTKWave
- Git and GitHub

### 3. Project Files

- `day01/mux2_1.v` — Verilog RTL implementation
- `day01/mux2_1_tb.v` — Verification testbench

### 4. Simulation and Verification

The testbench uses a `for` loop to automatically generate all 8 binary input combinations.

The expected output is calculated independently and compared with the actual DUT output.

**Verification result: 8/8 test cases PASSED.**

Waveforms were generated in VCD format and analyzed using GTKWave.

### 5. How to Run

Open Ubuntu and navigate to the project directory.

**Step 1 — Enter the project folder**

`cd day01`

**Step 2 — Compile the Verilog files**

`iverilog -Wall -s mux2_1_tb -o mux_sim mux2_1.v mux2_1_tb.v`

**Step 3 — Run the simulation**

`vvp mux_sim`

**Step 4 — View waveforms**

`gtkwave mux2.vcd`

The VCD file is generated during simulation and is excluded from Git tracking.

### 6. What I Learned

- Understanding digital combinational logic
- Writing RTL using Verilog HDL
- Creating a testbench
- Generating test cases using a `for` loop
- Comparing expected and actual outputs
- Debugging Verilog syntax errors
- Analyzing digital waveforms
- Managing source code using Git and GitHub

## Next Steps

Continue learning logic synthesis using Yosys, timing analysis, and the RTL-to-GDSII Physical Design flow.

---

*This repository is part of my personal journey toward becoming a Digital IC Design / Physical Design Engineer.*
