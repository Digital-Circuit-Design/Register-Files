<p align="center">
  <img src="https://www.especial.gr/wp-content/uploads/2019/03/panepisthmio-dut-attikhs.png" alt="UNIWA" width="150"/>
</p>

<p align="center">
  <strong>UNIVERSITY OF WEST ATTICA</strong><br>
  SCHOOL OF ENGINEERING<br>
  DEPARTMENT OF COMPUTER ENGINEERING AND INFORMATICS
</p>

---

<p align="center">
  <strong>Digital Circuit Design</strong>
</p>

<h1 align="center">
  Introduction to the simulation environment
</h1>

<p align="center">
  <strong>Vasileios Evangelos Athanasiou</strong><br>
  Student ID: 19390005
</p>

<p align="center">
  <a href="https://github.com/Ath21" target="_blank">GitHub</a> ·
  <a href="https://www.linkedin.com/in/vasilis-athanasiou-7036b53a4/" target="_blank">LinkedIn</a>
</p>

<p align="center">
  Supervisor: Athanasios Milidonis, Postdoctoral Researcher<br>
</p>

<p align="center">
  <a href="https://scholar.google.com/citations?user=akjyDIYAAAAJ&hl=en" target="_blank">UNIWA Profile</a> ·
  <a href="https://gr.linkedin.com/in/athanasios-milidonis-a5a560167" target="_blank">LinkedIn</a>
</p>

<p align="center">
  Athens, May 2023
</p>

---

# Project Overview

The project focuses on implementing fundamental **digital logic components** using **VHDL** and verifying their functionality through simulation in the **ModelSim Altera Starter Edition** environment.  
Each circuit includes:
- A **Dataflow Architecture** implementation
- A dedicated **testbench** for functional verification

---

## Table of Contents


| Section | Folder / File | Description |
|------:|---------------|-------------|
| 1 | `assign/` | Laboratory assignment material |
| 1.1 | `assign/Lab3_UniWA-BSc-DSD_VHDL#1.pdf` | Laboratory exercise description (English) |
| 1.2 | `assign/Εργαστήριο3_ΠΑΔΑ_Βασική-ΣΨΣ_VHDL.pdf` | Laboratory exercise description (Greek) |
| 2 | `docs/` | Simulation environment documentation |
| 2.1 | `docs/Introduction-to-the-simulation-environment.txt` | Introduction to the VHDL simulation environment (English) |
| 2.2 | `docs/Εισαγωγή-στο-περιβάλλον-προσομοίωσης.txt` | Introduction to the VHDL simulation environment (Greek) |
| 3 | `src/` | VHDL source code and testbenches |
| 3.1 | `src/ha.vhd` | Half Adder (VHDL implementation) |
| 3.2 | `src/ha_tb.vhd` | Half Adder testbench |
| 3.3 | `src/fa.vhd` | Full Adder (VHDL implementation) |
| 3.4 | `src/fa_tb.vhd` | Full Adder testbench |
| 3.5 | `src/adder4.vhd` | 4-bit Adder |
| 3.6 | `src/adder4_tb.vhd` | 4-bit Adder testbench |
| 3.7 | `src/dec2to4.vhd` | 2-to-4 Decoder |
| 3.8 | `src/dec2to4_tb.vhd` | 2-to-4 Decoder testbench |
| 3.9 | `src/dec_4to16.vhd` | 4-to-16 Decoder |
| 3.10 | `src/dec_4to16_tb.vhd` | 4-to-16 Decoder testbench |
| 3.11 | `src/mux1.vhd` | 2-to-1 Multiplexer |
| 3.12 | `src/mux_tb.vhd` | 2-to-1 Multiplexer testbench |
| 3.13 | `src/mux_4to1.vhd` | 4-to-1 Multiplexer |
| 3.14 | `src/mux_4to1_tb.vhd` | 4-to-1 Multiplexer testbench |
| 3.15 | `src/mux_double_2to1.vhd` | Double 2-to-1 Multiplexer |
| 3.16 | `src/mux_double_2to1_tb.vhd` | Double 2-to-1 Multiplexer testbench |
| 4 | `README.md` | Repository overview and usage instructions |

---


## Circuits Included

### Multiplexers
- **2-in-1 Multiplexer:** Basic bit-level selection between two inputs.  
- **Triple 2-in-1 Multiplexer:** Handles two 3-bit inputs controlled by a single select signal.  
- **4-in-1 Multiplexer:** Selects one of four inputs using a 2-bit control signal.

### Decoders
- **2-in-4 Decoder:** Standard 2-to-4 line decoding logic.  
- **2-in-4 Decoder with Enable:** Includes an enable (`en`) signal; when disabled, all outputs remain `0`.  
- **4-in-16 Decoder:** Extended decoder for larger-scale decoding operations.

### Arithmetic Circuits
- **Half Adder (Semi-Assimilator):** Performs basic addition of two single-bit inputs, producing Sum and Carry outputs.  
- **Full Adder:** Adds two bits and a Carry-in (`Cin`) to produce Sum and Carry-out outputs.  
- **4-Bit Adder:** A vector-based arithmetic unit that computes the sum of two 4-bit inputs, including overflow detection via Carry-out.

## Simulation & Verification

All designs are verified using **ModelSim Altera Starter Edition**, ensuring correctness through waveform analysis and systematic testbench execution.

---

# Installation & Setup Guide

This repository contains **VHDL implementations of fundamental digital logic circuits** along with **testbenches** for functional verification using **ModelSim Altera Starter Edition**.  
The project is intended for **digital circuit design education** and laboratory exercises.

---

## Prerequisites

### 1. Operating System
Supported platforms:
- **Windows** (recommended – best ModelSim support)
- Linux
- macOS (may require legacy or alternative simulators)

---

### 2. VHDL Simulation Software

#### ModelSim Altera Starter Edition (Recommended)
This project was developed and verified using:

- **ModelSim Altera Starter Edition**
- Provided by **Intel FPGA (formerly Altera)**

Capabilities used:
- VHDL-2008 compatible simulation
- Waveform visualization
- Testbench execution

> Note: Newer systems may use **ModelSim Intel FPGA Edition** or **Questa Intel FPGA Starter** as replacements.

---

### 3. Text Editor / IDE (Optional but Recommended)

For editing and reviewing VHDL files:
- Visual Studio Code + VHDL extension
- Notepad++
- Vim / Emacs
- ModelSim built-in editor

---

### 4. Knowledge Prerequisites

To understand and modify the project, basic knowledge of:
- Digital logic design
- VHDL syntax and semantics
- Dataflow architecture
- Testbench-driven verification
- Combinational circuits (adders, multiplexers, decoders)

is recommended.

---

## Installation / Setup

### 1. Clone the Repository

Using Git:
```bash
git clone https://github.com/Digital-Circuit-Design/VHDL.git
```

#### Alternative (Without Git)

- Open the repository URL in your browser
- Click Code → Download ZIP
- Extract the ZIP file to a local directory

### 2. Install ModelSim
1. Download ModelSim Altera Starter Edition (or Intel FPGA equivalent)
2. Complete installation following vendor instructions
3. Verify installation by launching ModelSim successfully

---

## Project Setup in ModelSim
### 1. Create a New Project
1. Open ModelSim
2. Select File → New → Project
3. Set:
    - Project Name (e.g. `VHDL_Lab`)
    - Project Location (your cloned repository path)
4. Choose Create Project

### 2. Add VHDL Source Files
1. In the Add Items to Project window:
    - Select Add Existing File
2. Navigate to the `src/` directory
3. Add:
    - All `*.vhd` files (designs and testbenches)
4. Finish project creation

### 3. Compile the Project
1. In the Project tab:
    - Select Compile → Compile All
2. Ensure:
    - No syntax errors
    - Successful compilation messages in the transcript

---

## Simulation & Verification
### 1. Run a Testbench
Each circuit has a corresponding testbench (`*_tb.vhd`).
Example (Half Adder):
1. Select `ha_tb` as the top-level entity
2. Click Simulate → Start Simulation
3. Choose `work.ha_tb`
4. Click OK

### 2. View Waveforms
1. In the simulation window:
    - Add signals to the waveform
2. Run simulation:
```bash
run -all
```
3. Verify:
    - Correct logical behavior
    - Expected outputs for each test case

---

## Open the Documentation
1. Navigate to the `docs/` directory
2. Open the report corresponding to your preferred language:
    - English: `Introduction-to-the-simulation-environment.txt`
    - Greek: `Εισαγωγή-στο-περιβάλλον-προσομοίωσης.txt`