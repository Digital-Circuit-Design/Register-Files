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
  Register Files
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

The project focuses on modeling, simulating, and verifying **sequential logic circuits** using **VHDL**.  
Each circuit is implemented using a clear architectural style and is accompanied by a **testbench** to validate its behavior under different timing and control conditions.

---

## Table of Contents


| Section | Folder / File | Description |
|------:|---------------|-------------|
| 1 | `assign/` | Laboratory assignment material |
| 1.1 | `assign/Lab4b_UniWA-BSc-DSD_VHDL#2b.pdf` | Laboratory exercise description (English) |
| 1.2 | `assign/Εργαστήριο4β_ΠΑΔΑ-ΣΨΣ_VHDL#2β.pdf` | Laboratory exercise description (Greek) |
| 2 | `docs/` | Theoretical documentation on register files |
| 2.1 | `docs/Register-Files.pdf` | Register files theory and architecture (English) |
| 2.2 | `docs/Αρχεία-Καταχώρησης.pdf` | Register files theory and architecture (Greek) |
| 3 | `src/` | VHDL source code implementations |
| 3.1 | `src/reg8.vhd` | 8-bit register implementation |
| 3.2 | `src/regfile.vhd` | Register file implementation |
| 3.3 | `src/regfileUpd.vhd` | Updated register file implementation |
| 4 | `waves/` | Simulation waveform outputs |
| 4.1 | `waves/wave1.png` | Simulation waveform snapshot |
| 4.2 | `waves/wave2.png` | Simulation waveform snapshot |
| 4.3 | `waves/wave3.png` | Simulation waveform snapshot |
| 4.4 | `waves/wave4.png` | Simulation waveform snapshot |
| 4.5 | `waves/wave5.png` | Simulation waveform snapshot |
| 4.6 | `waves/wave6.png` | Simulation waveform snapshot |
| 4.7 | `waves/waveF*.bmp` | Register file simulation waveforms |
| 4.8 | `waves/waveU*.bmp` | Updated register file simulation waveforms |
| 5 | `README.md` | Repository overview and usage instructions |

---

## Technical Specifications

### 1. Simple 4-Bit Register

A **4-bit register** designed using **D-type flip-flops** with the following characteristics:

**Inputs**
- **D:** 4-bit data input  
- **Resetn:** Asynchronous active-low reset  
- **Clock:** System clock  

**Outputs**
- **Q:** 4-bit data output  

**Behavior**
- On the **rising edge of the clock**, the input **D** is transferred to the output **Q**, provided `Resetn = '1'`.
- If `Resetn = '0'`, the output is **immediately cleared** to `"0000"`.

---

### 2. Register File (4×4)

A more advanced **register file** consisting of **four 4-bit registers**.

**Generics**
- **dw:** Data width (4 bits)  
- **size:** Number of registers (4)  
- **addrw:** Address width (2 bits)  

**Interface**
- **A:** Input data  
- **Addr:** 2-bit address selecting the target register  
- **we:** Write enable signal  
- **clk:** System clock  
- **C:** Output data from the selected register  

---

## Simulation Results

The project includes **timing diagrams** verifying correct functionality for the following operations:

| Operation        | Address | Data | Status   |
|------------------|---------|------|----------|
| Write Register   | 00      | 0101 | Verified |
| Write Register   | 10      | 1101 | Verified |
| Write Register   | 01      | 0010 | Verified |

---

## Implementation Details

- **Language:** VHDL  
- **Libraries Used:**
  - `ieee.std_logic_1164`
  - `ieee.numeric_std`
- The **register file** utilizes an **array type (`regArray`)** to model internal storage elements, enabling scalable and clean design.

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
git clone https://github.com/Digital-Circuit-Design/Register-Files.git
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
### 1. View Waveforms
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
    - English: `Register-Files.pdf`
    - Greek: `Αρχεία-Καταχώρησης.pdf`