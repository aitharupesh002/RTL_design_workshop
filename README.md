# RTL Design Workshop – Verilog, Yosys and SKY130

## About This Repository

This repository documents my hands-on learning and practical work from the RTL design workshop. It covers writing Verilog RTL, simulating it with Icarus Verilog, viewing waveforms in GTKWave, synthesising with Yosys for the SKY130 cell library, and finally a complete assessment project taken from RTL to a GDS layout.

Each day has its own folder with a README that explains the experiment and shows the simulation and synthesis screenshots. The assessment project has its own folder with the code, results and reports.

---

## Workshop Days

### Day 1 – Good MUX

- 2:1 multiplexer in Verilog
- Simulation with Icarus Verilog and GTKWave
- Synthesis with Yosys to SKY130 cells

### Day 2 – Sequential Logic, Reset Techniques and Hierarchical Design

- D flip-flop with asynchronous reset
- D flip-flop with synchronous reset
- Sub-module design and multiple modules
- Flattening the netlist

### Day 3 – RTL Optimization and Sequential Logic

- D flip-flops with constant inputs
- Counter design
- Optimization checks in Yosys

### Day 4 – RTL Coding Practices and MUX Design

- Bad MUX and why it is wrong
- Blocking assignment caveat
- MUX using the ternary operator

### Day 5 – Incomplete Conditional Logic and Case Statements

- Incomplete IF and incomplete CASE (latch inference)
- Bad case, complete case and partial case assignment
- MUX and DEMUX using generate
- Ripple carry adder

Folders: [Day_1](Day_1), [Day_2](Day_2), [Day_3](Day_3), [Day_4](Day_4), [Day_5](Day_5)

---

## Assessment 1 – Pedestrian Crossing Controller

[Assesment-1](Assesment-1) contains the project **RTL Design and Physical Implementation of a Pedestrian Traffic Light Controller with Emergency Override Using Verilog HDL**.

| Item | Result |
|---|---|
| Design | 6-state Moore FSM with emergency override |
| RTL verification | Self-checking testbench, 400,038 checks, 0 errors |
| Synthesis | Yosys to SKY130 HD cells |
| Gate-level simulation | RTL and gate-level outputs compared |
| Layout | GDS generated with the Tiny Tapeout (LibreLane) flow |
| Sign-off checks | DRC 0, LVS match, 0 timing violations in 9 corners |

It is an educational design. It has not been fabricated and is not meant for real traffic use.

Project repository with the cloud layout workflow: https://github.com/aitharupesh002/ped-crossing-controller

---

## RTL Design Flow

```text
Verilog RTL
     ↓
Testbench
     ↓
RTL Simulation (Icarus Verilog)
     ↓
Waveform Analysis (GTKWave)
     ↓
Synthesis (Yosys, SKY130)
     ↓
Gate-Level Netlist
     ↓
Gate-Level Simulation (RTL vs GLS)
     ↓
Physical Design (OpenROAD, Magic, KLayout)
     ↓
GDS Layout, DRC, LVS and Timing Checks
```

---

## Tools Used

Verilog HDL, Icarus Verilog, GTKWave, Yosys, SKY130 PDK, Verilator, cocotb, Tiny Tapeout flow (LibreLane with OpenROAD, Magic, KLayout and Netgen), Git and GitHub Actions.

---

## Repository Structure

```text
RTL_design_workshop
├── Day_1          Good MUX
├── Day_2          Sequential logic and hierarchical design
├── Day_3          RTL optimization
├── Day_4          RTL coding practices
├── Day_5          Incomplete conditionals and case statements
└── Assesment-1    Pedestrian crossing controller (RTL to GDS)
    ├── README.md and result images
    └── project/   RTL, verification, synthesis, GLS, physical design, docs
```

---

## Author

Aitha Rupesh – Roll number 24EG104E34, ECE, Anurag University
